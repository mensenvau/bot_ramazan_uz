let inlineQuery = async(msg) => {
    //message on function
    const bot = require('../botc');
    const db = require('../db/db').promise();

    tx = msg.query
    chatId = msg.from.id
    let a = await db.query("SELECT *FROM users WHERE chat_id=?", [chatId])
    let data = await db.query("SELECT *FROM qanswer WHERE keylist like ? ", ["%" + tx + "%"]);
    let arr = [];

    for (let i = 0; i < data[0].length; i++) {
        arr.push({
            type: 'article',
            id: data[0][i].id,
            title: a[0][0].lang == 'kiril' ? data[0][i].questionk : data[0][i].questionl,
            description: "Savol Javob",
            message_text: a[0][0].lang == 'kiril' ? data[0][i].answerk : data[0][i].answerl,
            reply_markup: {
                inline_keyboard: []
            },
            parse_mode: "markdown"
        })
    }

    // console.log(arr)

    // console.log(natija)
    bot.answerInlineQuery(msg.id, arr, {
        cache_time: 0,
        switch_pm_parameter: "search",
        switch_pm_text: msg.query
    });

}


module.exports = inlineQuery