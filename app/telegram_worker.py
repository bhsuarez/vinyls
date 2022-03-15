import telegram
import os
import logging
import requests
logging.basicConfig(format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
                     level=logging.INFO)

bot = telegram.Bot(token=os.getenv('telegram_token'))


def send_telegram_message(ip_address):
    requestz = "http://ip-api.com/json/" + ip_address
    response = requests.get(requestz)
    result = response.content.decode()
    bot.send_message(text=f'There was a visit from {ip_address}'
                          f'{result}', chat_id=os.getenv('bhsuarez_chat_id'))
