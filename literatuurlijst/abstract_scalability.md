## 1. (2008) - Aulbach, S.; Grust, T.; Jacobs, D.; Kemper, A.; Rittinger, J. - Multi-tenant databases for software as a service: schema-mapping techniques

This paper describes a new way to implement a database schema that allows extension by tenants: chunk folding.

The paper has a nice overview of different schema mapping techniques, contains a database performace test for various numbers of tables in a database and contains a performance test for a database with a chunk-folding schema.

Also included are descriptions of a query rewrite layer.

* **Good** Clear list of schema mapping techniques, good description of testbed.
* **Bad** Very specific.
* **Future work** Migration of database layouts.

## 3. (2013) - Espadas, J.; Molina, A.; Jimenez, G.; Molina, M.; Ramirez, R.; Concha, D. - A tenant-based resource allocation model for scaling Software-as-a-Service applications over cloud computing infrastructures

The paper aims to make the following contributions: A formal measure for under and overprovisioning of virtualized resources and to propose new resource allocation mechanism based on tenant isolation, VM instance allocation and load balancing to create a cost-effective scalable environment.

The formal measure used defines seperate ways to quantify overutilization and underutilisation. Overutilisation by detecting inflection points where utilisation increases but troughput decreases. Underutilisation is measured but calculating the amount of VMs that are actually needed, given a maximum utilisation level, compared to the amount of VMs running at that time.

The proposed model uses usage data per tenant, reliably obtained by properly seperating tenants in the system to calculate a 'tenant weight'. After determining how much weight a single VM can handle tenants are assigned to one or multiple VMs based on their weight using a greedy knapsack algorithm. Finally a tenant aware load balancer is used to send request from tenant users to the proper instances and request new instances if needed.

* **Good** The paper lists a lot of related works that may be nice to follow up on. Extensive descriptions of testbed / platform. Statistically significant reduction in underutilisation.
* **Bad** Only CPU / mem / troughput used as metric. Example implementation extremely dependant on JVM/Java features. No statistically significant reduction in overutilisation.
* **Future work** Validate proposed system and metrics on other platforms.


## 4. (2011) - Schiller, O.; Schiller, B.; Brodt, A.; Mitschang, B. - Native support of multi-tenancy in RDBMS for software as a service 

In this paper a tenant-aware RDBMS is proposed.
This RDBMS supports extensible schemas using inheritance. (i.e. "childschema extends parentschema").

In addition to proposing how the database should work a preliminary implementation has been done by modifying Postgresql.
The paper explains how the data is kept in memory and what parts of Postgres they had to make tenant aware.

Finally a performance comparison is done comparing 'Shared process', 'Shared table' and 'Native MT support' database performance.

* **Good** Detailed description of storage methods, especially 'shared table.'. Working prototype of tenant aware database created and performance tested.
* **Bad** Other database schemas (chunk folding, etc..) not included in performance comparison. 
* **Future work** Tenant aware database administration tools (backup, recovery, etc..).


## 5. (2011) - Shen, Z.; Subbiah, S.; Gu, X.; Wilkes, J. - CloudScale: elastic resource scaling for multi-tenant cloud systems

The paper describes and evaluates a prediction driven resource scaling system. 

The prediction system uses a FFT to identify repeating patters / signatures in resource usage. If no signature is discovered a discrete-time Markov chain is employed to predict resource demand. The predicted resource demand is then 'padded' based on the burst pattern of the resource demand. Finally padding may be even further increased if the system was recently under-provisioned.

The system also attempts to prevent Scaling conflicts, where the physical host cannot meet demand of the VMs running on it. It does this by striving to maintain resource requirements for high priority VMs first. The other option is predictive migration of machines.

It also proposes to use predictive frequency / voltage scaling on the host machine to save energy when resource demand is low.

* **Good** Principles also applicable to SaaS architectures. Extensive comparison of various scaling methods.
* **Bad** Focused more on IaaS architectures.
* **Future work** More accurate prediction of resource demand, interaction of various metrics (mem/cpu).  


## 6. (2009) - Aulbach, S.; Jakobs, D.; Kemper, A.; Seibold, M. - A comparison of flexible schemas for software as a service

The paper compares the following schemas for SaaS applications: private tables, extension tables, sparse columns, xml, pivot tables.

After comparing the various schema's performance on different databases the authors conclude that the ideal database for SaaS applications does not exist yet. A lot of suggestions concerning how such a database might me made are given.

* **Good** Characteristics of testset modeled on real world data. Explanation of testbed.
* **Bad** No real novel ideas, just comparing.
* **Future work** Lots of suggestions for the ideal SaaS DB system.

## 7. (2011) - Aulbach, S.; Seibold, M. ; Jacobs, D. ; Kemper, A. - Extensibility and Data Sharing in evolving multi-tenant databases

In this paper a new database schema type, FLEXSCHEME, is proposed. This is a scheme that can properly handle shared data and/or different versions of the same data without having to add lots of additional logic in the application layer. It gives the database control of the data again.

The new schema type is compared to several different ways of handling multiple versions of data and multiple tenants.

* **Good** Working prototype, good descriptions of how a multi-tenant system can at the same time evolve and be extended.
* **Bad** Slightly slower performance in some cases.
* **Future work** Branching in various versions of the data.

