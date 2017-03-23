# alpine-ghost
Ghost latest version based on alpine
## 使用方法
  这个镜像默认使用初始配置，即使用sqlite作为数据库，直接运行即可使用。

  如果需要自定义配置文件，可以映射本机上的自定义配置文件到容器内/var/www/config.js: `-v /host/path/to/config.js:/var/www/config.js`

  如果需要使用七牛云存储插件，则需要用本地代码映射到容器中/var/www/core/server/storage目录，已替代ghost本身的关于存储的代码。示例：`-v /host/path/to/ghost/storage:/var/www/core/server/storage`

  本地代码来源于[Ghost 开源博客使用七牛、又拍云、阿里云OSS云储存](http://qianxunclub.com/ghost-kai-yuan-bo-ke-shi-yong-yun-chu-cun/)中的[云储存插件代码](http://oh6t6o35a.bkt.clouddn.com/storage.rar),我重新打包为tar格式,放在github上：[云储存插件代码tar包](https://github.com/auguschen/alpine-ghost/raw/master/storage.tar.gz)
