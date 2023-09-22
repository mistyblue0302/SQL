-- MAX를 통해 대여 기간 내에 있는지 여부를 확인하여 값이 1이나와 참이면 대여중, 거짓이면 대여 가능

SELECT CAR_ID, IF(MAX('2022-10-16' BETWEEN START_DATE AND END_DATE) = 1, '대여중', '대여 가능') AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
ORDER BY CAR_ID DESC;
