# Задача 1
https://hub.docker.com/repository/docker/xvv1980/custom-nginx/general
# Задача 2
![изображение](https://github.com/xvv1980/Netology-learn/assets/169840386/82f823a1-6e6b-4fa9-b03f-d03e098fd67b)
# Задача 3
![изображение](https://github.com/xvv1980/Netology-learn/assets/169840386/30ed7f7e-fe15-4bb5-a33a-0da67b5709fa)
 Контейнер завершился так как принял команду Ctrl-c на свой счет. Для того чтобы этого не было, можно отключить такое поведение
 через параметер --sig-proxy=false
![изображение](https://github.com/xvv1980/Netology-learn/assets/169840386/4ceaa0a3-e376-47ba-b9ff-611c49bb1725)
   Изменился порт на котором запущен web-сервер внутри контейнера,но сам контейнер прокидывает попрежнему порт 80  на 127.0.0.1:8080, в не 81. Поэтому при обращении на 127.0.0.1:8080  страница не доступна.  
   Чтобы исправить ситуацию нужно определить id контейнера custom-nginx-t2, остановить его, остановить демон docker. Затем найти каталог в /vat/lib/docker/containers по ID. В нем поправить файлы hostconfig.json и config.v2.json исправив в них порт 80 на 81. Далее запустить демон и контейнер. 
   ![изображение](https://github.com/xvv1980/Netology-learn/assets/169840386/0cb0ed16-5999-46ca-b98b-e66ea0b01be7)
 # Задача 4
![изображение](https://github.com/xvv1980/Netology-learn/assets/169840386/c67709be-3902-45d3-a835-de46ba7e3080)
 # Задача 5
 ![изображение](https://github.com/xvv1980/Netology-learn/assets/169840386/08ba8bac-71a1-4c2e-9e43-280f3f63f5c0)
    Был выполнен файл compose.yaml, так как для новой версии он считается предпочтительным. Так же определяется и docker-compose.yaml, для совместимости со старыми версиями.
    ![изображение](https://github.com/xvv1980/Netology-learn/assets/169840386/d7672f0b-ef10-40d4-bb95-bc403b45a37a)
    Добавлена директива include
    ![изображение](https://github.com/xvv1980/Netology-learn/assets/169840386/e8c15fc2-8cec-4bc7-a755-f60900af9456)
![изображение](https://github.com/xvv1980/Netology-learn/assets/169840386/58a28a37-96a0-4c23-947e-8ffc3ade557f)
Залили образ
![изображение](https://github.com/xvv1980/Netology-learn/assets/169840386/820c2542-838b-490c-a36c-75264708a004)
Удалил compose.yaml
![изображение](https://github.com/xvv1980/Netology-learn/assets/169840386/1ce5fdab-c949-44c6-863b-11987121bdd6)
Пропало описание у запущенного контейнера, "осиротел". Предлагают избавится от этого контейнера и привести все в соотвествие используя флаг --remove-orphans
![изображение](https://github.com/xvv1980/Netology-learn/assets/169840386/a2b13a0c-906f-48e1-af3b-350b32572c4a)





