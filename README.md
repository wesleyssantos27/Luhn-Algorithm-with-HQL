# Luhn-Algorithm-with-HQL

This repository was created to share the Luhn algorithm created using only HQL (Hive Query Language), known as SQL from Hive.

I received this challenge from a demand at work, but I could not find any material on the internet. In this way, I am sharing my solution and I hope it could be useful for other people someday.

The query is used to find or validate the 15º digit of IMEI number.
Im my case the IMEI number is a column of TB_GPRS table. Some IMEI numbers demands validation, others have just 14 digits and demand the adition of the 15º.

The table is partitioned by DT. A date column formated as YYYYMMDD, but it is not relevant for the algorithm, it is just used to optimize the query performance.

You can get the query in file Luhn-Algorithm-IMEI.hql.