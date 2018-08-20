const mysql=require('mysql')
const connection=mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  port: '3306',
  database: 'beetime' 
})
connection.connect()
function queryDB(sql) {
  if (sql.toString().trim()) {
    return new Promise((resolve, reject) => {
      connection.query(sql, function (err, result){
        if (err) {console.log(err)}
        else {
          resolve(result)
        }
      })
    })
  }else{
    console.log('no sql order')
  }
  // connection.end()
}
module.exports.queryDB=queryDB