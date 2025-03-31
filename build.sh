#!/bin/bash

# 创建配置文件
cat > config.js <<EOF
// 自动生成的配置文件 - 不要直接修改
export const GITHUB_CONFIG = {
  USERNAME: "$GITHUB_USERNAME",
  REPO: "$GITHUB_REPO",
  TOKEN: "$GITHUB_TOKEN",
  FILE_PATH: "counters.json"
};
EOF

# 合并文件生成生产版本
cat config.js github-counter.js > github-counter.prod.js

# 删除临时配置文件
rm -f config.js

echo "构建完成！生成 github-counter.prod.js"