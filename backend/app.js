const express = require("express");
const cors = require("cors");

const productController = require("./controllers/productController.js");

const app = express();

app.use(cors());
app.use(express.json());

app.use("/product", productController);

app.get("/", (req, res) = res.status(200).send("Take Home Shopify Challenge"));
app.get("*", (req, res) => res.status(404).send("Page not found"));

module.exports = app;