var database = require("../database/config")


function dashboard() {
    console.log("ACESSEI O USUARIO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function dashboard()");
    var dados = `
    select sum(total_doacao) as contagem, data_doacao, month(data_doacao)  as mes from tb_doacao group by month(data_doacao);    `;
    console.log("Executando a instrução SQL: \n" + dados);
    return database.executar(dados);

}

module.exports = {
    dashboard
};