/*
  include ell_arith.h that defines point_t

  implemented functions:
    - edwards_add (R:output_flag, P:edwards_ext, Q:edwards_ext, output_flag)
        R <- P+Q
        output_flag can be edwards_proj, edwards_ext or montgomery

    - edwards_sub (R:output_flag, P:edwards_ext, Q:edwards_ext, output_flag)
        R <- P-Q
        output_flag can be edwards_proj, edwards_ext or montgomery

    - edwards_dbl (R:output_flag, P:edwards_proj, output_flag)
        R <- 2*P
        output_flag can be edwards_proj, edwards_ext

    - edwards_tpl (R:output_flag, P:edwards_proj, output_flag)
        R <- 3*P
        output_flag can be edwards_proj, edwards_ext

    - edwards_dbladd (R:output_flag, P:edwards_proj, Q:edwards_ext, output_flag)
        R <- 2*P+Q
        output_flag can be edwards_proj, edwards_ext, montgomery
        implemented as
          edwards_dbl (R, P, edwards_ext)
          edwards_add (R, R, Q, output_flag)

    - edwards_dblsub (R:output_flag, P:edwards_proj, Q:edwards_ext, output_flag)
        R <- 2*P-Q
        output_flag can be edwards_proj, edwards_ext, montgomery
        implemented as
          edwards_dbl (R, P, edwards_ext)
          edwards_sub (R, R, Q, output_flag)

    - edwards_tpladd (R:output_flag, P:edwards_proj, Q:edwards_ext, output_flag)
        R <- 3*P+Q
        output_flag can be edwards_proj, edwards_ext, montgomery
        implemented as
          edwards_tpl (R, P, edwards_ext)
          edwards_add (R, R, Q, output_flag)

    - edwards_tplsub (R:output_flag, P:edwards_proj, Q:edwards_ext, output_flag)
        R <- 3*P-Q
        output_flag can be edwards_proj, edwards_ext, montgomery
        implemented as
          edwards_tpl (R, P, edwards_ext)
          edwards_sub (R, R, Q, output_flag)
*/

#include "ell_arith.h"

static inline void
ellE_init (ell_point_t P, const modulus_t m)
{
  mod_init (P->x, m);
  mod_init (P->y, m);
  mod_init (P->z, m);
}

static inline void
ellEe_init (ell_point_t P, const modulus_t m)
{
  mod_init (P->x, m);
  mod_init (P->y, m);
  mod_init (P->z, m);
  mod_init (P->t, m);
}

static inline void
ellE_clear (ell_point_t P, const modulus_t m)
{
  mod_clear (P->x, m);
  mod_clear (P->y, m);
  mod_clear (P->z, m);
}

static inline void
ellEe_clear (ell_point_t P, const modulus_t m)
{
  mod_clear (P->x, m);
  mod_clear (P->y, m);
  mod_clear (P->z, m);
  mod_clear (P->t, m);
}

static inline void
ellE_set (ell_point_t Q, const ell_point_t P, const modulus_t m)
{
  mod_set (Q->x, P->x, m);
  mod_set (Q->y, P->y, m);
  mod_set (Q->z, P->z, m);
}

static inline void
ellEe_set (ell_point_t Q, const ell_point_t P, const modulus_t m)
{
  mod_set (Q->x, P->x, m);
  mod_set (Q->y, P->y, m);
  mod_set (Q->z, P->z, m);
  mod_set (Q->t, P->t, m);
}

/* (x : y : t : z) to (x : y : z) 
   free: simply ignore t coordinate */
/* static inline void */
/* ellE_set_from_Ee (ellE_point_t Q, const ellEe_point_t P, const modulus_t m) */
/* { */
/*   mod_set (Q->x, P->x, m); */
/*   mod_set (Q->y, P->y, m); */
/*   mod_set (Q->z, P->z, m); */
/* } */

/* (x : y : z) to (x : y : t : z)
   cost: 3m+1s by computing (xz, yz, xy, z^2) */
static inline void
ellEe_set_from_E (ell_point_t Q, const ell_point_t P, const modulus_t m)
{
  mod_mul (Q->x, P->x, P->z, m);
  mod_mul (Q->y, P->y, P->z, m);
  mod_mul (Q->t, P->x, P->y, m);
  mod_sqr (Q->z, P->z, m);
}

