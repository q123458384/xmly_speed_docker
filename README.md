## 特别声明: 
* 本仓库中的xmly-speed-docker项目仅仅是将Zero-S1/xmly_speed项目容器化而成
  
### docker-compose 安装方法：
1、新建个文件夹 例如：`/xmly`
2、在`xmly`文件夹下新建docker-compose.yml,输入以下内容保存（XMLY_SPEED_COOKIE 为必填项，通知类根据需求填写）
```
version: "3"
services:
  xmly1:
    image: q123458384/xmly_speed:latest
    ## driver: "json-file"
    restart: always
    container_name: xmly1
    environment:
      ## 填入cookie信息 ，多账号换行
      - XMLY_SPEED_COOKIE=
      ## 通知服务
      - BARK=
      - SCKEY=
      - TG_BOT_TOKEN=
      - TG_USER_ID=
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
```docker run -d --name=xmly -e XMLY_SPEED_COOKIE=xxxxxx -e SCKEY= --restart=always q123458384/xmly_speed:latest```



# xmly_speed
喜马拉雅极速版
[参考](https://github.com/Zero-S1/xmly_speed/blob/master/xmly_speed.md)      
暂时存档
