SELECT CATEGORY, SUM(SALES) AS TOTAL_SALES
FROM BOOK
JOIN BOOK_SALES ON BOOK.BOOK_ID = BOOK_SALES.BOOK_ID
WHERE SALES_DATE LIKE '2022-01%'
GROUP BY CATEGORY
ORDER BY CATEGORY ASC;
