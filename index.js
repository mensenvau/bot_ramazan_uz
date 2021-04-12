const bot = require('./app/botc');
// const express = require("express");
// conts app= require("./app");


//on message
bot.on('message', require("./app/bot/messageOnFunction"))

//on message
bot.on('callback_query', require("./app/bot/callbackQueryOnFunction"))

//on inline_query
bot.on('inline_query', require("./app/bot/inlineQuery"))

//on error get
bot.on("polling_error", (msg) => {
    console.log("xatolik :))")
});