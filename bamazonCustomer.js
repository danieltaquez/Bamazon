var inquirer = require ('inquirer')
var mysql = require('sql')

var amountOwed;
var currentDepartment;
var updateSales;

var connection = mysql.createConnection({
    host: 'localhost',
    port: 3306,
    user: 'root',
    password: '',
    database: 'Bamazon_db'
});

connection.connect(function(err){
    if (err) throw err;
    console.log ('connecyed as id: ' + connection.threadID)
})

function showProducts(){
    connection.query('SELECT * FROM products', function (err,res){
        if (err)  throw err;
        console.log('=================================================')
        console.log('=================Items in Store==================');
        console.log('=================================================');
        
        for(i=0;i<res.length;i++){
            console.log('Item ID:' + res[i].id + ' Product Name: ' + res[i].ProductName + ' Price: ' + '$' + res[i].Price + '(Quantity left: ' + res[i].StockQuantity + ')')
        }

        console.log ('=================================================')
        placeOrder();
    })
}