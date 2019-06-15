const dbpool = require("../config/dbpoolconfig");
const personModel = {
    inquireUser(params, callback) {
        dbpool.connect("select * from user_profile_table where user_id=?",
            params,
            (err, data) => {
                callback(err, data)
            })
    },
    traverseAddress(params, callback) {
        dbpool.connect("select * from user_addr_table where user_id=?",
            params,
            (err, data) => {
                console.log(data);
                callback(err, data)
            })
    }
};

module.exports = personModel;