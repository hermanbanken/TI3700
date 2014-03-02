# 1. (2009) - Mietzner, R.; Metzger, A.; Leymann, F.; Pohl, K. - Variability modeling to support customization and deployment of multi-tenant-aware Software as a Service applications

The biggest difference between any generic multi-user application and a multi-tenant application is the level of customization possible, or the variability, per tenant. To describe the variability, one can model variation points in applications. OVM (Orthogonal Variability Model), a concept taken from product line engineering, is proposed by Mietzner et al. [Mietzner, Variability Modeling]. To use OVM a distinction is made between Customer-driven Variability and Realization-driven Variability. Customers can choose some variations and some other variations are introduced by the variety in technical realizations. Besides, some variations are chosen at configuration time, while some others might come in effect only when deploying. For example, when there is capacity left on a machine providing high availability, it might be more economic to put a new tenant that doesn't require high availability on the same machine instead of spawning a new machine.

In the article MeetR is used as an example to model Variability. MeetR is an application that allows tenants to change the logo of the application and also lets tenants decide whether a long or a short work flow is to be used, if high availability is necessary and whether or not the data may be stored in a shared database or should be stored separately.

**Good**: very clear illustration of OVM modeling.
**Bad**: very limited variability in example
**Future work:** how to associate the variability model with cost functions so that a service provider can determine the cost of creating, maintaining and managing a variant an can evaluate whether it makes sense, economically, to keep a variant or whether to remove it.

# 2. (2011) - Kabbedijk, J.; Jansen, S.; - Variability in Multi-tenant Environments: Architectural Design Patterns from Industry

Researches the variability realization techniques (VRTs) currently described
in literature and in place in large SaaS providers. Literature study on Google Scholar (searching: variability, SaaS and variability, multi-tenancy) gave 27 papers that were analyzed. Case study with two companies with combined user base of 30.000 users.

Contains definitions for *Multi-tenancy* (including the 3 different levels), *Variability* (including 2 types and 3 different levels) 

Describes 3 Variation Patterns:
- Customizable Data Views (storing settings like SortOrder, FilterItems, FontSize, FontColor)
- Module Dependent Menu (show only the menu items that a tenant has a licence for)
- Pre/Post Update Hooks (before and after updating data, run (tenant-specific) module, such as updating a third party API/service)

**Good**: clear definitions for Multi-tenancy and Variability, gives background on "Design Patterns" before describing some patterns.
**Bad**: identity of companies not disclosed, only short description of patterns.
**Future work**: Identify more Variability Realization Techniques and test their effectiveness, maintainability, scalability and performance.

# 3. (2008) - Mietzner, R.; Leymann, F. ; Papazoglou, M.P. - Defining Composite Configurable SaaS Application Packages Using SCA, Variability Descriptors and Multi-tenancy Patterns

Incorporating Variability in System Component Architectures. Proposes different levels of Components that are either:

- Single Instance Components = same instance of component for all tenants (for example: currency converting component)
- Single Configurable Instance Components = same instance, different configuration (for example DB management component configurable to use a specified database)
- Multiple Instance Components = instance of component per tenant, allows changes in implementation files
- Optional Components = components that are either not referenced (when in single instance mode) or not configured (single configurable mode)
- Tenant Specific = components live completely in the tenant-specific solution.

**Good**: early, very thorough research on variability of deployment packages and types of components
**Bad**: very UMLish. No example of SCA package files given

