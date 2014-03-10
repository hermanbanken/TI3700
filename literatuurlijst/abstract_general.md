# 1. (2010) - Bezemer, C.-P.; Zaidman, A. - Multi-tenant SaaS applications: maintenance dream or nightmare?

## Definitions

* tenant = organizational entity which rents a multi-tenant SaaS solution (usually grouping a number of users)
* multi-tenant application = hardware resource sharing by offering one shared application and database instance to multiple tenants
* multi-user = all users use the same application with limited configuration options
* multi-instance = each tenant has own instance of application (and (optionally) database)

## Characteristics of Multi-Tenancy

* Hardware Resource Sharing
  - Shared application, separate database
  - Shared application, shared database, separate table
  - Shared application, shared table (pure multi-tenancy)
* High Degree of Configurability
* Shared Application and Database Instance

## Benefits of MT

higher utilization of resources, easier and cheaper maintenance, lower overall costs, new data aggregation opportunities

## Challenges of MT

1. Performance (multiple tenants using the same hardware resources)
2. Scalability
3. Security (exposure of data to other tenants)
4. Zero-Downtime 
5. Maintenance (added complexity)

The paper also describes a conceptual blueprint for converting an application into a multi-tenant application.

* **Good**: Good notion of definition of multi-tenancy
* **Bad**: Blueprint quite high-level
* **Future work**: evaluation of approach in an existing industrial application


# 2. (2007) - Chang Jie Guo; Wei sun; Ying Huang; Zhi Hu Wang; Bo Gao - A Framework for Native Multi-Tenancy Application Development and Management.

Two kinds of MT: multiple instance and native multi-tenancy (scales much better). Choice based on requirements; multiple instance has less risks than native, but is more expensive. Paper focuses on native variant.

Application level isolation: Customize tenant's services on runtime without modifying code

Framework: Serves SMB tenants
Applicaton logic oriented developers: responsible for content, business processes and services
Infrastructure oriented developers: efficiency and reliability

Multi-tenancy enablement layer: separation between usage and resources
 * Security Isolation
 * Performance Isolation
 * Availability Isolation
 * Administration [Console] Isolation
 * On-the-Fly Customization

Benefits: lower costs, separation of development teams. 

They expected the further studies on these topics will improve the SLA management of native multi-tenant applications significantly. 

* **Good**: Extensive description of the framework
* **Bad**: Little bit old/outdated


# 3. (2010) - Bezemer, C.-P.; Zaidman, A. ; Platzbeecker, B. ; Hurkmans, T. ; t Hart, A. - Enabling multi-tenancy: An industrial experience report.

This paper uses (logically) the same definitions as 1. They apply the described framework of 1 to Exact, a Dutch-based software company specialized in enterprise resource planning, customer relationship management and financial administration software.

They took the following steps:
1. Migrate a single-tenant to a multi-tenant application with **minor** adjustments to existing business logic
2. Application developers stay unaware of the fact that the application is multi-tenant
3. Separate multi-tenant components clearly

They describe Exact Codename very detailed, including their case study of enabling multi-tenancy in a single-tenant application using their pattern.

## Lessons learned
* Only 100 lines added to original Codename code (high efficiency)
* Layered architecture is essential
* Since it was easy, they wonder whether this process could be automated. However, they don't expect it to be possible (cheaply), because one needs a very large amount of architectural and domain knowledge
* The end-user isn't aware of the fact that its application is actually multi-tenant (positive!)
* Most developers can stay uneducated, because only small adjustments were made
* Their case study was limited to the degree of configuration currently possible in Codename
* Codename was well-designed and layered, which added to the ease of application
* Their approach was tested manually, but they would like to see automated tests for this


* **Good**: They evaluate their own framework and describe their experiences very in-depth
* **Bad**: It is very specific, since it is applied specifically to Exact Codename


# 4. (2012) - Krebs, R.; Momm, S.; Kounev, S. - Architectural Concerns in Multi-Tenant SaaS Applications.

