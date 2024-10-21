  
FUNCTION_ON() {
	
	STATUS="ONLINE"

	while true; do
		
		if service nginx status > /dev/null 2>&1; then
			
			echo "$(date +'%y-%m-%d %H:%M:%S') - O SERVIÇO NGINX ESTÁ ONLINE"
		else
		
			echo "O serviço deve estar offline, retorne e verifique o arquivo myarqui_OFF.sh"
			echo ""
			echo "### Bem vindo de volta ####"
                        echo ""
                        source myarqui_nginx.sh
                        FUNCTION_STATUS		

		fi
		
		sleep 300
	done
}

