const TelegramBot = require('node-telegram-bot-api');

// @botFather dan olasiz bu tokeni
const token = 'TOKEN_YOU';

// polling usulda botni yoqtig .
const bot = new TelegramBot(token, { polling: true });

module.exports = bot