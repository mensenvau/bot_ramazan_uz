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
        console.log("https://drive.google.com/file/d/13vm7T9zkiF5sz6I7lysfprEWw3koWXm6/view?usp=sharing")
        bot.sendDocument(chatId, " https://doc-0c-ak-docs.googleusercontent.com/docs/securesc/t9v1esl8o4va4600u8pqc1qg1n8750g8/s65ej4uat3h4s5esl74hp3j2559ilt03/1618290900000/09933436537247629246/09933436537247629246/13vm7T9zkiF5sz6I7lysfprEWw3koWXm6?e=download&authuser=0&nonce=27hfn46fbv6r4&user=09933436537247629246&hash=umptgkgt8cs7rqohjh91l0bsaabsnjl5" , {
            caption:qtid[0][0].mtext ,
            parse_mode: "HTML",
            reply_markup: key.start
        })
        return;
    }
}


module.exports = userCallback