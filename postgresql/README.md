* Create database

```
CREATE DATABASE finanzas;
```

* Create role

```
CREATE ROLE demo;
```

* Grant permissions

```
GRANT CONNECT ON DATABASE finanzas TO demo;
GRANT USAGE ON SCHEMA public TO demo;
GRANT SELECT ON ALL TABLES IN SCHEMA public TO demo;
```

* pg_hba.conf

```
host    finanzas    demo    192.168.15.23/32    md5
```
