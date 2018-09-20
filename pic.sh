#!/bin/bash
serverchan_sckey=`SCU27196Tc53e77380bfced31538be87d17b39efb5b0d246bc4b37`


url=$(curl -s "http://gank.io/api/random/data/%E7%A6%8F%E5%88%A9/1" | grep url | awk '{print $2}')
#随机数据：http://gank.io/api/random/data/分类/个数
#数据类型：福利 | Android | iOS | 休息视频 | 拓展资源 | 前端
#个数： 数字，大于0



url=$(echo ${url#\"}) && url=$(echo ${url%\",})


title="Server醬"
content="随机妹子图


![pic]($url)"


curl -s "http://sc.ftqq.com/$serverchan_sckey.send?text=$title" -d "&desp=$content" 
logger -t "【福利推送】" "凛酱推送了一张妹子图"
