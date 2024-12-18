#ifndef CADO_MPI_CONFIG_H_IN
#define CADO_MPI_CONFIG_H_IN

#include "cado_config.h"

/* This file is just a placeholder so as to force rebuilding of the parts
 * of cado that use MPI when the selected MPI library changes. If we have
 * an MPI build, then HAVE_MPI is substituted with the directory where
 * the __mpiexec__ command has been found. */

/* #undef HAVE_MPI */
#define    MPI_C_COMPILER "/usr/bin/cc"
#define    MPI_CXX_COMPILER "/usr/bin/c++"
/* #undef MPIEXEC */


#endif	/* CADO_MPI_CONFIG_H_IN */
