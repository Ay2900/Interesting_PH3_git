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
    },
    deleteAddress(params, callback) {
        dbpool.connect("delete from user_addr_table where addr_id=?",
            params,
            (err, data) => {
                if (!err) {
                    personModel.traverseAddress();
                } else {
                    callback(err, data);
                }
            })
    },
    getCollect(params, callback) {
        dbpool.connect("select * from spu_table where user_id=?",
            params,
            (err, SKUdata) => {
                callback(err, SKUdata)
            });
        dbpool.connect("select * from spu_table where user_id=?",
            params,
            (err, IMGdata) => {
                callback(err, IMGdata)
            })
    },
};

module.exports = personModel;