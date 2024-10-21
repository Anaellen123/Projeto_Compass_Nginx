
FUNCTION_OFF() {
	
	while true; do

        	if ! service nginx status > /dev/null 2>&1; then

                	 echo "$(date +'%y-%m-%d %H:%M:%S') - O SERVIÇO NGINX ESTÁ OFFLINE"
        	else

                	echo "O serviço não está offline, retorne e chame pelo serviço myarqui_ON.sh"
			echo ""
			echo "### Bem vindo de volta ####"
			echo ""
			source myarqui_nginx.sh
			FUNCTION_STATUS
                	
        	fi

        	sleep 300
	done
}
