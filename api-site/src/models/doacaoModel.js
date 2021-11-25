var database = require("../database/config")


function cadastar_doar_agora(valor_doacao, tipo_doacao, instituicao_doacao, data_doacao, total_doacao, idUsuario) {
    console.log("ACESSEI O DOACAO MODEL \n \n\t\t >> Se aqui der erro de 'Error: connect ECONNREFUSED',\n \t\t >> verifique suas credenciais de acesso ao banco\n \t\t >> e se o servidor de seu BD está rodando corretamente. \n\n function cadastrar():");
    var instrucao = `
        INSERT INTO tb_doacao (valor_doacao, tipo_doacao, instituicao_doacao, data_doacao,  total_doacao, fk_usuario) VALUES ('${valor_doacao}', '${tipo_doacao}', '${instituicao_doacao}', now() ,'${total_doacao}', '${idUsuario}');
    `;
    console.log("Executando a instrução SQL: \n" + instrucao);
    return database.executar(instrucao);
}

module.exports = {
    cadastar_doar_agora,
}; 