# alpine-ghost
Ghost latest version based on alpine
## 使用方法
  这个镜像默认使用初始配置，即使用sqlite作为数据库，直接运行即可使用。

  如果需要自定义配置文件，可以映射本机上的自定义配置文件到容器内/var/www/config.js: `-v /host/path/to/config.js:/var/www/config.js`

  最新使用qn-store插件实现七牛云存储，具体配置看config.example.js
  
  ~~本地代码来源于[Ghost 开源博客使用七牛、又拍云、阿里云OSS云储存](http://qianxunclub.com/ghost-kai-yuan-bo-ke-shi-yong-yun-chu-cun/)中的[云储存插件代码](http://oh6t6o35a.bkt.clouddn.com/storage.rar),我重新打包为tar格式,放在github上：[云储存插件代码tar包](https://github.com/auguschen/alpine-ghost/raw/master/storage.tar.gz)~~
