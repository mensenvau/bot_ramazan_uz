module.exports = messageOnFunction = async (msg)=>
{
    //message on function
    const  bot = require('../botc') ;
    const  db  = require('../db/db').promise();

    let  chatId= msg.chat.id ;
    let  first_name =msg.chat.first_name ;
    let  tx = msg.text ;
    let  msgId= msg.message_id ;

    let a= await db.query("SELECT *FROM users WHERE chat_id=?",[chatId])


    if(a[0].length==0){
        await db.query("INSERT INTO users (full_name,chat_id) values (?,?)",[first_name,chatId])
    }

    a= await db.query("SELECT *FROM users WHERE chat_id=?",[chatId])

    if(a[0][0].isadmin==2) {
        require('./adminMessage')(bot,msg,a[0][0]);
    }

    if(a[0][0].isadmin==1) {
        require('./userMessage')(bot,msg,a[0][0]);
    }

}

