SELECT
    CASE WHEN 
        (
            CASE WHEN SUBSTR(imei, 14, 1) * 2 > 9
                THEN 
                CAST(SUBSTR(SUBSTR(imei, 14, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 14, 1) * 2,2,1) AS tinyint)
            ELSE CAST(SUBSTR(imei, 14, 1) * 2 AS tinyint) END
            + 
            CAST(SUBSTR(imei, 13, 1) AS tinyint) 
            + 
            CASE WHEN SUBSTR(imei, 12, 1) * 2 > 9
                THEN 
                CAST(SUBSTR(SUBSTR(imei, 12, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 12, 1) * 2,2,1) AS tinyint)
            ELSE CAST(SUBSTR(imei, 12, 1) * 2 AS tinyint) END
            +
            CAST(SUBSTR(imei, 11, 1) AS tinyint)
            +
            CASE WHEN SUBSTR(imei, 10, 1) * 2 > 9
                THEN 
                CAST(SUBSTR(SUBSTR(imei, 10, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 10, 1) * 2,2,1) AS tinyint)
            ELSE CAST(SUBSTR(imei, 10, 1) * 2 AS tinyint) END
            +
            CAST(SUBSTR(imei, 9, 1) AS tinyint) 
            +
            CASE WHEN SUBSTR(imei, 8, 1) * 2 > 9
                THEN 
                CAST(SUBSTR(SUBSTR(imei, 8, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 8, 1) * 2,2,1) AS tinyint)
            ELSE CAST(SUBSTR(imei, 8, 1) * 2 AS tinyint) END
            +
            CAST(SUBSTR(imei, 7, 1) AS tinyint)
            +
            CASE WHEN SUBSTR(imei, 6, 1) * 2 > 9
                THEN 
                CAST(SUBSTR(SUBSTR(imei, 6, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 6, 1) * 2,2,1) AS tinyint)
            ELSE CAST(SUBSTR(imei, 6, 1) * 2 AS tinyint) END
            +
            CAST(SUBSTR(imei, 5, 1) AS tinyint)
            +
            CASE WHEN SUBSTR(imei, 4, 1) * 2 > 9
                THEN 
                CAST(SUBSTR(SUBSTR(imei, 4, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 4, 1) * 2,2,1) AS tinyint)
            ELSE CAST(SUBSTR(imei, 4, 1) * 2 AS tinyint) END
            +
            CAST(SUBSTR(imei, 3, 1) AS tinyint)
            +
            CASE WHEN SUBSTR(imei, 2, 1) * 2 > 9
                THEN 
                CAST(SUBSTR(SUBSTR(imei, 2, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 2, 1) * 2,2,1) AS tinyint)
            ELSE CAST(SUBSTR(imei, 2, 1) * 2 AS tinyint) END
            +
            CAST(SUBSTR(imei, 1, 1) AS tinyint)
        ) % 10 != 0 
        THEN 
            CONCAT(
                SUBSTR(imei, 1, 14),
                10 * CAST((
                    CASE WHEN SUBSTR(imei, 14, 1) * 2 > 9
                        THEN 
                        CAST(SUBSTR(SUBSTR(imei, 14, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 14, 1) * 2,2,1) AS tinyint)
                    ELSE CAST(SUBSTR(imei, 14, 1) * 2 AS tinyint) END
                    + 
                    CAST(SUBSTR(imei, 13, 1) AS tinyint) 
                    + 
                    CASE WHEN SUBSTR(imei, 12, 1) * 2 > 9
                        THEN 
                        CAST(SUBSTR(SUBSTR(imei, 12, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 12, 1) * 2,2,1) AS tinyint)
                    ELSE CAST(SUBSTR(imei, 12, 1) * 2 AS tinyint) END
                    +
                    CAST(SUBSTR(imei, 11, 1) AS tinyint)
                    +
                    CASE WHEN SUBSTR(imei, 10, 1) * 2 > 9
                        THEN 
                        CAST(SUBSTR(SUBSTR(imei, 10, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 10, 1) * 2,2,1) AS tinyint)
                    ELSE CAST(SUBSTR(imei, 10, 1) * 2 AS tinyint) END
                    +
                    CAST(SUBSTR(imei, 9, 1) AS tinyint) 
                    +
                    CASE WHEN SUBSTR(imei, 8, 1) * 2 > 9
                        THEN 
                        CAST(SUBSTR(SUBSTR(imei, 8, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 8, 1) * 2,2,1) AS tinyint)
                    ELSE CAST(SUBSTR(imei, 8, 1) * 2 AS tinyint) END
                    +
                    CAST(SUBSTR(imei, 7, 1) AS tinyint)
                    +
                    CASE WHEN SUBSTR(imei, 6, 1) * 2 > 9
                        THEN 
                        CAST(SUBSTR(SUBSTR(imei, 6, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 6, 1) * 2,2,1) AS tinyint)
                    ELSE CAST(SUBSTR(imei, 6, 1) * 2 AS tinyint) END
                    +
                    CAST(SUBSTR(imei, 5, 1) AS tinyint)
                    +
                    CASE WHEN SUBSTR(imei, 4, 1) * 2 > 9
                        THEN 
                        CAST(SUBSTR(SUBSTR(imei, 4, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 4, 1) * 2,2,1) AS tinyint)
                    ELSE CAST(SUBSTR(imei, 4, 1) * 2 AS tinyint) END
                    +
                    CAST(SUBSTR(imei, 3, 1) AS tinyint)
                    +
                    CASE WHEN SUBSTR(imei, 2, 1) * 2 > 9
                        THEN 
                        CAST(SUBSTR(SUBSTR(imei, 2, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 2, 1) * 2,2,1) AS tinyint)
                    ELSE CAST(SUBSTR(imei, 2, 1) * 2 AS tinyint) END
                    +
                    CAST(SUBSTR(imei, 1, 1) AS tinyint))/10 + 1 AS tinyint)
                - 
                CAST(
                    CASE WHEN SUBSTR(imei, 14, 1) * 2 > 9
                        THEN 
                        CAST(SUBSTR(SUBSTR(imei, 14, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 14, 1) * 2,2,1) AS tinyint)
                    ELSE CAST(SUBSTR(imei, 14, 1) * 2 AS tinyint) END
                    + 
                    CAST(SUBSTR(imei, 13, 1) AS tinyint) 
                    + 
                    CASE WHEN SUBSTR(imei, 12, 1) * 2 > 9
                        THEN 
                        CAST(SUBSTR(SUBSTR(imei, 12, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 12, 1) * 2,2,1) AS tinyint)
                    ELSE CAST(SUBSTR(imei, 12, 1) * 2 AS tinyint) END
                    +
                    CAST(SUBSTR(imei, 11, 1) AS tinyint)
                    +
                    CASE WHEN SUBSTR(imei, 10, 1) * 2 > 9
                        THEN 
                        CAST(SUBSTR(SUBSTR(imei, 10, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 10, 1) * 2,2,1) AS tinyint)
                    ELSE CAST(SUBSTR(imei, 10, 1) * 2 AS tinyint) END
                    +
                    CAST(SUBSTR(imei, 9, 1) AS tinyint) 
                    +
                    CASE WHEN SUBSTR(imei, 8, 1) * 2 > 9
                        THEN 
                        CAST(SUBSTR(SUBSTR(imei, 8, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 8, 1) * 2,2,1) AS tinyint)
                    ELSE CAST(SUBSTR(imei, 8, 1) * 2 AS tinyint) END
                    +
                    CAST(SUBSTR(imei, 7, 1) AS tinyint)
                    +
                    CASE WHEN SUBSTR(imei, 6, 1) * 2 > 9
                        THEN 
                        CAST(SUBSTR(SUBSTR(imei, 6, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 6, 1) * 2,2,1) AS tinyint)
                    ELSE CAST(SUBSTR(imei, 6, 1) * 2 AS tinyint) END
                    +
                    CAST(SUBSTR(imei, 5, 1) AS tinyint)
                    +
                    CASE WHEN SUBSTR(imei, 4, 1) * 2 > 9
                        THEN 
                        CAST(SUBSTR(SUBSTR(imei, 4, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 4, 1) * 2,2,1) AS tinyint)
                    ELSE CAST(SUBSTR(imei, 4, 1) * 2 AS tinyint) END
                    +
                    CAST(SUBSTR(imei, 3, 1) AS tinyint)
                    +
                    CASE WHEN SUBSTR(imei, 2, 1) * 2 > 9
                        THEN 
                        CAST(SUBSTR(SUBSTR(imei, 2, 1) * 2,1,1) + SUBSTR(SUBSTR(imei, 2, 1) * 2,2,1) AS tinyint)
                    ELSE CAST(SUBSTR(imei, 2, 1) * 2 AS tinyint) END
                    +
                    CAST(SUBSTR(imei, 1, 1) AS tinyint) AS tinyint)
            )
        ELSE
            CONCAT(SUBSTR(imei, 1, 14),'0')
    END AS imei
FROM TB_GPRS WHERE DT = '20221020';