import subprocess

def test_cado_nfs_script():
    # 要执行的脚本文件和参数
    script = "./cado-nfs-notlog.py"
    params = [
        "90377629292003121684002147101760858109247336549001090677693", 
    ]
    
    # 使用 subprocess 执行 Python 脚本（作为二进制执行）
    result = subprocess.run(
        [script] + params,  # 脚本路径加参数
        capture_output=True,  # 捕获标准输出和标准错误
        text=True,            # 返回字符串而非字节
        check=True            # 如果脚本返回非零退出码，会抛出异常
    )
    
    return result.stdout

# 执行测试
if __name__ == "__main__":
    print(test_cado_nfs_script())
