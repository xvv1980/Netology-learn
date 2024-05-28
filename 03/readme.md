# Задача 1
https://hub.docker.com/repository/docker/xvv1980/custom-nginx/general
# Задача 2
![изображение](https://github.com/xvv1980/Netology-learn/assets/169840386/82f823a1-6e6b-4fa9-b03f-d03e098fd67b)
# Задача 3
![изображение](https://github.com/xvv1980/Netology-learn/assets/169840386/30ed7f7e-fe15-4bb5-a33a-0da67b5709fa)
 Контейнер завершился так как принял команду Ctrl-c на свой счет. Для того чтобы этого не было, можно отключить такое поведение
 через параметер --sig-proxy=false
![изображение](https://github.com/xvv1980/Netology-learn/assets/169840386/4ceaa0a3-e376-47ba-b9ff-611c49bb1725)
Изменился порт на котором запущен web-сервер внутри контейнера,но сам контейнер прокидывает попрежнему порт 80  на 127.0.0.1:8080, в не 81. Поэтому при обращении на 127.0.0.1:8080
страница не найдена.
