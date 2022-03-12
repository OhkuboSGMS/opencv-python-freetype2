import cv2
import numpy as np

img = np.zeros((150, 900, 3), dtype=np.uint8)

ft = cv2.freetype.createFreeType2()
ft.loadFontData(fontFileName='MPLUS1-Regular.ttf', id=0)
ft.putText(img=img,
           text='羹に懲りて膾を吹く',
           org=(15, 15),
           fontHeight=100,
           color=(255, 255, 255),
           thickness=-1,
           line_type=cv2.LINE_AA,
           bottomLeftOrigin=False)

cv2.imshow("Free Type Test", img)
cv2.waitKey(0)
