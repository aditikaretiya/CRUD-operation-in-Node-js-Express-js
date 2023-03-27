var express = require('express');
var router = express.Router();
var mysql      = require('mysql');
var connection = mysql.createConnection({
  host     : 'localhost',
  user     : 'root',
  password : '',
  database : 'mydb1',
});

connection.connect(function (err) {
  if (err) {
    console.log("Error connecting to Database" + err);
  } else {
    console.log("Connection established");
  }
});

/* GET home page. */
router.get('/', function(req, res, next) {
  res.render('index', { title: 'Express' });
});



router.get('/add-user', function(req, res, next) {
  res.render('add-user');
});

router.get('/user-add', function(req, res, next) {
  res.render('add-user');
});

router.get('/user-view', function(req, res, next) {
  connection.query("select * from tbl_user", function (err, result) {
    if (err) return err;
    console.log(result);
    res.render('view-user', { mydata:result });
  })
});

router.post('/userprocess', function(req, res, next) {
  var a = req.body.txt1;
  var b = req.body.txt2;
  var c = req.body.txt3;
  var d = req.body.txt4;
  var e = req.body.txt5;
 
  connection.query("insert into tbl_user(user_name,user_gender,user_email,user_password,user_mobile) values(?,?,?,?,?)", [a, b, c, d, e], function (err, result) {
    if (err) return err;
    console.log("Record Inserted");
    res.redirect('/user-add');
  })
});

router.get('/user-delete/:id', function (req, res, next) {
  var id = req.params.id;
  console.log(id);
  connection.query("delete from tbl_user where user_id= ?",[id], function (err, result) {
    if (err) return err;
    res.redirect('/user-view');
  })
});

router.get('/user-edit/:id', function (req, res, next) {
  var id = req.params.id;
  console.log(id);
  connection.query("select * from tbl_user where user_id= ?",[id], function (err, result) {
    if (err) return err;
    console.log(result);
    res.render('edit-user',{mydata:result});
  })
});

router.post('/user-updateprocess/:id', function (req, res, next) {
  var id = req.params.id;
  var txt1 = req.body.txt1;
  var txt2 = req.body.txt2;
  var txt3 = req.body.txt3;
  var txt4 = req.body.txt4;
  var txt5 = req.body.txt5;
  
  console.log(id);
  connection.query("update tbl_user set user_name = ?,user_gender = ?,user_email = ?,user_password = ?,user_mobile = ? where user_id= ?",[txt1,txt2,txt3,txt4,txt5,id], function (err, result) {
    if (err) return err;
    console.log(result);
    res.redirect('/user-view');
  })
});

router.get('/add-product', function(req, res, next) {
  res.render('add-product');
});

router.get('/pro-add', function(req, res, next) {
  res.render('add-product');
});

router.get('/pro-view', function(req, res, next) {
  connection.query("select * from tbl_product", function (err, result) {
    if (err) return err;
    console.log(result);
    res.render('view-product', { mydata:result });
  })
});

router.post('/productprocess', function(req, res, next) {
  var a = req.body.txt1;
  var b = req.body.txt2;
  var c = req.body.txt3;
  var d = req.body.txt4;
  
  connection.query("insert into tbl_product(pro_name,pro_details,pro_price,pro_image) values(?,?,?,?)", [a, b, c, d], function (err, result) {
    if (err) return err;
    console.log("Record Inserted");
    res.redirect('/pro-add');
  })
});

router.get('/pro-delete/:id', function (req, res, next) {
  var id = req.params.id;
  console.log(id);
  connection.query("delete from tbl_product where pro_id= ?",[id], function (err, result) {
    if (err) return err;
    res.redirect('/pro-view');
  })
});

router.get('/pro-edit/:id', function (req, res, next) {
  var id = req.params.id;
  console.log(id);
  connection.query("select * from tbl_product where pro_id= ?",[id], function (err, result) {
    if (err) return err;
    console.log(result);
    res.render('edit-product',{mydata:result});
  })
});

