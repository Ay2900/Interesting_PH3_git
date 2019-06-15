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
        let userId = 1;
        // let userId = request.session.username;
        personModel.traverseAddress([userId], function (err, data) {
            if (!err) {
                response.render("FYK/address", {addressData: data});
                console.log(data);
            } else {
                response.send(err.message);
            }
        })
    }
};

module.exports = personController;