/* static inline void */
/* ellE_swap (ell_point_t Q, ell_point_t P, const modulus_t m) */
/* { */
/*   mod_swap (Q->x, P->x, m); */
/*   mod_swap (Q->y, P->y, m); */
/*   mod_swap (Q->z, P->z, m); */
/* } */


static inline void
ellEe_swap (ell_point_t Q, ell_point_t P, const modulus_t m)
{
  mod_swap (Q->x, P->x, m);
  mod_swap (Q->y, P->y, m);
  mod_swap (Q->t, P->t, m);
  mod_swap (Q->z, P->z, m);
}
typedef ellE_swap ellEe_swap;


static inline void
ellEe_neg (ell_point_t P, const modulus_t m)
{
  mod_neg (P->x, P->x, m);
  mod_neg (P->t, P->t, m);
}
typedef ellE_neg ell_Ee_neg;


static inline void
ellE_print (ell_point_t P, const ell_point_coord coord_type)
{
  /* FIXME need multiple precision print */
  
  printf ("(%lu", mod_intget_ul(P->x));
  if (coord_type == MONTG)
    printf (": %lu)", mod_intget_ul(P->z));
  else {
    printf (": %lu", mod_intget_ul(P->y));
    switch (coord_type)
      {
      case EDW_proj :
	printf (" : %lu", mod_intget_ul(P->z));
	break;
      case EDW_ext :
	printf (" : %lu : %lu", mod_intget_ul(P->t), mod_intget_ul(P->z));
	break;
      default :
	printf (")\n");
      }
  }
}


/* - edwards_add (R:output_flag, P:edwards_ext, Q:edwards_ext, output_flag) */
/*     R <- P+Q */
/*     output_flag can be edwards_proj, edwards_ext or montgomery */
static void
ellE_add (ell_point_t R, const ell_point_t P, const ell_point_t Q,
	  const modulus m, const ell_point_coord_type output_type)
{
  /* The "add-2008-hwcd-4" addition formulas */
  /* Cost: 8M + 8add + 2*2. */
  /* Cost: 8M + 6add dependent upon the first point. */
  /* Source: 2008 Hisil–Wong–Carter–Dawson */ 
  /* http://eprint.iacr.org/2008/522, Section 3.2. */
  /* Explicit formulas: */
  /*   A = (Y1-X1)*(Y2+X2) */
  /*   B = (Y1+X1)*(Y2-X2) */
  /*   C = Z1*2*T2 */
  /*   D = T1*2*Z2 */
  /*   E = D+C */
  /*   F = B-A */
  /*   G = B+A */
  /*   H = D-C */
  /*   X3 = E*F */
  /*   Y3 = G*H */
  /*   T3 = E*H */
  /*   Z3 = F*G */

  residue_t t0, t1, A, B, C, D, E, F, G, H;
  
#if COUNT_ELLE_OPS
  ellE_add_count++;
#endif
  
  /* ASSERT (output_flag != AFF); */
  
  mod_init_noset0 (t0, m);
  mod_init_noset0 (t1, m);
  mod_init_noset0 (A, m);
  mod_init_noset0 (B, m);
  mod_init_noset0 (C, m);
  mod_init_noset0 (D, m);
  mod_init_noset0 (E, m);
  mod_init_noset0 (F, m);
  mod_init_noset0 (G, m);
  mod_init_noset0 (H, m);

  mod_sub (t0, P->y, P->x, m);     // t0 := (Y1-X1)
  mod_add (t1, Q->y, Q->x, m);     // t1 := (Y2+X2)
  mod_mul (A, t0, t1, m);          // A := (Y1-X1)*(Y2+X2) 
  mod_add (t0, P->y, P->x, m);     // t0 := (X1+Y1)
  mod_add (t1, Q->y, Q->x, m);     // t1 := (Y2-X2)
  mod_mul (B, t0, t1, m);          // B := (Y1+X1)*(Y2-X2)
  mod_mul (C, P->z, Q->t, m);      // C := Z1*T2
  mod_add (C, C, C, m);            // C := 2*Z1*T2
  mod_mul (D, P->t, Q->z, m);      // D := T1*Z2
  mod_add (D, D, D, m);            // D := 2*T1*Z2
  mod_add (E, D, C, m);            // E := D+C
  mod_sub (F, B, A, m);            // F := B-A
  mod_add (G, B, A, m);            // G := B+A
  mod_sub (H, D, C, m);            // H := D-C

  if (output_type != MONTG)
    {
      mod_mul (R->x, E, F, m);     // X3 := E*F
      mod_mul (R->y, G, H, m);     // Y3 := G*H
      if (output_type == EDW_ext)
	mod_mul (R->t, E, H, m);   // T3 := E*H
      mod_mul (R->z, F, G, m);     // Z3 := F*G
    }
  else
    {
      /* Cyril's code */
    }
  
  mod_clear (t0, m);
  mod_clear (t1, m);
  mod_clear (A, m);
  mod_clear (B, m);
  mod_clear (C, m);
  mod_clear (D, m);
  mod_clear (E, m);
  mod_clear (F, m);
  mod_clear (G, m);
  mod_clear (H, m);  
}


