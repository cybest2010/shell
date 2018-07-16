#!/bin/bash

# using the tee command for logging
#将输入一边发送到STDOUT，一边发送到日志文件
tempfile=test
#生成test文件，并将结果标准输出的同时写入test文件
echo "This is the start of the test" | tee $tempfile
echo "This is the second line of the test" | tee -a $tempfile
echo "This is the end line of the test" | tee -a $tempfile


