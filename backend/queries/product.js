const db = require("../db/dbConfig.js");

const getAllProduct = async () => {
    try {
        const allProduct = await db.any("SELECT * FROM product;");
        return allProduct;
    } catch (err) {
        return err;
    }
};

const createProduct = async (product) => {
    try {
        const newProduct = await db.one(
            "INSERT INTO product (name, price, description, weight) VALUES($1, $2, $3, $4) RETURNING *",
            [product.name, product.price, product.description, product.weight]
            );
        return newProduct;
    } catch (err) {
        return err;
    }
};

const deleteProduct = async (id) => {
    try {
        const deletedProduct = await db.one(
            "DELETE FROM product WHERE id=$1 RETURNING *", id
        );
        return deletedProduct;
    } catch (err) {
        return err;
    }
};

const updateProduct = async (id, product) => {
    try {
        const updatedProduct = await db.one(
            "UPDATE product SET name=$1, price=$2, description=$3, weight=$4 WHERE product_id=$5 RETURNING *",
            [product.name, product.price, product.description, product.weight, id]
        );
        return updatedProduct;
    } catch (err) {
        return err;
    }
};

module.exports = {
    getAllProduct,
    createProduct,
    deleteProduct,
    updateProduct
};