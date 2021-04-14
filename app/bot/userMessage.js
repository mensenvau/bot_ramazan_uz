const userMessage = async(bot, msg, user) => {

    let key = require("../keyword/users")[user.lang || "kiril"]
    let lang = require("../lang")[user.lang || "kiril"]
    let db = require('../db/db').promise();
    let chatId = msg.chat.id;
    let first_name = msg.chat.first_name;
    let tx = msg.text;
    let msgId = msg.message_id;

    //start payti 1-qisim
    if (user.steep == 0) {
        bot.sendMessage(chatId, "<b>Assalomu alaykum va rahmatullohi va barakotuh </b> @Ramazanuz_bot ga xush kelibsiz. Botni ishga tushirish uchun o'zingizga qulay bo'lgan alifboni tanglang!\n" +
            "\n" +
            "<b>Aссалому алайкум ва раҳматуллоҳи ва баракотуҳ  </b>@Ramazanuz_bot га хуш келибсиз . Ботни ишга тушириш учун ўзингизга қулай бўлган алифбони тангланг!", {
                reply_markup: key.lang,
                parse_mode: "HTML"
            })
        return;
    }



    //start yuborganda
    if (tx == '/start' || tx == '◀️ Orqaga' || tx == '◀️ Орқага') {
        await db.query("UPDATE users SET steep=1 WHERE chat_id=?", [chatId]);
        bot.sendMessage(chatId, lang["id1"], {
            parse_mode: "HTML",
            reply_markup: key.start,
        })
        return ;
    }


    //savol-javob  2-qisim
    if (user.steep == 2) {
        // await db.query("UPDATE users SET steep=1 WHERE chat_id=?", [chatId]);
        let soni = await db.query("SELECT *FROM qanswer WHERE keylist like ? ", ["%" + tx + "%"]);
        bot.sendMessage(chatId, lang["id10"](tx, soni[0].length), {
            reply_markup: {
                inline_keyboard: [
                    [{
                        text: lang["id11"],
                        switch_inline_query_current_chat: tx
                    }]
                ]
            },
            parse_mode: "HTML"
        })
        return;
    }

    //sozlamalar
    if (tx == '⚙️ Sozlamalar' || tx == '⚙️ Созламалар') {
        bot.sendMessage(chatId, lang['id2'], {
            parse_mode: "HTML",
            reply_markup: key.settings,
        })
    }

    //sozlamalar >  alifbo
    if (tx == '♻️ Alifbo' || tx == '♻️ Aлифбо') {
        await db.query("UPDATE users SET steep=0 WHERE chat_id=?", [chatId]);
        bot.sendMessage(chatId, lang["id3"], {
            parse_mode: "HTML",
            reply_markup: key.lang,
        })
    }

    //'⏳ Бугун'
    if (tx == '⏳ Бугун' || tx == '⏳ Bugun') {
      if(user.address) {
          console.log(user.address)
          bot.sendPhoto(chatId, "https://unnamed.incrm.uz/"+user.address, {
              caption: lang["id12"],
              parse_mode: "HTML",
              // reply_markup: key.share,
          })
          return ;
      }
      else {
          tx = '📍 Hududingiz'
      }
    }

    //sozlamalar >  hudud
    if (tx == '📍 Hududingiz' || tx == '📍 Ҳудудингиз') {
        let adr = await db.query("SELECT *FROM address")
        bot.sendMessage(chatId, lang["id6"], {
            parse_mode: "HTML",
            reply_markup: key.address(adr[0], "hudud")
        })
    }

    //taqvim
    if (tx == '🗓  Taqvim' || tx == '🗓  Тақвим') {
        let adr = await db.query("SELECT *FROM address");
        bot.sendMessage(chatId, lang["id4"], {
            parse_mode: "HTML",
            reply_markup: key.address(adr[0], "taqim"),
        })
    }


    // Qur'on tilovati va darslari
    if (tx == "📖 Qur'on tilovati va darslari" || tx == "📖 Қуръон тиловати ва дарслари") {
        bot.sendMessage(chatId, lang["id8"], {
            parse_mode: "HTML",
            reply_markup: key.quron,
        })
    }


    // '💬 Савол-жавоб'
    if (tx == '💬 Savol-javob' || tx == '💬 Савол-жавоб') {
        await db.query("UPDATE users SET steep=2 WHERE chat_id=?", [chatId]);
        bot.sendMessage(chatId, lang["id9"], {
            parse_mode: "HTML",
            reply_markup: key.next,
        })
    }


    //"Qur'on" =>"Qur'on tilovati"
    if (tx=="Qur'on tilovati"  || tx=="Қуръон тиловати") {
        let qt= await db.query("SELECT *FROM qtilovat ");
        let mtx = "";
        for(let i=0;i<qt[0].length;i++) mtx+=qt[0][i].id+") "+qt[0][i].name+"\n" ;
        bot.sendMessage(chatId, mtx , {
            parse_mode: "HTML" ,
            reply_markup: key.qt(qt[0],"tilvt"),
        })
    }


     //error >  hozicha
    if ( tx == "Asmaul husna" || tx == '☝️Maruzalar' || tx=='✍️ Ismga tabrik'
         || tx=='☝️Марузалар' || tx=="Aсмаул ҳусна" || tx=='✍️ Исмга табрик') {
        bot.sendMessage(chatId, lang["err"], {
            parse_mode: "HTML"
        })
    }

}



module.exports = userMessage