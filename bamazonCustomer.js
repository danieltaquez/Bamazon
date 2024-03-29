var inquirer = require ('inquirer')
var mysql = require('mysql')

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

    function placeOrder() {
        inquirer.prompt([{
            name: 'itemID',
            message: 'Please enter item ID number',
            validate: function(value){
                var valid = value.match(/^[0-9]+$/)
                if(valid){
                    return true
                }
                    return 'Please enter a valid item ID'
            }
    },{
            name:'selectQuantity',
            message: 'How many would you like to order?',
            validate: function(value){
                var valid = value.match(/^[0-9]+$/)
                if(valid){
                    return true
                }
                    return 'Please enter a value'
        }
    }]).then(function(answer){
        connection.query('SELECT * FROM products WHERE id = ?' , [answer.selectId], function(err,res){
            if(answer.selectQuantity > res[0].StockQuantity){
                console.log('Insufficient Quantity');
                console.log('This order has been cancelled');
                console.log('');
                newOrder();
        }
        else{
            amountOwed = res[0].Price * answer.selectQuantity;
			currentDepartment = res[0].departmentName;
			console.log('Thanks for your order');
			console.log('You owe $' + amountOwed);
            console.log('');
            
			connection.query('UPDATE products SET ? Where ?', [{
				StockQuantity: res[0].StockQuantity - answer.selectQuantity
			},{
				id: answer.selectId
            }], function(err, res){});
            
			logSaleToDepartment();
			newOrder();
        }
    })
},function(err,res){})
};

function newOrder(){
	inquirer.prompt([{
		type: 'confirm',
		name: 'choice',
		message: 'Would you like to place another order?'
	}]).then(function(answer){
		if(answer.choice){
			placeOrder();
		}
		else{
			console.log('Thank you for shopping at Bamazon!');
			connection.end();
		}
	})
};

function logSaleToDepartment(){
	connection.query('SELECT * FROM departments WHERE DepartmentName = ?', [currentDepartment], function(err, res){
		updateSales = res[0].TotalSales + amountOwed;
		updateDepartmentTable();
	})
};
function updateDepartmentTable(){
    connection.query('UPDATE departments SET ? WHERE ?', [{
    TotalSales: updateSales
},{
    DepartmentName: currentDepartment
}], function(err, res){});
};
showProducts();
