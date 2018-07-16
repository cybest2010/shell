#!/bin/bash
# testing STDERR messages
# redirecting all to a file

# 脚本执行期间，用exec命令告诉shell重定向某个特定文件描述符

exec 2>test#0 表示stdin,1表示stdout,2表示stderr

ls badtest
echo "This is test of redirecting all output"
echo "from a script to another file"

exec 1>test1
echo "This is the end of the script"
echo "but this should go to the testerror file" >&2
