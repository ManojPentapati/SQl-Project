USE AMAZON;
SELECT * FROM AMAZON_DATA;
SELECT COUNT(*) FROM AMAZON_DATA;
-- QUERY-1
-- List all products with a discounted price below ₹500.
SELECT product_name,discounted_price FROM AMAZON_DATA WHERE discounted_price < 500;
-- QUERY-2
-- Find products with a discount percentage of 50% or more.
SELECT product_id, product_name, discount_percentage FROM AMAZON_DATA WHERE CAST(discount_percentage AS UNSIGNED) >= 50;
-- QUERY-3
-- Retrieve all products where the name contains the word "Cable."
SELECT product_id,product_name FROM AMAZON_DATA WHERE product_name 	LIKE '%Cable%';
-- --QUERY-4 
-- Display the difference between the average of the actual price and the discounted price for each ‘Category’.
SELECT category, AVG(discounted_price) - AVG(actual_price) AS 'price after Discount' FROM AMAZON_DATA GROUP BY category;
-- QUERY-5
-- Query reviews that mention "fast charging" in their content.
SELECT product_id,product_name,review_content FROM AMAZON_DATA WHERE review_content LIKE '%fast charging%';
-- QUERY-6
-- Identify products with a discount percentage between 20% and 40%
SELECT product_id,product_name,discount_percentage FROM AMAZON_DATA WHERE discount_percentage between 20 and 40;	
-- QUERY-7
-- Find products that have an actual price above ₹1,000 and are rated 4 stars or above.
SELECT product_id,product_name FROM AMAZON_DATA WHERE actual_price>=1000 AND rated>=4;
-- QUERY-8
-- Display review contents that contains words like worst, waste, poor, or not good
SELECT product_id,product_name,review_content FROM AMAZON_DATA WHERE review_content LIKE '%worst%'or review_content LIKE '%poor' or review_content LIKE '%not good%';
-- QUERY-9
-- List all products where the category includes "Accessories."
SELECT product_id,product_name,category FROM AMAZON_DATA WHERE category LIKE '%Accessories%';
-- --QUERY-10
-- Find The products where the discounted price ends with 9
SELECT product_id,product_name,discounted_price FROM AMAZON_DATA WHERE discounted_price like '%9';
-- QUERY-11
-- Find all customers who have placed at least one order.
SELECT DISTINCT user_id,user_name FROM AMAZON_DATA;
-- QUERY-12
-- Find the total number of reviews for each product.
SELECT product_id,product_name, count(review_content) AS total_reviews FROM AMAZON_DATA GROUP BY product_id,product_name;
-- QUERY-13
-- Find the total number of products available in each category.
SELECT category,COUNT(product_id) FROM AMAZON_DATA GROUP BY category;
-- QUERY-14
-- Retrieve the top 5 highest-rated products.
SELECT product_id,product_name,rating FROM AMAZON_DATA ORDER BY rating DESC LIMIT 5;
-- QUERY-15
-- List all users who have written a review.
SELECT user_id,user_name,review_content FROM AMAZON_DATA WHERE review_content != 'None';