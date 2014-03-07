# 1. (2010) - Bezemer, C.-P.; Zaidman, A. - Multi-tenant SaaS applications: maintenance dream or nightmare?

## Definitions

tenant = organizational entity which rents a multi-tenant SaaS solution (usually grouping a number of users)
multi-tenant application = hardware resource sharing by offering one shared application and database instance to multiple tenants
multi-user = all users use the same application with limited configuration options
multi-instance = each tenant has own instance of application (and (optionally) database)

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

**Good**: Good notion of definition of multi-tenancy
**Bad**: Blueprint quite high-level
**Future work**: evaluation of approach in an existing industrial application


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

**Good**: Extensive description of the framework
**Bad**: Little bit old/outdated


# 4. (2012) - Krebs, R.; Momm, S.; Kounev, S. - Architectural Concerns in Multi-Tenant SaaS Applications.

## Different layers
1. Sharing a data center (very limited)
2. Virtualization (large overhead)
3. Middleware sharing (difficult isolation and overhead)
4. Multi-Tenant Application (MTA)

1-3 are sometimes called multi-instance solutions

## Definition of MTA

tenant = group of users sharing the same view
multi-tenancy = sharing an application instance between multiple tenants (by providing a dedicated "share" per tenant)
tenant space = customers rent predifined space of resources (example: IaaS)

multiple application deployment = multiple applications in one instance of the same runtime environment (is not multi-tenancy!)

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

**Good**: Very wide description of various aspects
**Bad**: -