## Different layers
1. Sharing a data center (very limited)
2. Virtualization (large overhead)
3. Middleware sharing (difficult isolation and overhead)
4. Multi-Tenant Application (MTA)

1-3 are sometimes called multi-instance solutions

## Definition of MTA

* tenant = group of users sharing the same view
* multi-tenancy = sharing an application instance between multiple tenants (by providing a dedicated "share" per tenant)
* tenant space = customers rent predifined space of resources (example: IaaS)
* multiple application deployment = multiple applications in one instance of the same runtime environment (is not multi-tenancy!)

## Design concerns
1. Affinity
  * Non-affine: multiple instances handle multiple requests
  * Server-affine: one instance handles defined tenant(s)
  * Cluster-affine: server-affine for multiple servers
  * Inter-cluster-affine: cluster-affine, but with overlap
2. Persistency
  * Dedicated database: every tenant has own database
  * Dedicated table/schema: database shared, separate tables/schemas
  * Shared table/schema: differentiation through (for example) a column `tenantId'
3. Performance
  * Performance-isolation: SLAs are fulfilled when working within quota, even though other tenants exceed
  * Weak isolation: when performance is achieved within a limited number of requests by various tenants (might result in restriction when everybody uses the system at the same time)
  * Unisolated: no isolation (duh)
4. QoS (not really isolation). Examples:
  * Higher priorities for certain tenants
  * Response time differentiation
5. Customization
  * Configurable application: tenant specific behavior of appearance
  * Allowance of code extension

All of the above might influence each other.

* **Good**: Very wide description of various aspects
* **Bad**: -


# 5. (2010) - Dillon, T.; Chen Wu ; Chang, E. - Cloud Computing: Issues and Challenges

## Definition of Cloud Computing
Cloud computing is a model for enabling convenient, on- demand network access to a shared pool of configurable computing resources (e.g., networks, servers, storage, applications, and services) that can be rapidly provisioned and released with minimal management effort or service provider interaction.

Essential characteristics:
1. On-demand self-service (no human interactions)
2. Broad network access (resources via internet)
3. Resource pooling (service resources are pooled together using either the **multi-tenancy** of the virtualization model)
4. Rapid elasticity (scalability)
5. Measured service (infrastructure is able to measure usage of resources)

Three (four actually) service models for cloud services:
1. SaaS (example: Google Mail/Docs)
2. PaaS (example: Google AppEngine)
3. IaaS (example: Amazon EC2)
4. DaaS (example: Google BigTable)

Four cloud deployment models:
1. Private cloud (cloud infrastructure is operated solely within a single organization)
2. Community cloud (multiple organizations sharing the same cloud infrastructure)
3. Public cloud (cloud service provider has full ownership; example: Google AppEngine)
4. Hybrid cloud (combination of two or more from the above)

The paper describes the relationship between cloud computing and service-oriented computing, stating the "cloud is more or less based on the evolving development on SOC", SaaS in particular. It also describes the relationships between the cloud and grid computing and high performance computing.

The paper shows a nice graph of a survey in which companies rate the issues with the cloud model.

The following challenges influence the adoption of cloud computing:
1. Security
  * Multi-tenancy model has created two new security issues: shared resources on the same physical machine and reputation fate-sharing (sharing resources with possible criminal users)
2. Costing model (increased cost of data communication and cost per unit; also expensive is data integration with different clouds)
3. Charging model (elastic resource pool makes cost analysis complicated)
  * SaaS providers: costs of developing multi-tenancy can be very substential.
    - re-design/re-development of single-tenancy software
    - introducing new features for customization
    - security enhancements
    - dealing with earlier mentioned complexities
4. Service Level Agreement (SLA)
5. What to migrate

Various definitions of "the cloud" make it difficult to develop cloud ecosystems and result in vendor lock-in. The paper describes some layers that should be added in order to allow interoperability.

* **Good**: Extensive analysis of everything related to "the cloud"
* **Bad**: 99% is about the cloud; multi-tenancy is only mentioned a few times