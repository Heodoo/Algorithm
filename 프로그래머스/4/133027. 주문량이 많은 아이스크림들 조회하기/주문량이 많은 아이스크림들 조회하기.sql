-- 코드를 입력하세요
SELECT FLAVOR FROM FIRST_HALF A join JULY B
USING (FLAVOR)
GROUP BY FLAVOR
ORDER BY SUM(A.TOTAL_ORDER + B.TOTAL_ORDER) desc
LIMIT 3