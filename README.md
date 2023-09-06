# Clean Architecture

![image](https://github.com/GuiMeiring/clean_architecture/assets/101908636/3a281707-2c05-4749-9664-13be1b010ed5)
![image](https://github.com/GuiMeiring/clean_architecture/assets/101908636/9afeab7b-c313-4c0a-936b-589ed5939fd4)

## Clean Architecture - separa as aplicações em base na regra de negócios
O topo da pirâmide não conhece as bases anteriores, porém que está embaixo conhece tudo que está em cima.
Por exemplo, a camada  Domain não conhece a camda de Data, mas a camada de Data conhece Domain.

O código que menos sofre alteração no meio da aplicação (parte mais alta de uma pirâmide), o código que sofre mais alterações aos lados (parte mais baixas de uma pirâmide).


## Divisão das camadas(Layers)

### 1. Domain
Trabalha com a regra de negocios, com dados, com a lógica da aplicação

#### -> Camada Entidades
 Representação de um objeto do mundo real, pode ser um boleto, produto, pagamento, carrinho - não pode ter imports de bibliotecas internas e do framework, pode ter setters e getters
#### -> Camada use Cases - casos de uso 
 Manipular entidade, seja alguma coisa do mundo externo ou não, executa lógicas referente a entity, não conhece o mudo externo, só importa coisa da camada domain
#### -> Camada Repository - contrato 
 Por exemplo contrato de salvar um carro - não tem implementação de repositório

### 2. Data
 Responsável por tratar dados.
 
 Responsabilidades: consumir APIs, fazer implementação do repositório Data Source, converter dados - fica as logicas 'to JSOn' e 'from JSON'

#### -> Repositories 
  Tem a implementação na data do contrato na camada Domain, assim Domain não conhece Data, mas Data conhece Domain.

#### -> DataSource 
  Pode possuir vários, cada um com seu determinado cenário - Chamada a algo externo como uma api, um firebase, um banco de dados
  
#### -> DTO (Data Transfer Object)

 Toda parte de interação com a API quem vai fazer oferercer é o dto, tem o que a API espera e logo em seguida vai devolver para a entity esses valores já convertidos e tratados, ou seja,  vai possuir o toMAp e fromMap

Função do repositório: saber buscar um dado, onde vai buscar não é a responsabilidade dele.A função dele é fazer o toMap e fromMap e trafegar para o datasource


### 3. Presentations
  Começa a olhar o projeto na parte visual
  Responsável pelo input output 

#### -> Controller 
Responsável por controlar o fluxo da aplicação - trata as regras de negócios (Use Case)

#### -> UI 
Possui pages, interfaces, widgets e components


## Packages

### 1. GetIt

Pasta Core - algo genérico, onde que toda a minha aplicação pode ler os conteúdos

O get_it é conhecido como um Service Locator simples. Com ele você registra seus tipos, objetos em uma interface  e fornece a implementação concreta a ela.È utilizada para evitar que seus widgets tenham dependências diretas torna seu código mais organizado e mais fácil de testar e manter. 


#### -> getIt.registerLazySingleton
Mesma instancia do objeto do inicio ao fim da aplicação - exemplo de uso:  carrinho de compra.

#### -> getIt.registerFactory
Vai fabricar uma nova instância do objeto toda vez que recuperar o controller - exemplo de uso: lista de produto

### 2. Dartz

Oferece uma interface em que vai me obrigar a devolver sempre um resultado de sucesso e de falha, e vai sempre precisar tratar o sucesso e a falha - não precisa fazer trycatchs

Left = Erro - lado da Exception;

Right = sem erro;

### Testes
Ajuda a encontrar limites na arquitetura.

Obs: não pode ter dois expect num mesmo test.


### Prática Prática TDD
Primeiro escreve os testes e depois escreve o código de produção - primeiro escreve o teste e ele falha,logo em seguida escrever o código de produção e faz o teste passar e depois refatorar


# Observações:
Essas anotação foram retiradas do Curso Arquitetura no Flutter Deivid Willyan | Flutter:

https://youtu.be/LwOACmXcNQ8?list=PLRpTFz5_57cvCYRhHUui2Bis-5Ybh78TS




  



