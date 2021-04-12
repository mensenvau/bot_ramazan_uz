const TelegramBot = require('node-telegram-bot-api');

// @botFather dan olasiz bu tokeni
const token = '1728904512:AAEiIuEzHcXGdlqPPRAhDv8vVc_q1GrSYeU';

// polling usulda botni yoqtig .
const bot = new TelegramBot(token, { polling: true });

module.exports = bot