router.post('/pro-updateprocess/:id', function (req, res, next) {
  var id = req.params.id;
  var txt1 = req.body.txt1;
  var txt2 = req.body.txt2;
  var txt3 = req.body.txt3;
  var txt4 = req.body.txt4;
 
  console.log(id);
  connection.query("update tbl_product set pro_name = ?,pro_details = ?,pro_price = ?,pro_image = ? where pro_id= ?",[txt1,txt2,txt3,txt4,id], function (err, result) {
    if (err) return err;
    console.log(result);
    res.redirect('/pro-view');
  })
});

router.get('/add-category', function(req, res, next) {
  res.render('add-category');
});

router.get('/cg-add', function(req, res, next) {
  res.render('add-category');
});

router.get('/cg-view', function(req, res, next) {
  connection.query("select * from tbl_category", function (err, result) {
    if (err) return err;
    console.log(result);
    res.render('view-category', { mydata:result });
  })
});

router.post('/categoryprocess', function(req, res, next) {
  var a = req.body.txt1;

  connection.query("insert into tbl_category(cg_name) values(?)", [a], function (err, result) {
    if (err) return err;
    console.log("Record Inserted");
    res.redirect('/cg-add');
  })
});

router.get('/cg-delete/:id', function (req, res, next) {
  var id = req.params.id;
  console.log(id);
  connection.query("delete from tbl_category where cg_id= ?",[id], function (err, result) {
    if (err) return err;
    res.redirect('/cg-view');
  })
});

router.get('/cg-edit/:id', function (req, res, next) {
  var id = req.params.id;
  console.log(id);
  connection.query("select * from tbl_category where cg_id= ?",[id], function (err, result) {
    if (err) return err;
    console.log(result);
    res.render('edit-category',{mydata:result});
  })
});

router.post('/cg-updateprocess/:id', function (req, res, next) {
  var id = req.params.id;
  var txt1 = req.body.txt1;
  console.log(id);
  connection.query("update tbl_category set cg_name = ? where cg_id= ?",[txt1,id], function (err, result) {
    if (err) return err;
    console.log(result);
    res.redirect('/cg-view');
  })
});

router.get('/add-subcategory', function(req, res, next) {
  res.render('add-subcategory');
});

router.get('/subcg-add', function(req, res, next) {
  res.render('add-subcategory');
});

router.get('/subcg-view', function(req, res, next) {
  connection.query("select * from tbl_subcategory", function (err, result) {
    if (err) return err;
    console.log(result);
    res.render('view-subcategory', { mydata:result });
  })
});

router.post('/subcategoryprocess', function(req, res, next) {
  var a = req.body.txt1;
  var b = req.body.txt2;
  
  connection.query("insert into tbl_subcategory(subcg_name,subcg_categoryid) values(?,?)", [a,b], function (err, result) {
    if (err) return err;
    console.log("Record Inserted");
    res.redirect('/subcg-add');
  })
});

router.get('/subcg-delete/:id', function (req, res, next) {
  var id = req.params.id;
  console.log(id);
  connection.query("delete from tbl_subcategory where subcg_id= ?",[id], function (err, result) {
    if (err) return err;
    res.redirect('/subcg-view');
  })
});

router.get('/subcg-edit/:id', function (req, res, next) {
  var id = req.params.id;
  console.log(id);
  connection.query("select * from tbl_subcategory where subcg_id= ?",[id], function (err, result) {
    if (err) return err;
    console.log(result);
    res.render('edit-subcategory',{mydata:result});
  })
});

router.post('/subcg-updateprocess/:id', function (req, res, next) {
  var id = req.params.id;
  var txt1 = req.body.txt1;
  var txt2 = req.body.txt2;
  console.log(id);
  connection.query("update tbl_subcategory set subcg_name = ?, subcg_categoryid = ? where subcg_id= ?",[txt1,txt2,id], function (err, result) {
    if (err) return err;
    console.log(result);
    res.redirect('/subcg-view');
  })
});


module.exports = router;
