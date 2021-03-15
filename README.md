## 特别声明: 
* 本仓库中的xmly-speed-docker项目仅仅是将Zero-S1/xmly_speed项目容器化而成
* 因为原作者镜像时运行完成自动关闭镜像，需要设置计划任务，每隔半个小时启动一次镜像
  
### docker-compose 安装方法：
1、新建个文件夹 例如：`/xmly`
2、在`xmly`文件夹下新建docker-compose.yml,输入以下内容保存（XMLY_SPEED_COOKIE 为必填项，通知类根据需求填写）
3、在`xmly`文件夹下`xmly_speed.py`和`util.py` 填写cookie信息，把通知提现信息填写在`util.py`
```
version: "3"
services:
  xmly1:
    image: q123458384/xmly_speed:latest
    ## driver: "json-file"
    container_name: xmly1
    restart: no
    volumes:
      - /安装目录/xmly_speed.py:/xmly_speed.py \
      - /安装目录/util.py:/util.py \
```

3、在xmly文件夹下运行：docker-compose up -d
### 其他
- 查看log
```sh
docker-compose logs
```
- 停止
```sh
docker-compose down
```
## docker 安装方法：
```docker run -itd --name=xmly -v /安装目录/xmly_speed.py:/xmly_speed.py -v /安装目录/util.py:/util.py --restart=no q123458384/xmly_speed:latest```



## 新建计划任务半个小时启动一次镜像
```* 30/* 6-23 * * docker start xmly```

# xmly_speed
喜马拉雅极速版
[参考](https://github.com/Zero-S1/xmly_speed/blob/master/xmly_speed.md)      
暂时存档
