#!/bin/bash

# 设置备份目录
backup_dir="$HOME/nvim_backup"

# 确保备份目录存在
mkdir -p "$backup_dir"

# 备份nvim文件夹下的所有文件到备份目录
cp -r "$HOME/.config/nvim/"* "$backup_dir"

echo "备份已完成，文件已保存至 $backup_dir"
# 设置下载的nvim_config文件的路径
downloaded_config="nvim_config"

# 设置nvim的目标目录
nvim_dir="$HOME/.config/nvim"

# 将下载的配置文件移动到nvim目录下
mv "$downloaded_config" "$nvim_dir"

# 将下载的配置文件重命名为nvim
mv "$nvim_dir/$downloaded_config" "$nvim_dir/nvim"

echo "nvim配置已设置完成"
