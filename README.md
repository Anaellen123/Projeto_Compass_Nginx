# Monitoring Nginx Status: Monitorando status NGINX

## Introdução
Este projeto foi preparado pelo Programa de Bolsas da Compass UOL, visa monitorar o serviço NGINX em uma máquina Linux a cada 5 minutos, utilizando o WSL. A atividade foi realizada no Ubuntu 22.04, e a instalação será abordada de forma sucinta. O único pré-requisito é ter conhecimentos básicos de Linux.

## Atividade
A tarefa atribuída exige que atualizemos o serviço NGINX a cada 5 minutos, registrando a data, a hora e seu status, que pode ser Online ou Offline, gerando um arquivo  txt correspondente para cada atualização, o resultado de registro será exibido em um diretório especificado.

## Instalação do WSL
### O que é o WSL
O Windows Subsystem for Linux (WSL) é uma ferramenta desenvolvida pela Microsoft que permite a execução de um ambiente Linux diretamente no Windows, sem a necessidade de uma máquina virtual ou dual boot. O WSL proporciona uma integração fluida entre os sistemas, permitindo que os usuários utilizem aplicativos e ferramentas do Linux ao lado dos programas do Windows.Há duas versões do WSL: o WSL 1 e o WSL 2. A segunda versão melhora o desempenho do sistema de arquivos e atualmente é a versão padrão para a instalação de distribuições Linux no Windows.

### Como instalar o WSL em sua máquina Windows
- 1 Vá até o painel de controle do windows.
- 2 Click em Programas.
- 3 click em ativar ou desativar recursos.
- 4 Na aba em qu aparecer terá que aparecer terá uma lista onde contám um arquivo chamado - subsistema do windows para linux -, ativa essa opção e click no OK.
- 5 Reinicie o computador.

### Instalando o Ubuntu (sistema linux)
- 1 Vá na loja do computador o Microsoft Store e pesquise por Ubuntu.
- 2 Procure pela versão atualizada e baixe.
- 3 click no botão iniciar mostrada na tela do seu pc e pesquise pelo app já instalado do Ubuntu.
- 4 click no app Ubuntu, ele abrirá um terminal onde pedira para cadastrar um nome de usúario e uma senha.
- 5 Pronto, Sistema linux instalado.

# Configurando o ambiente
## Atulizando e instalando pacotes
Com o Ubuntu instalado acesse o terminal do ubuntu para realizar a os comandos de atualização do ambiente:

```~$ sudo apt update```

```~$ sudo apt upgrade```

Agora só realizar o comando para instala o nginx:

```~$ sudo apt install nginx```

## O que é o NGINX?
NGINX é um servidor web de código aberto conhecido por sua alta performance e eficiência. Ele pode ser usado como servidor HTTP, proxy reverso, balanceador de carga e proxy de e-mail, ajudando a gerenciar tráfego, escalabilidade e segurança de aplicações web.

# Script de monitoramento NGINX

## verificação do status do NGINX:

O script utiliza o camando ```service nginx status``` para checar se o serviço NGINX está ```online``` ou ```offline```. 

``` if service nginx status > /dev/null 2>&1; then ```

Dependendo do status, ele grava a data e hora da verificação em dois arquivos diferentes:

- Se  estiver online, a mensagem é registrada no arquivo nginx_online.txt.

  ```if service nginx status > /dev/null 2>&1; then```
    
    ```MENSAGEM="$(date +'%y-%m-%d %H:%M:%S') - O SERVIÇO NGINX ESTÁ ONLINE."
    echo $MENSAGEM >> "$DIRECTORIO/nginx_online.txt" 

- Se não estiver online ele estará offline, a mensagem vai para o arquivo nginx_offline.txt.
  
  ```else```
  ```MENSAGEM="$(date +'%y-%m-%d %H:%M:%S') - O SERVIÇO NGINX ESTÁ OFFLINE."
  echo $MENSAGEM >> "$DIRECTORIO/nginx_offline.txt" 
  
  fi
  ```
  
  A variável ```DIRECTORIO="/nginx_logs/arqui_nginx"```define o caminho onde os logs do NGINX serão armazenados no sistema de arquivos. Esse diretório é utilizado para salvar os arquivos de log que indicam o status do serviço NGINX (online ou offline). No contexto do script, ele facilita o gerenciamento dos caminhos de forma centralizada, evitando a repetição do caminho do diretório em várias partes do código.

  ### exemplo :

  - Se o NGINX estiver online, a mensagem será gravada em ```"/nginx_logs/arqui_nginx/nginx_online.txt"```.

  - Se o NGINX estiver offline, a mensagem será gravada em ```"/nginx_logs/arqui_nginx/nginx_offline.txt"```.

 Teste o script executando o seguinte comando:
 
 ```bash myarqui_nginx.sh```
 
 Depois só visualizar o regitro utilizando o comando:
 
 ```cat nginx_online.txt```

```cat nginx_offline.txt```

# Automatizando a verificação

Para não temos que executar o comando bash script.sh manualmente a cada 5 minutos podemos automatizar o processo de forma bem simples. A ferramenta cron possibilita agendar tarefas para serem executadas em horários específicos. Para configurar, basta acessar a tabela do cron usando o crontab, e o comando pode ser rodado de qualquer diretório. Abra o crontab :

```crontab -e```

Após abrir o arquivo do crontab escreva o seguinte script e depois salve o arquivo:

```*/5 * * * * bash  /nginx_logs/arqui_nginx/myarqui_nginx.sh```

Após isso, realize novamente o comando ```bash myarqui_nginx.sh``` e  execute o comando para verificar a atulização em tempo real:

```tail -f nginx_online.txt```


# Versionamento 

Para versionar utilizamos o Git e o GitHub. Com o Git instalado, crie uma pasta em seu GitHub e puxe a chave ssh dessa pasta, faça um git clone <chave copiada> e cópie os arquivos para o arquivo clone criado em seu diretório e então inicie com git init no diretório do projeto, então digite git add . para adicionar os arquivos do diretório, caso precise digite depois git status para verificar se as respectivas pastas foram adicionadas e então faça um git commit -m "Initial commit" e dps um git push.
