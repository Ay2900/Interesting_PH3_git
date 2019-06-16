const personModel = require("../dao/personCenter_dao");
const personController = {
    getUser(request, response) {
        let userId = request.session.username;
        personModel.inquireUser([userId], function (err, data) {
            if (!err) {
                console.log(data[0].user_icon_path);
                response.render("FYK/me", {userData: data});
            } else {
                response.send(err.message);
            }
        })
    },
    getUserAddress(requset, response) {
        // let userId = 1;
        let userId = request.session.username;
        personModel.traverseAddress([userId], function (err, data) {
            if (!err) {
                response.render("FYK/address", {addressData: data});
                // console.log(data);
            } else {
                response.send(err.message);
            }
        })
    },
    deleteUserAddress(requset, response) {
        let addrId = request.query.id;
        console.log(addrId);
        personModel.deleteAddress([addrId], function (err, data) {
            if (!err) {
                response.render("FYK/address", {addressData: data});
                // console.log(data);
            } else {
                response.send(err.message);
            }
        })
    },
    getUserCollect(requset, response) {
        let userId = request.session.username;console.log(userId);
        personModel.getCollect([userId], function (err, data) {
            if (!err) {
                response.render("FYK/collect", {SKU: SKUdata,SKUimg: IMGdata});
                // console.log(data);
            } else {
                response.send(err.message);
            }
        })
    },
    getUserProfile(request, response) {
        let userId = request.session.username;
        personModel.inquireUser([userId], function (err, data) {
            if (!err) {
                response.render("FYK/editinfo", {userData: data});
            } else {
                response.send(err.message);
            }
        })
    },
};

module.exports = personController;