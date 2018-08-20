import {login,list,task,submit,update,taskover,allList} from './bee'
require('./dog')
const Koa=require('koa')
const bodyParser=require('koa-bodyparser')
const router=require('koa-router')()
const https=require('https')
const cors = require('koa2-cors');
const fs=require('fs')
router.post('/login',login)
      .post('/list',list)
      .post('/task',task)
      .post('/submit',submit)
      .post('/update',update)
      .post('/taskover',taskover)
      .post('/all',allList)

const app=new Koa()
app.use(cors())
app.use(bodyParser())
app.use(router.routes())
const options = {
    key: fs.readFileSync('./ssl/private.key', 'utf8'),
    cert: fs.readFileSync('./ssl/private.crt', 'utf8')
};
const httpsserver=https.createServer(options, app.callback());
httpsserver.listen(3000,'0.0.0.0');