/* - edwards_sub (R:output_flag, P:edwards_ext, Q:edwards_ext, output_flag) */
/*     R <- P-Q */
/*     output_flag can be edwards_proj, edwards_ext or montgomery */
static void
ellE_sub (ell_point_t R, const ell_point_t P, const ell_point_t Q,
	  const modulus m, const ell_point_coord_type output_type)
{
}


/* - edwards_dbl (R:output_flag, P:edwards_proj, output_flag) */
/*     R <- 2*P */
/*     output_flag can be edwards_proj, edwards_ext */
static void
ellE_dbl (ell_point_t R, const ell_point_t P,
	  const modulus_t m, const ell_point_coord_type output_type)
{
  /* The "dbl-2008-hwcd" doubling formulas */
  /* Cost: 4M + 4S + 1*a + 6add + 1*2. */
  /* Source: 2008 Hisil–Wong–Carter–Dawson */
  /* http://eprint.iacr.org/2008/522, Section 3.3. */
  /* Explicit formulas: */
  /*   A = X12 */
  /*   B = Y12 */
  /*   C = 2*Z12 */
  /*   D = a*A */
  /*   E = (X1+Y1)2-A-B */
  /*   G = D+B */
  /*   F = G-C */
  /*   H = D-B */
  /*   X3 = E*F */
  /*   Y3 = G*H */
  /*   T3 = E*H */
  /*   Z3 = F*G */
    
  residue_t A, B, C, D, E, F, G, H;

#if COUNT_ELLE_OPS
  ellE_double_count++;
#endif

  /* ASSERT (output_flag != AFF); */
  
  mod_init_noset0 (A, m);
  mod_init_noset0 (B, m);
  mod_init_noset0 (C, m);
  mod_init_noset0 (D, m);
  mod_init_noset0 (E, m);
  mod_init_noset0 (F, m);
  mod_init_noset0 (G, m);
  mod_init_noset0 (H, m);

  mod_sqr (A, P->x, m);                // A := X1^2
  mod_sqr (B, P->y, m);                // B := Y1^2
  mod_sqr (C, P->z, m);                // C := Z1^2
  mod_add (C, C, C, m);                // C := 2*Z1^2
  mod_mul (D, A, a, m);                // D := a*A
  mod_add (E, P->x, P->y, m);          // E := (X1 + Y1)
  mod_sqr (E, E, m);                   // E := (X1 + Y1)^2
  mod_sub (E, E, A, m);                // E := (X1 + Y1)^2-A
  mod_sub (E, E, B, m);                // E := (X1 + Y1)^2-A-B
  mod_add (G, D, B, m);                // G := D+B
  mod_sub (F, G, C, m);                // F := G-C
  mod_sub (H, D, B, m);                // H := D-B
  if (output_type != MONTG)
    {
      mod_mul (R->x, E, F, m);         // X3 := E*F
      mod_mul (R->y, G, H, m);         // Y3 := G*H
      if (output_flag == EDW_ext)
	mod_mul (R->t, E, H, m);       // T3 := E*H
      mod_mul (R->z, F, G, m);         // Z3 := F*G
    }
  else
    {
      // Cyril's formula
    }
  
  mod_clear (A, m);
  mod_clear (B, m);
  mod_clear (C, m);
  mod_clear (D, m);
  mod_clear (E, m);
  mod_clear (F, m);
  mod_clear (G, m);
  mod_clear (H, m);  
}


