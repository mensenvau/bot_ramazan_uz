const TelegramBot = require('node-telegram-bot-api');

// @botFather dan olasiz bu tokeni
const token = '1723879599:AAEUBV-eVUJ49nri9mgX8jm0LLNNeYF5d5I';

// polling usulda botni yoqtig .
const bot = new TelegramBot(token, { polling: true });

module.exports = bot