SELECT MONTH(START_DATE) AS MONTH, CAR_ID, COUNT(*) AS RECORDS -- 해당 기간 동안의 월별 자동차 ID 별 총 대여 횟수
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
WHERE DATE_FORMAT(START_DATE, '%Y-%m') BETWEEN '2022-08' AND '2022-10' -- 서브쿼리에만 날짜 조건을 붙일 시, 만약 8~10월 사이에 5건 이상이 존재하고 7월에도 대여건이 존재한다면 결과값에 7월도 포함된다.
AND CAR_ID IN (SELECT CAR_ID -- 2022년 8월부터 10월까지 총 대여 횟수가 5회 이상인 자동차들 : 1, 2
                FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
                WHERE DATE_FORMAT(START_DATE, '%Y-%m') BETWEEN '2022-08' AND '2022-10'
                GROUP BY CAR_ID
                HAVING COUNT(*) >= 5)
GROUP BY CAR_ID, MONTH
ORDER BY MONTH ASC, CAR_ID DESC;
