UPDATE d SET razorCost = cost / packsize;

SELECT * from d WHERE razorCost IS NOT NULL ORDER BY razorCost;
