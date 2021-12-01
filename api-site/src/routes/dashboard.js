var express = require("express");
var router = express.Router();

var dashboardController = require("../controllers/dashboardController");

router.get("/", function (req, res) {
    dashboardController.testar(req, res);
});

router.get("/listar", function (req, res) {
    dashboardController.listar(req, res);
})


module.exports = router;