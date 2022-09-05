import time
import django

print(django.VERSION)

for i in range(1000):
    print("hola docker: " + str(i))
    time.sleep(2)

