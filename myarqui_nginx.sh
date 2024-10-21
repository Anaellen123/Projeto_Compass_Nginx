
DIRECTORIO="/nginx_logs/arqui_nginx"



if service nginx status > /dev/null 2>&1; then
    
    MENSAGEM="$(date +'%y-%m-%d %H:%M:%S') - O SERVIÇO NGINX ESTÁ ONLINE."
    echo $MENSAGEM >> "$DIRECTORIO/nginx_online.txt"
    
else
    
    MENSAGEM="$(date +'%y-%m-%d %H:%M:%S') - O SERVIÇO NGINX ESTÁ OFFLINE."
    echo $MENSAGEM >> "$DIRECTORIO/nginx_offline.txt"
    
fi



FUNCTION_STATUS() {

	echo "##### SISTEMA DE VERIFICAÇÃO STATUS NGINX #######"
	echo ""
	echo "######## INFORME QUAL DOS ARQUIVOS STATUS DESEJA VERIFICAR ########"
	echo ""
	echo "## Digite (1) para myarqui_ON.sh ou (2) para  myarqui_OFF.sh ##"
	read -p "## Digite o número## :" numero

	if [ "$numero" ==  "1" ]; then	
        	source myarqui_ON.sh
        	FUNCTION_ON

	else
        	source myarqui_OFF.sh
        	FUNCTION_OFF
	fi
}





FUNCTION_STATUS
