## 1. (2008) - Aulbach, S.; Grust, T.; Jacobs, D.; Kemper, A.; Rittinger, J. - Multi-tenant databases for software as a service: schema-mapping techniques

This paper describes a new way to implement a database schema that allows extension by tenants: chunk folding.

The paper has a nice overview of different schema mapping techniques, contains a database performace test for various numbers of tables in a database and contains a performance test for a database with a chunk-folding schema.

Also included are descriptions of a query rewrite layer.

**Good** Clear list of schema mapping techniques, good description of testbed.\\
**Bad** Very specific.\\
**Future work** Migration of database layouts.\\


## 4. (2011) - Schiller, O.; Schiller, B.; Brodt, A.; Mitschang, B. - Native support of multi-tenancy in RDBMS for software as a service 

In this paper a tenant-aware RDBMS is proposed.
This RDBMS supports extensible schemas using inheritance. (i.e. "childschema extends parentschema").

In addition to proposing how the database should work a preliminary implementation has been done by modifying Postgresql.
The paper explains how the data is kept in memory and what parts of Postgres they had to make tenant aware.

Finally a performance comparison is done comparing 'Shared process', 'Shared table' and 'Native MT support' database performance.

**Good** Detailed description of storage methods, especially 'shared table.'. Working prototype of tenant aware database created and performance tested.
**Bad** Other database schemas (chunk folding, etc..) not included in performance comparison.
**Future work** Tenant aware database administration tools (backup, recovery, etc..).


