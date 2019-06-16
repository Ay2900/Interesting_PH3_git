const express = require('express');
const router = express.Router();

const homepageController = require("../controller/homepageController");

router.get('/mytest', function (req, resp) {
    resp.render('common/sample', {})
});

router.get('/home',homepageController.getGoods);

module.exports = router;