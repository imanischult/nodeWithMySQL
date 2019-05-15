// Then create a Node application called bamazonCustomer.js. Running this application will first display all of the items available for sale. Include the ids, names, and prices of products for sale.

const mysql = require('mysql');
const inquirer = require('inquirer')

const connection = mysql.createConnection({
    host: "localhost",

    // Your port, if not 3306.
    post: 3306,

    // Your username
    user: "root",

    // Your password
    password: "",
    database: "bamazon_db",
});

connection.connect(function(err){
    if (err) throw err;
    console.log("connected as ID " + connection.threadId);
    afterConnection();
    connection.end();
});

function afterConnection() {
    connection.query("SELECT * FROM products", function(err,res){
        if (err) throw err;

        for (let i = 0; i < res.length; i++) {

            let inventory = res[i]
            console.log(`
            Item ID: ${inventory.item_id}
            Product: ${inventory.product_name}
            Price: $${inventory.price}
            `);


            // Prompt users with two messages.
            // The first should ask them the ID of the product they would like to buy.
            // The second message should ask how many units of the product they would like to buy.
            inquirer.prompt([
                {
                    name: "productID",
                    message: "What is the ID of the product you would like to purchase?"
                }, {
                    name: "units",
                    message: "How many would you like?"
                }
            ]).then(function(answers) {
                let unitCheck = parseInt(answers.units);

                console.log(unitCheck);
            })
        }
    });
};

// Once the customer has placed the order, your application should check if your store has enough of the product to meet the customer's request.

// If not, the app should log a phrase like Insufficient quantity!, and then prevent the order from going through.



// However, if your store does have enough of the product, you should fulfill the customer's order.

// This means updating the SQL database to reflect the remaining quantity.
// Once the update goes through, show the customer the total cost of their purchase.