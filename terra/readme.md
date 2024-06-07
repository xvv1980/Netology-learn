## Подготовка
![изображение](https://github.com/xvv1980/Netology-learn/assets/169840386/babd60fb-d9da-49f2-84ad-3e37bd6418ca)

## Задание 1
  1.1
    `terraform init`

  1.2  
Согласно .gitignore , критичную информацию можно хранить в файле personal.auto.tfvars, так как он не будет
выгружен в гит, а останется на сервере.  

  1.3 
  `"result": "K1F2eakhZEHxU7sF",`

  1.4  
  `Error: Missing name for resource `  
  Описание ресурса должно состоять из двух состовляющих: тип и имя. В нашем случае
  resource "docker_image"  {....}. Указан только тип, нехватает имени, о чем и сообщает terraform

 ``` Error: Invalid resource name  
│ 
│   on main.tf line 29, in resource "docker_container" "1nginx":
│   29: resource "docker_container" "1nginx" {
```
 Имя ресурса должно начинаться с буквы или подчеркивания, в нашем случае с цифры, что не верно.

``` 
│ Error: Reference to undeclared resource  
│ 
│   on main.tf line 31, in resource "docker_container" "nginx":
│   31:   name  = "example_${random_password.random_string_FAKE.resulT}"
```
Ресурс с именем random_string_FAKE не объявлен.

```Error: Unsupported attribute  
│ 
│   on main.tf line 31, in resource "docker_container" "nginx":
│   31:   name  = "example_${random_password.random_string.resulT}"
│
```
  Опечатка в регистре атрибута

  1.5 
  ```
  resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true
}

resource "docker_container" "nginx" {
  image = docker_image.nginx.image_id
  name  = "example_${random_password.random_string.result}"

  ports {
    internal = 80
    external = 9090
  }
}
```
  ![изображение](https://github.com/xvv1980/Netology-learn/assets/169840386/d584cecb-0dbf-4a86-9ec8-861abce3142d)

  1.6  
  Опасность в запуске команды apply с автоподтверждением -  внести ошибочную настройку на всю инфрасруктуру проекта, что может вести к деградации сервиса , вплоть до "падения".
![изображение](https://github.com/xvv1980/Netology-learn/assets/169840386/bd97f7e3-32de-40ca-af68-59b79f5dc583)  
  Может быть этот ключ можно использовать в каких-то скриптах автоматизации при запуске terraform apply, чтобы не вываливалось в интерактив?

  1.7
   `terraform destroy`  

  1.8  
  ```
  resource "docker_image" "nginx" {
  name         = "nginx:latest"
  <b>keep_locally = true  --вот эта настройка не дает удалить образ</b>
}
```
Выдержка из документации:
keep_locally (Boolean) If true, then the Docker image won't be deleted on destroy operation. If this is false, it will delete the image from the docker local storage on destroy operation.
  
## Задание 2

