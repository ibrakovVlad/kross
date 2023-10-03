const TelegramBot = require('node-telegram-bot-api');
const token = '6373020559:AAFl5IUOR3MOpvDLWVvvyyhRmkXvhtffZLA';
const bot = new TelegramBot(token, {polling: true});
const connection = require('./connect')

let categories_ = []
let type_categories_ = []
let categories_product_ = []
let type_product_ = []

async function categories() {
    const connect = await connection;
    const [rows, fields] = await connect.execute('SELECT `text`, `callback_data` FROM `categories`');
    rows.forEach(element => {
        categories_.push([
            {
                text: element.text,
                callback_data: element.callback_data
            }
        ])
    });
}

async function type_categories(categories_id) {
    const connect = await connection;
    const [rows, fields] = await connect.execute('SELECT `text`, `callback_data`, `categories_key` FROM `type_categories` WHERE `callback_data` = ?', [categories_id]);
    rows.forEach(element => {
        type_categories_.push([
            {
                text: element.text,
                callback_data: `0,${element.callback_data},0,${element.categories_key}`
            }
        ])
    });

    type_categories_.push([{
        text: "➡Назад⬅", 
        callback_data: `backs`
    }])
}

async function type_categories_product(categories_product_id, categories_key) {
    const connect = await connection;
    const [rows, fields] = await connect.execute('SELECT `text`, `callback_data`, `categories_key`, `product_key` FROM `categories_product` WHERE `callback_data` = ? and `categories_key` = ?', [categories_product_id, categories_key]);
    rows.forEach(element => {
        categories_product_.push([
            {
                text: element.text,
                callback_data: `1,0,${element.product_key},${element.categories_key},${element.callback_data}`
            }
        ])
    });
    categories_product_.push([{
        text: "➡Назад⬅", 
        callback_data: `1,1,1,0,0,${rows[0].callback_data}`
    }])
    console.log(rows[0].callback_data)
}

async function type_product(product_id) {
    const connect = await connection;
    const [rows, fields] = await connect.execute('SELECT `image`, `name`, `descript`, `price`, `key` FROM `product` WHERE `key` = ?', [product_id]);
    rows.forEach(element => {
        type_product_.push(element)
    });
}

(async () => {
    await categories();
    bot.on('callback_query', async query => {
        const chatID = query.from.id
        const message_id = query.message.message_id
        console.log(message_id)
        console.log(query.reply_markup)
        // await type_categories(query.data)

        var temp = new Array();
        temp = query.data.split(",");
        let temps = temp[3]
        console.log(temp[0] == 'backs')

        if(temp[0] == "0") {
            bot.deleteMessage(chatID, message_id)
            var temp = new Array();
            temp = query.data.split(",");
            let temps = temp[3]

            await type_categories_product(temp[1], temps)
            setTimeout(() => {
                bot.sendMessage(chatID, `Выберите:`, {
                    "reply_markup": {
                        "inline_keyboard": categories_product_
                    }
                });
                categories_product_.length=0;
            }, 800)
        }
        
        else if(temp[1] == "0") {
            bot.deleteMessage(chatID, message_id)
            await type_product(temp[2])
            console.log(temp[2], temps)
            bot.sendPhoto(chatID,`${type_product_[0].image}`,{
                caption : `
Название: ${type_product_[0].name}
${type_product_[0].descript}

❗️УТОЧНЯЙТЕ НАЛИЧИЕ ТОВАРА❗️
 
Цена: ${type_product_[0].price}
                `,
                "reply_markup": {
                    "inline_keyboard": [
                        [{
                            text: "➡Назад⬅", 
                            callback_data: `0,${temp[4]},0,${temps}`
                        }]
                    ]
                }
            });
            categories_product_.length=0;
            type_product_.length=0;
        }

        else if(temp[0] == 'backs') {
            categories_.length = 0
            await categories();
            bot.sendMessage(chatID, `⬇️Выберите раздел⬇️`, {
                "reply_markup": {
                    "inline_keyboard": categories_
                }
            });
        }
        
        else {
            if(temp[5]) {
                bot.deleteMessage(chatID, message_id)
                await type_categories(temp[5])
                bot.sendMessage(chatID, `⬇️Выберите товар⬇️`, {
                    "reply_markup": {
                        "inline_keyboard": type_categories_
                    }
                });
                console.log(temp[5])
            } else {
                bot.deleteMessage(chatID, message_id)
                await type_categories(query.data)
                bot.sendMessage(chatID, `⬇️Выберите производителя⬇️`, {
                    "reply_markup": {
                        "inline_keyboard": type_categories_
                    }
                });
            }
        }
        type_categories_.length=0;
    })
})()

bot.onText(/\/start/, (msg) => {
    bot.sendMessage(msg.chat.id, "Добро пожаловать в каталог товаров PARilka!", {
        "reply_markup": {
            resize_keyboard: true,
            "keyboard": [["🛒 Каталог 🛒"], ["✅ Купить ✅"]]
        }
    });
    setTimeout(() => {
        bot.sendMessage(msg.chat.id, `⬇️Выберите раздел⬇️`, {
        "reply_markup": {
            "inline_keyboard": categories_
        }
    });
    }, 800)
});

bot.onText(/🛒 Каталог 🛒/, (msg) => {
    bot.sendMessage(msg.chat.id, `⬇️Выберите раздел⬇️`, {
        "reply_markup": {
            "inline_keyboard": categories_
        }
    });
});

bot.onText(/✅ Купить ✅/, (msg) => {
    bot.sendMessage(msg.chat.id, `📦🔍Уточнить наличие и оформить доставку:
                                  | @vladofblad |

🕤📍Адрес и график работы:

BULL SHOP работает ежедневно с 10:00 до 23:00! 
Находимся по адресу Комсомольская 199/1 в магазине Parilka, вход снаружи здания.`);
});


