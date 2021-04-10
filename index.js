const  bot  = require('./app/botc') ;

//on message
bot.on('message', require("./app/bot/messageOnFunction"))

//on message
bot.on('callback_query', require("./app/bot/callbackQueryOnFunction"))

//on error get
bot.on("polling_error", (msg) => {
    console.log("xatolik :))")
});