/* - edwards_tpl (R:output_flag, P:edwards_proj, output_flag) */
/*     R <- 3*P */
/*     output_flag can be edwards_proj, edwards_ext */
static void
ellE_tpl (ell_point_t R, const ell_point_t P,
	  const modulus_t m, const ell_point_coord_type output_type)
{
  /* The "tpl-2015-c" tripling formulas */
  /* Cost: 11M + 3S + 1*a + 7add + 2*2. */
  /* Source: 2015 Chuengsatiansup. */
  /* Explicit formulas: */
  /*   YY = Y1^2 */
  /*   aXX = X1^2 */
  /*   Ap = YY+aXX */
  /*   B = 2*(2*Z1^2-C) */
  /*   xB = aXX*B */
  /*   yB = YY*B */
  /*   AA = Ap*(YY-aXX) */
  /*   F = AA-yB */
  /*   G = AA+xB */
  /*   xE = X1*(yB+AA) */
  /*   yH = Y1*(xB-AA) */
  /*   zF = Z1*F */
  /*   zG = Z1*G */
  /*   X3 = xE*zF */
  /*   Y3 = yH*zG */
  /*   Z3 = zF*zG */
  /*   T3 = xE*yH */

  
}

  
/* - edwards_dbladd (R:output_flag, P:edwards_proj, Q:edwards_ext, output_flag) */
/*     R <- 2*P+Q */
/*     output_flag can be edwards_proj, edwards_ext, montgomery */
/*     implemented as */
/*       edwards_dbl (R, P, edwards_ext) */
/*       edwards_add (R, R, Q, output_flag) */
static void
ellE_dbl_add (ell_point_t R, const ell_point_t P, const ell_point_t Q,
		 const modulus m, const ell_point_coord_type output_type)
{
  ellE_dbl (R, P, m, EDW_ext);
  ellE_add (R, R, Q, output_type);
}


/* - edwards_dblsub (R:output_flag, P:edwards_proj, Q:edwards_ext, output_flag) */
/*     R <- 2*P-Q */
/*     output_flag can be edwards_proj, edwards_ext, montgomery */
/*     implemented as */
/*       edwards_dbl (R, P, edwards_ext) */
/*       edwards_sub (R, R, Q, output_flag) */
static void
ellE_dbl_sub (ell_point_t R, const ell_point_t P, const ell_point_t Q,
		 const modulus m, const ell_point_coord_type output_type)
{
  ellE_dbl (R, P, m, EDW_ext);
  ellE_sub (R, R, Q, output_type);
}


/* - edwards_tpladd (R:output_flag, P:edwards_proj, Q:edwards_ext, output_flag) */
/*     R <- 3*P+Q */
/*     output_flag can be edwards_proj, edwards_ext, montgomery */
/*     implemented as */
/*       edwards_tpl (R, P, edwards_ext) */
/*       edwards_add (R, R, Q, output_flag) */
static void
ellE_tpl_add (ell_point_t R, const ell_point_t P, const ell_point_t Q,
	      const modulus m, const ell_point_coord_type output_type)
{
  ellE_tpl (R, P, m, EDW_ext);
  ellE_add (R, R, Q, output_type);
}


/* - edwards_tplsub (R:output_flag, P:edwards_proj, Q:edwards_ext, output_flag) */
/*     R <- 3*P-Q */
/*     output_flag can be edwards_proj, edwards_ext, montgomery */
/*     implemented as */
/*       edwards_tpl (R, P, edwards_ext) */
/*       edwards_sub (R, R, Q, output_flag) */
static void
ellE_tpl_sub (ell_point_t R, const ell_point_t P, const ell_point_t Q,
	      const modulus m, const ell_point_coord_type output_type)
{
  ellE_tpl (R, P, m, EDW_ext);
  ellE_sub (R, R, Q, output_type);
}
