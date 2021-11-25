var doacaoModel = require("../models/doacaoModel");

var sessoes = [];

function testar(req, res) {
    console.log("ENTRAMOS NA doacaoController");
    res.json("ESTAMOS FUNCIONANDO!");
}

function cadastar_doar_agora(req, res) {
    var valor = req.body.valorServer;
    var tipo_doacao = req.body.tipo_doacaoServer;
    var instituicao = req.body.instituicaoServer;
    var ax_total = req.body.ax_totalServer;
    var idUsuario = req.body.idUsuarioServer;

    console.log('ax_total',ax_total)


    if (valor == undefined) {
        res.status(400).send("Seu valor está undefined!");
    } 
    else if (tipo_doacao == undefined) {
        res.status(400).send("Seu tipo_doacao está undefined!");
    } 
    else if (ax_total == undefined) {
        res.status(400).send("Seu ax_total está undefined!");
    }
    else if (instituicao == undefined) {
        res.status(400).send("Sua instituicao está undefined!");
    } 
    else {
        // valor_doacao, tipo_doacao, instituicao_doacao, data_doacao, total_doacao, idUsuari
        doacaoModel.cadastar_doar_agora(valor, tipo_doacao, instituicao, null, ax_total, idUsuario)
            .then(
                function (resultado) {
                    res.json(resultado);
                }
            ).catch(
                function (erro) {
                    console.log(erro);
                    console.log(
                        "\nHouve um erro ao realizar o cadastro! Erro: ",
                        erro.sqlMessage
                    );
                    res.status(500).json(erro.sqlMessage);
                }
            );
    }
}

module.exports = {
    cadastar_doar_agora,
    testar
}