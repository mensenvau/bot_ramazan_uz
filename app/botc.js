const TelegramBot = require('node-telegram-bot-api');

// @botFather dan olasiz bu tokeni
const token = '1723879599:AAE6evIsQcdn2VIMDrv197w5QDOHrjmBp2U';

// polling usulda botni yoqtig .
const bot = new TelegramBot(token, { polling: true });

module.exports = bot