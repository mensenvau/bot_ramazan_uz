const TelegramBot = require('node-telegram-bot-api');

// @botFather dan olasiz bu tokeni
const token = '1728904512:AAGgLs0sP30j27j6V9iu4kiaOsikD6cnj_I';

// polling usulda botni yoqtig .
const bot = new TelegramBot(token, {polling: true});

module.exports = bot