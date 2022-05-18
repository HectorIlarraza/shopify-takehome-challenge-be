\c inventory_dev;

INSERT INTO inventory (stock_available) VALUES
(true),
(true),
(false),
(false),
(true);

INSERT INTO product (product_id, name, price, description, weight) VALUES
('1', 'Heated Jacket', 200, 'A heated jacket  with tailored design and breathable fabric. Water and wind resistant exterior ensures you keep warm and dry in unpredicted weather conditions.', 11),
('2', 'Fresh Beef Brisket Special Trimmed', 50, 'HEB beef brisket has a superior level of fat marbling and flavor. Brisket can be slow cooked, barbecued, oven roasted, and more!', 9),
('4', 'Henckels Dynamic Knife Block Set', 136, 'Henckels makes essential kitchen knives that home chefs reach for everyday!', 14),
('3', 'SAMSUNG 75" Class The Terrace Outdoor QLED 4K Smart TV with HDR', 5345, 'With The Terrace, gather around an outdoor TV designed to look incredibly vivid and bright, even in daylight.', 130),
('5', 'MLB The Show 21 Standard Edition - PlayStation 4', 8, 'This is the all new MLB® The Show™', 3);

INSERT INTO store (store_id, name, address) VALUES
('5', 'Best Buy', '19000 Limestone Commercial Dr, Pflugerville, TX 78660'),
('4', 'Target', '121 Louis Henna Blvd, Round Rock, TX 78664'),
('2', 'H.E.B', '9414 N Lamar Blvd, Austin, TX 78753'),
('3', 'Walmart', '2701 S I-35 Frontage Rd, Round Rock, TX 78664'),
('1', 'Home Depot', '600 U.S. 79 W, Hutto, TX 78634');