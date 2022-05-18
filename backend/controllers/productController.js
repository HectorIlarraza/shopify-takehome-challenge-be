const express = require("express");
const product = express.Router();
const {getAllProduct, createProduct, deleteProduct, updateProduct} = require("../queries/product.js");

product.get("/", async (req, res) => {
    try {
        const allProducts = await getAllProduct();
        res.status(200).json(allProducts);
    } catch (err) {
        res.status(404).json({error: err});
    }
});

product.post("/", async (req, res) => {
    const { body } = req;
    try {
        const newProducts = await createProduct(body);
        if(newProducts.id){
            res.status(200).json(newProducts);
        }else{
            res.status(500).json({error: "Product creation error"});
        }
    } catch (err) {
        res.status(404).send("Post failed");
    }
});

product.delete("/:id", async (req, res) => {
    const { id }  = req.params;
    try {
        const deletedProducts = await deleteProduct(id);
        res.status(200).json(deletedProducts);
    } catch (err) {
        res.status(404).json({error: "Product not found"});
    }
});

product.put("/:id", async (req, res) => {
    const { id }  = req.params;
    const { body } = req;
    try {
        const updatedProducts = await updateProduct(id, body);
        res.status(200).json(updatedProducts);
    } catch (err) {
        res.status(404).json({error: "Product not found"});
    }
});

module.exports = product;