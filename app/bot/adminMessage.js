let adminMessage = async(bot, msg, user) => {

    let key = require("../keyword/admin")
    let db = require('../db/db').promise();
    let chatId = msg.chat.id;
    let first_name = msg.chat.first_name;
    let tx = msg.text;
    let msgId = msg.message_id;


    //start yuborganda
    if (tx == '/start') {
        await db.query("UPDATE users SET steep=1 WHERE chat_id=?", [chatId]);
        bot.sendMessage(chatId, "Assalom alekum admin", {
            parse_mode: "HTML",
            reply_markup: key.start,
        })
    }
    // Qur'on tilovati va darslari
    if (tx == "Qur'on tilovati va darslari") {
        await db.query("UPDATE users SET steep=1 WHERE chat_id=?", [chatId]);
        bot.sendMessage(chatId, "Assalom alekum admin", {
            parse_mode: "HTML",
            reply_markup: key.start,
        })
    }

}


module.exports = adminMessage