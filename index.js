import TelegramBot from "node-telegram-bot-api";
import { config } from "dotenv";

config()

const bot = new TelegramBot(process.env.TOKEN, { polling: true })

bot.on('message', async msg => {
    if(msg.text === "/start"){
        await bot.sendMessage(msg.chat.id, "Привет мир")
    }
})

bot.on('callback_query', async msg => {
    
})

bot.on('polling_error', console.log)