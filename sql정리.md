# JOIN의 종류

![img](https://github.com/dilmah0203/TIL/blob/main/Image/sql1.png)

# INNER JOIN

- 조인될 조건이 부합하는 행만을 가지고 오는 것
- 교집합(겹치는 컬럼이 존재하는 경우에만 사용 가능하다)

![img2](https://github.com/dilmah0203/TIL/blob/main/Image/sql2.png)

사원테이블과 직책 테이블에서 INNER JOIN을 수행하려면 두 테이블의 관계를 연결해주는 연결고리가 필요하다. 여기서 공통적으로 들어 있는 직책 번호를 통해 JOIN이 가능하다.

```sql
SELECT *  
FROM 사원 
INNER JOIN 직책 ON 사원.직책번호 = 직책.직책번호; 
```

![img3](https://github.com/dilmah0203/TIL/blob/main/Image/sql3.png)

# OUTER JOIN

![img4](https://github.com/dilmah0203/TIL/blob/main/Image/sql4.png)

- 두 테이블 간의 교집합이 되는 데이터뿐만 아닌, **해당되지 않는 값까지** 가져온다.
- **기준이 되는 테이블이 필요**하다.
- 기준이 되는 테이블의 모든 정보는 가져오고, 기준이 아닌 테이블은 JOIN 조건이 일치하지 않아도 가져온다.

## LEFT OUTER JOIN

![img5](https://github.com/dilmah0203/TIL/blob/main/Image/sql5.png)

- 기준 테이블을 왼쪽에 두고 OUTER JOIN을 수행
- 기준 테이블은 변형이 없고, 대상이 되는 테이블만 변형

```sql
SELECT *
FROM A
LEFT OUTER JOIN B ON A.학번 = B.학번
```

![img6](https://github.com/dilmah0203/TIL/blob/main/Image/sql6.png)

기존 테이블에 학번이라는 연결고리를 가지고 B 테이블이 붙는다. 10, 21, 99학번은 B 테이블에 존재하지 않기 때문에 아이디와 동아리 값이 없다. 그렇기 때문에 NULL이라는 빈 값으로 채워진다.

## RIGHT OUTER JOIN

![img7](https://github.com/dilmah0203/TIL/blob/main/Image/sql5.png)

- 기준 테이블을 오른쪽에 두고 OUTER JOIN을 수행
- 기준 테이블은 변형이 없고, 대상이 되는 테이블만 변형

```sql
SELECT *
FROM A
RIGHT OUTER JOIN B ON A.학번 = B.학번
```

![img8](https://github.com/dilmah0203/TIL/blob/main/Image/sql7.png)

B 테이블이 기준이기 때문에 모두 가져오고 학번으로 연결한다. A 테이블은 11, 13, 14 학번이 없기 때문에 나이와 성별, 이름이 모두 NULL이 된다.

## FULL OUTER JOIN

- 왼쪽과 오른쪽 테이블의 모든 데이터를 읽어 결과를 생성
- LEFT OUTER JOIN과 RIGHT OUTER JOIN의 결과를 합한 결과

```sql
SELECT *
FROM A
FULL OUTER JOIN B ON A.학번 = B.학번
```

![img9](https://github.com/dilmah0203/TIL/blob/main/Image/sql8.png)

A 테이블과 B 테이블 모두 들어가게 되고, NULL 값까지 표현되어 들어간다.
