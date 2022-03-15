import telegram
from telegram.ext import Updater
import os

bot = telegram.Bot(token=os.getenv('telegram_token'))


def send_telegram_message():
    return

if __name__ == '__main__':
    print(bot.get_me())
