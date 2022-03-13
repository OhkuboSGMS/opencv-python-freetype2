from timeit import timeit
import cv2
import numpy as np

text = ['Hello', '¡Hola!', 'Здравствуйте', '你好', 'اَسَّلاَمُ عَلَيْكُم', '안녕하세요', 'こんにちは']
ft = cv2.freetype.createFreeType2()
ft.loadFontData(fontFileName='MPLUS1-Regular.ttf', id=0)

img = np.zeros((256, 256, 3), dtype=np.uint8)
n = 10000


def perf_putText():
    return timeit(
        lambda: [cv2.putText(img, txt, (0, 0), cv2.FONT_HERSHEY_SIMPLEX, 1.0, (255, 255, 255), 1, cv2.LINE_4, False) for
                 txt in text],
        number=n)


def perf_freeType2_putText():
    return timeit(lambda: [ft.putText(img, txt, (0, 0), 10, (255, 255, 255), 1, cv2.LINE_4, False) for txt in text],
                  number=n)


if __name__ == '__main__':
    t_cv2 = perf_putText()
    print(f' cv2.putText: {t_cv2}s . Per Call {t_cv2 / n * 1000}ms')
    t_ft = perf_freeType2_putText()
    print(f'  ft.putText: {t_ft}s . Per Call {t_ft / n * 1000}ms')
