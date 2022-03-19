import telegram
import os
import logging

logging.basicConfig(format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
                     level=logging.INFO)

bot = telegram.Bot(token=os.getenv('telegram_token'))


def send_telegram_message(ip_address, barcode):
    bot.send_message(text=f'There was a vinyl added from {ip_address}'
                          f'{barcode}',
                     chat_id=os.getenv('bhsuarez_chat_id'))
