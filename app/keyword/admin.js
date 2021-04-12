module.exports = {
    start: {
        resize_keyboard: true,
        one_time_keyboard: true,
        keyboard: [
            ["Qur'on tilovati va darslari"],
        ],
    },

    address: (adr, k = "taqim") => {
        const arr = [];
        for (let i = 0; i < adr.length; i += 2) {
            let a = [];
            a.push({ text: adr[i].namek, callback_data: k + adr[i].id })
            a.push({ text: adr[i + 1].namek, callback_data: k + adr[i + 1].id })
            arr.push(a)
        }
        // arr.push( [{text: "🏢 Menyu", callback_data: "menyu"}])
        return {
            inline_keyboard: arr,
        }
    },
}