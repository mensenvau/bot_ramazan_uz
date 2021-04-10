const userMessage =async  (bot,msg,user) =>{

    let key =require("../keyword/users")[user.lang || "kiril"]
    let lang =require("../lang.json")[user.lang || "kiril"]
    let  db  = require('../db/db').promise();
    let  chatId= msg.chat.id ;
    let  first_name =msg.chat.first_name ;
    let  tx = msg.text ;
    let  msgId= msg.message_id ;

    //start payti 1-qisim
    if(user.steep==0){
        bot.sendMessage(chatId,"<b>Assalomu alaykum va rahmatullohi va barakotuh </b> @Ramazanuz_bot ga xush kelibsiz. Botni ishga tushirish uchun o'zingizga qulay bo'lgan alifboni tanglang!\n" +
            "\n" +
            "<b>Aссалому алайкум ва раҳматуллоҳи ва баракотуҳ  </b>@Ramazanuz_bot га хуш келибсиз . Ботни ишга тушириш учун ўзингизга қулай бўлган алифбони тангланг!",{
            reply_markup: key.lang ,
            parse_mode : "HTML"
        })
        return ;
    }

    //start yuborganda
    if(tx=='/start' || tx=='◀️ Orqaga' || tx=='◀️ Орқага'){
        await db.query("UPDATE users SET steep=1 WHERE chat_id=?",[chatId]) ;
        bot.sendMessage(chatId,lang["id1"],
            {
                parse_mode : "HTML",
                reply_markup: key.start ,
            })
    }

    //sozlamalar
    if(tx=='⚙️ Sozlamalar'  || tx=='⚙️ Созламалар'){
        bot.sendMessage(chatId,lang['id2'],
            {
                parse_mode : "HTML",
                reply_markup: key.settings ,
            })
    }

    //sozlamalar >  alifbo
    if(tx=='♻️ Alifbo' || tx=='♻️ Aлифбо'){
        await db.query("UPDATE users SET steep=0 WHERE chat_id=?",[chatId]) ;
        bot.sendMessage(chatId,lang["id3"],
            {
                parse_mode : "HTML",
                reply_markup: key.lang ,
            })
    }

    //sozlamalar >  hudud
    if(tx=='📍 Hududingiz' || tx=='📍 Ҳудудингиз'){
        let adr = await db.query("SELECT *FROM address")
        bot.sendMessage(chatId,lang["id6"],
            {
                parse_mode : "HTML",
                reply_markup: key.address(adr[0],"hudud")
            })
      }

    //taqvim
    if(tx=='🗓  Taqvim' || tx=='🗓  Тақвим'){
        let adr = await db.query("SELECT *FROM address")
        bot.sendMessage(chatId,lang["id4"],
            {
                parse_mode : "HTML",
                reply_markup: key.address(adr[0],"taqim") ,
            })
    }


}



module.exports = userMessage
