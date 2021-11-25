var express = require("express");
var router = express.Router();

var doacaoController = require("../controllers/doacaoController");

router.get("/", function (req, res) {
    doacaoController.testar(req, res);
});

router.post("/cadastar_doar_agora", function (req, res) {
    doacaoController.cadastar_doar_agora(req, res);
})


module.exports = router;