#!/usr/bin/env bash
#
function main(){
        change_html
	git_upgrade
}

function request_api(){
        local _value=$(curl -X GET https://servicodados.ibge.gov.br/api/v1/projecoes/populacao/BR | jq '.projecao>
        echo $_value
}

function change_html(){
        readonly local _file=~/Odin-Hat/html/proj-br/index.html
        readonly local _value=$(request_api)
        readonly local _commad_sed=$(sed -i 's/[0-9]\{3,\}/'"$_value"'/g' $_file)
}
 function git_update(){
	cd ~/Odin-Hat/html/done/
	git add .
	git commit -m "altera index html com atualizacao de api"
	git push
	termux-toast -c green "Site atualizado: $(request_api)"
}
main
