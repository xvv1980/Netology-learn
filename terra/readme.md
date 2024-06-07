## Подготовка
![изображение](https://github.com/xvv1980/Netology-learn/assets/169840386/babd60fb-d9da-49f2-84ad-3e37bd6418ca)

## Задание 1
  1.1
    terraform init

  1.2  
Согласно .gitignore , критичную информацию можно хранить в файле personal.auto.tfvars, так как он не будет
выгружен в гит, а останется на сервере.  

  1.3 
  "result": "K1F2eakhZEHxU7sF",

  1.4  
  Error: Missing name for resource
  Описание ресурса должно состоять из двух состовляющих: тип и имя. В нашем случае
  resource "docker_image"  {....}. Указан только тип, нехватает имени, о чем и сообщает terraform

  Error: Invalid resource name
│ 
│   on main.tf line 29, in resource "docker_container" "1nginx":
│   29: resource "docker_container" "1nginx" {
 Имя ресурса должно начинаться с буквы или подчеркивания, в нашем случае с цифры, что не верно.
  
## Задание 2

