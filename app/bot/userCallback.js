const userCallback = async(bot, msg, user) => {
    let fs = require("fs")
    let path = require("path")
    let key = require("../keyword/users")[user.lang || "kiril"]
    let lang = require("../lang")[user.lang || "kiril"]
    let db = require('../db/db').promise();
    let chatId = msg.message.chat.id;
    let first_name = msg.message.chat.first_name;
    let tx = msg.message.text;
    let msgId = msg.message.message_id;
    let data = msg.data
    let isData = data.substr(0, 5);


    //kiril  va lotin
    if (data == 'kiril' || data == 'lotin') {
        await db.query("UPDATE users SET steep=1,lang=? WHERE chat_id=?", [data, chatId]);
        user = await db.query("SELECT *FROM users WHERE chat_id=?", [chatId])
        user = user[0][0]
        key = require("../keyword/users")[user.lang || "kiril"];
        lang = require("../lang")[user.lang || "kiril"];
        bot.sendMessage(chatId, lang["id1"], {
            parse_mode: "HTML",
            reply_markup: key.start,
        })
        return;
    }


    if (isData == "taqim") {
        let did = data.replace("taqim", "");
        let img = "";
        try {
            img = fs.readFileSync(path.join(__dirname + `../../../public/taqvim/${did}lotin.jpg`))
        } catch {
            img = fs.readFileSync(path.join(__dirname + `../../../public/taqvim/1.png`))
        }

        bot.sendPhoto(chatId, img, {
            caption: lang["id5"],
            parse_mode: "HTML"
        })
        return;
    }

    if (isData == "hudud") {
        let did = data.replace("hudud", "");
        let adr = await db.query("SELECT *FROM address WHERE id=?", [did]);
        await db.query("UPDATE users SET steep=1,address=? WHERE chat_id=?", [did, chatId]);
        bot.sendMessage(chatId, lang["id7"](`'${adr[0][0].namel}'`), {
            parse_mode: "HTML",
            reply_markup: key.start,
        })
        return;
    }

    if(isData=="tilvt"){
        let did = data.replace("tilvt", "");
        let qtid = await db.query("SELECT *FROM qtilovat WHERE id=?", [did]);
        bot.sendAudio(chatId, qtid[0][0].link, {
            caption:qtid[0][0].mtext ,
            parse_mode: "HTML",
            reply_markup: key.start
        })
        return;
    }

    if(isData=="qdars"){
        let did = data.replace("qdars", "");
        let qtid = await db.query("SELECT *FROM qdars WHERE id=?", [did]);
        bot.sendMessage(chatId, qtid[0][0].mtext, {
            parse_mode: "HTML",
            reply_markup: key.start
        })
        return;
    }
}


module.exports = userCallback