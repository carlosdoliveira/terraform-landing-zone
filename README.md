# Scripts
## Sumário
 - [Pré-Requisitos](#Pré-Requisitos)
 - [Como usar este repositório](#como-usar-este-repositório)
 - [clonando o repositório](#clonando-o-repositório)
 - [Realizando commit e push](#realizando-commit-e-push)
 - [Contato](#Contato)
 - [Change Log](#Change-log)

----

O intuito deste repositório é apresentar um cenário de landing zone para intuito de estudo. 

### Pré-Requisitos
Para usar este repositório você deve obrigatoriamente:
 - Usar o Azure CLI ou Azure Cloud Shell
 - Instalar o Terraform no seu computador (não é necessário se for usar o Azure Cloud Shell)

[Retornar ao topo](#Sumário) 

----------


### Como usar este repositório
Vai adicionar um novo script, ou quer testar algo que encontrou? **Crie uma branch**. Você não perde o que já existe no *master* e se der algum problema é só para sua branch e criar uma branch nova. Simples.
No arquivo [main.tf](main.tf) você encontrará as definições da infraestrutura. Sinta-se à vontade para visitar o documento e validar todas as configurações.

**Importante**: Você deve alterar o `subscription_id` no começo do script para a assinatura que você deseja gerenciar. 

``` Terraform
provider "azurerm" {
  # The "feature" block is required for AzureRM provider 2.x.
  # If you are using version 1.x, the "features" block is not allowed.
  version = "~>2.2.0"
  features {}
  subscription_id = "507ed790-fcc7-4baf-bf06-ccbeb13db805"
}
``` 
[Retornar ao topo](#Sumário) 

----------


### Clonando o repositório
Super simples, basta seguir o comando abaixo: 

```
git clone https://github.com/cdanieloliveira/terraform-landing-zone.git
```
[Retornar ao topo](#Sumário) 

----------


### Realizando commit e push
Tenha certeza de que você tenha editado os arquivos que quer fazer upload
```git
git add .
git commit -m "mensagem de commit"
git push -u origin master
```

**Dica**: use nomes fáceis para identificar sua branch, por exemplo: powershell/office365 ou teste/fulano porque desta forma, fica muito mais organizado e fácil na hora de trabalhar. 

[Retornar ao topo](#Sumário) 

----------

### Contato

Tem alguma dica de como melhorar este repositório? Me manda um oi!
[carlos.oliveira@cloudsquad.com.br](mailto:carlos.oliveira@cloudsquad.com.br)

[Retornar ao topo](#Sumário) 

# Change Log
[Retornar ao topo](#Sumário) 

## [1.0.0] - 2020-03-25 
### Added
 - main.tf
 - variables.tf
 - outputs.tf (ainda em desenvolvimento)
### Changed
### Fixed

[Retornar ao topo](#Sumário) 
