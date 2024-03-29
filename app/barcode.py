import cv2
from PIL import Image
from pyzbar import pyzbar

#
# borrowed from
# https://towardsdatascience.com/building-a-barcode-qr-code-reader-using-python-360e22dfb6e5
#


def read_barcodes(frame):
    barcodes = pyzbar.decode(frame)
    for barcode in barcodes:
        x, y, w, h = barcode.rect

        #1
        barcode_info = barcode.data.decode('utf-8')
        cv2.rectangle(frame, (x,y),(x+w, y+h), (0, 255, 0), 2)

        #2
        font = cv2.FONT_HERSHEY_DUPLEX
        cv2.putText(frame, barcode_info, (x + 6, y - 6), font, 2.0,
                    (255, 255, 255), 1)

        #3
        with open("barcode_result.txt",  mode='w') as file:
            file.write("Recognized Barcode:" + barcode_info)

    return frame


if __name__ == '__main__':
    read_barcodes(Image.open("/Users/bhsuarez/Desktop/Untitled.png", 'r'))