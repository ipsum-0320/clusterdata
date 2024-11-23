#!/bin/bash

# 定义源目录和目标目录
SOURCE_DIR="./data/MSMetrics"
DEST_DIR="./csv"

# 确保目标目录存在
mkdir -p "$DEST_DIR"

# 遍历源目录下的所有 .tar.gz 文件
for tar_file in "$SOURCE_DIR"/*.tar.gz; do
    # 解压文件到目标目录
    tar -xzf "$tar_file" -C "$DEST_DIR"
done
