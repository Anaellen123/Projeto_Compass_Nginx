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
- 2 Click em Programas
- 3 click em ativar ou desativar recursos
- 4 Na aba em qu aparecer terá que aparecer terá uma lista onde contám um arquivo chamado - subsistema do windows para linux -, ativa essa opção e click no OK
- 5 Reinicie o computador

### Instalando o Ubuntu (sistema linux)
- 1 Vá na loja do computador o Microsoft Store e pesquise por Ubuntu.
- 2 Procure pela versão atualizada e baixe.
- 3 click no botão iniciar mostrada na tela do seu pc e pesquise pelo app já instalado do Ubuntu.
- 4 click no app Ubuntu, ele abrirá um terminal onde pedira para cadastrar um nome de usúario e uma senha.
- 5 Pronto, Sistema linux instalado.

## O que é o NGINX?
NGINX é um servidor web de código aberto conhecido por sua alta performance e eficiência. Ele pode ser usado como servidor HTTP, proxy reverso, balanceador de carga e proxy de e-mail, ajudando a gerenciar tráfego, escalabilidade e segurança de aplicações web.

# Script de monitoramento NGINX

