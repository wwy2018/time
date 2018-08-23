const koa2Req = require('koa2-request')
const db=require('./model')
async function login(ctx){
  const code=ctx.request.body.code
  const appid='wx3022dcc24392f936'
  const appsecret='a38eb9b0443dccc7f9e02b79b10a8519'
  const url=`https://api.weixin.qq.com/sns/jscode2session?appid=${appid}&secret=${appsecret}&js_code=${code}&grant_type=authorization_code`
  const res=await koa2Req(url)
  ctx.body=res.body
}
async function list(ctx){
  // 只取当天数据
  const openid=ctx.request.body.openid
  const res = await db.queryDB(`select * from beelist where TO_DAYS(c_time)=TO_DAYS(NOW()) and openid='${openid}'`)
  ctx.body=res
}
async function task(ctx){
  const openid=ctx.request.body.openid
  const res = await db.queryDB(`select * from beelist where current=1 and TO_DAYS(c_time)=TO_DAYS(NOW()) and openid='${openid}'`)
  ctx.body=res
}
async function allList(ctx){
  const openid=ctx.request.body.openid
  const res = await db.queryDB(`select * from beelist where openid='${openid}'`)
  ctx.body=res
}
async function submit(ctx){
  const body=ctx.request.body
  const name=body.name
  const times=body.time_s
  const timee=body.time_e
  const openid=body.openid
  const alarm=Number(body.alarm)
  const current=1
  const music='http://fjdx.sc.chinaz.com/Files/DownLoad/sound1/201611/7944.mp3'
  const res = await db.queryDB(`insert into beelist(name,time_s,time_e,openid,current,alarm,music) values('${name}','${times}','${timee}','${openid}',${current},${alarm},'${music}')`)
  if (res) {
    ctx.body={error: 0}
  }
}
async function update(ctx){
  const body=ctx.request.body
  const alarm=Number(body.alarm)
  const name=body.name
  const times=body.time_s
  const timee=body.time_e
  const id=body.id
  const res = await db.queryDB(`update beelist set alarm=${alarm}, name='${name}', time_s='${times}', time_e='${timee}' where id=${id}`)
  if (res) {
    ctx.body={error: 0}
  }
}
async function taskover(ctx){
  const body=ctx.request.body
  if (body.id) {
    const current=Number(body.current)
    const id=body.id
    const res = await db.queryDB(`update beelist set current=${current} where id=${id}`)
    if (res) {
      ctx.body={error: 0}
    }
  }else{
    console.log('缺少id')
  }
}
export{
  login,
  list,
  task,
  allList,
  submit,
  update,
  taskover
}