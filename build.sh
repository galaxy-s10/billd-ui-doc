#!/usr/bin/env bash
###
# Author: shuisheng
# Date: 2022-04-26 01:54:48
# Description: https://github.com/galaxy-s10/sh/blob/master/build.sh
# Email: 2274751790@qq.com
# FilePath: /jenkins/billd-ui-doc/build.sh
# Github: https://github.com/galaxy-s10
# LastEditTime: 2022-09-19 23:00:14
# LastEditors: shuisheng
###

# 该build.sh文件会在Jenkins构建完成后被执行
# 注意:JOBNAME=$1,这个等号左右不能有空格！
JOBNAME=$1      #约定$1为任务名
ENV=$2          #约定$2为环境
WORKSPACE=$3    #约定$3为Jenkins工作区
PORT=$4         #约定$4为端口号
TAG=$5          #约定$5为git标签
PUBLICDIR=/node #约定公共目录为/node

echo 删除node_modules:
rm -rf node_modules

echo 删除dist:
rm -rf dist

echo 查看npm版本:
npm -v

echo 设置npm淘宝镜像:
npm config set registry http://registry.npm.taobao.org/

echo 查看当前npm镜像:
npm get registry

echo 开始安装依赖:
yarn install

if [ $ENV = 'beta' ]; then
    echo 开始构建测试环境:
elif [ $ENV = 'preview' ]; then
    echo 开始构建预发布环境:
elif [ $ENV = 'prod' ]; then
    echo 开始构建正式环境:
else
    echo 开始构建$ENV环境:
fi

npm run build
# npx cross-env REACT_APP_RELEASE_PUBLICPATH=$JOBNAME REACT_APP_RELEASE_ENV=$ENV webpack --config ./config/webpack.common.js --env production

echo 将docs/.vuepress/dist移动到项目根目录：
mv docs/.vuepress/dist dist
