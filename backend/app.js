const express = require("express");
const cors = require("cors");

const inventoryController = require("");

const app = express();

app.use(cors());
app.use(express.json());

app.use("", inventoryController);


app.get("/", (req, res) = res.status(200).send("Take Home Shopify Challenge"));
app.get("*", (req, res) => res.status(404).send("Page not found"));

module.exports = app;