var path = require('path'),
    config;

config = {
    production: {
        url: 'https://www.example.com',
        mail: {},
        database: {
            client: 'mysql',
            connection: {
                host     : 'db',
                user     : 'ghost',
                password : 'ghost',
                database : 'ghost',
                charset  : 'utf8'
            },
            debug: false
        },
        server: {
            host: '0.0.0.0',
            port: '2368'
        },
        storage: {
            active: 'qn-store',
            'qn-store':{
                accessKey: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
                secretKey: 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
                bucket: 'xxxxx',
                origin: 'http://xxxxxxxx.bkt.clouddn.com',
                uploadURL: 'http://xxxxx.qiniu.com',
                fileKey: {
                        hashAsBasename: true,
                        safeString: true,
                        prefix: 'YYYY/MM/',
                        suffix: '',
                        extname: true
                }
            },
        },
    },
};

module.exports = config;
