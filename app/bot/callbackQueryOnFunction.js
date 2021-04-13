module.exports = callbackQueryOnFunction = async (msg)=>{

      //message on function
        const  bot = require('../botc') ;
        const  db  = require('../db/db').promise();

        let  chatId= msg.message.chat.id ;
        let  first_name =msg.message.chat.first_name ;
        let  tx = msg.message.text ;
        let  msgId= msg.message.message_id ;

        const a= await db.query("SELECT *FROM users WHERE chat_id=?",[chatId])

        if(a[0][0].isadmin==2) {
            require('./adminCallback')(bot,msg,a[0][0]);
        }

        if(a[0][0].isadmin==1) {
            require('./userCallback')(bot,msg,a[0][0]);
        }


        bot.answerCallbackQuery(msg.id,"DataTech.uz");
}