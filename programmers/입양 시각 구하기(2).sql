SET @HOUR := -1; -- 변수선언 후 초기값 설정(시간대를 0부터 23까지 증가시키기 위해)

SELECT (@HOUR := @HOUR + 1) AS HOUR, (SELECT 
                                      COUNT(*) 
                                      FROM ANIMAL_OUTS
                                      WHERE HOUR(DATETIME) = @HOUR) AS COUNT
FROM ANIMAL_OUTS
WHERE @HOUR < 23;
