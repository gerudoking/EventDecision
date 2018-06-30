# EventDecision
Sistema de Decisão Estruturada projetado para o uso da Sala de Situação FS\UnB. O sistema foi planejado seguindo uma metodologia baseada em Ciência do Projeto, e foi feito para disciplina de Sistemas de Informação, do Departamento de Ciência da Computação da Universidade de Brasília, no primeiro semestre de 2018.

## Autores
- Eduardo de Azevedo dos Santos
- Luiz Felipe Carvalho Duarte
- Gabriel Nazareno Halabi

## Dependências
Para instalar todas as dependências necessárias para executar o projeto, siga os passos abaixo dependendo de seu sistema operacional:

## Windows
Instale o seguinte programa

  https://github.com/oneclick/rubyinstaller2/releases/download/rubyinstaller-2.5.1-2/rubyinstaller-2.5.1-2-x64.exe (64-bit)
  https://github.com/oneclick/rubyinstaller2/releases/download/rubyinstaller-2.5.1-2/rubyinstaller-2.5.1-2-x86.exe (32-bit)
  
Durante a instalação, o programa oferecerá algumas opções. Simplesmente aperte ENTER.

Quando terminar, abra uma janela de terminal e digite os seguintes comandos:
```
gem update --system
gem install spreadsheet state_machine
```
## Linux/Ubuntu
Abra uma janela de terminal e digite os seguintes comandos:
```
sudo apt-get install ruby-full
sudo gem update --system
sudo gem install spreadsheet state_machine
```
## Execução do Programa
Para utilizar o programa, baixe-o e descompacte-o em algum lugar de fácil acesso. Então, abra uma janela de terminal e navegue até entrar na pasta "EventDecision-master". Então, digite o comando
```
rake
```
e o programa começará.

## Estrutura do Projeto
```
bin/    #Arquivos binários
data/   #A planilha que o programa lê e escreve deve ficar nesta pasta
doc/    #Documentação sobre o programa
lib/    #As classes devem estar nessa pasta
tests/  #Testes unitários para o programa
```
