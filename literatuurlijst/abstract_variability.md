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

# 4. (2014) - Walraven, S.; Van Landuyt, D.; Truyen, E.; Handekyn, K.; Joosen, W. - Efficient customization of multi-tenant Software-as-a-Service applications with service lines

Two key challenges:
- Efficient development, management and reuse of software variations in a SaaS offering. _Because of the high impact of variability on the SaaS application, it cannot be realized as an afterthought in the development process._
- Efficient, tenant-driven customization of the multi-tenant SaaS application. _By implementing a interface for tenant self-service that allows tenants to create valid configurations_

A service line is a SaaS application made of customizable services that can be configured and selected dynamically. One major difference with classic Service Line Engineering: one single instance is supporting different application variants.

Full example of a document processing application prototyped by Walraven et al using the SPLE-method. The method is thus validated in a prototype-driven validation approach. Made a:
- Service line management support layer
- Prototype implementation (JBoss Java EE 6) 

Traceability support build in to the software that makes it easy to make feature mappings of feature based configuration to component based variation.

Future work:
    - Support tool for evolution and management. E.g. a tool to analyze the impact of an impact of an update on the service line architecture and the different tenant-specific configurations.
    - Integrate with frameworks for Automated Testing to support multi-tenant applications
    - Gradual roll-out tools
Describes related work:
    - Service oriented product line engineering by Cohen and Krut (2008), but this focuses on delivering customized software for tenants to be deployed separately.
    - Nguygen et al. describe a way to make sure only one instance per total variant is deployed to increase cost efficiency, however when there are many variants (high amount of features) this is less efficient.
    - Dynamic software product lines (DSPL) make it easier to get run-time variability, and thus handle unforeseen situations, however these variations hold for each tenant. DSPL doesn't support co-existing configurations.
    - Mietzner et al. apply variability modeling techniques to support the management of variability in SaaS applications delivering BPEL processes. They let tenants fill in application templates which have to be deployed separately as tenant-specific BPEL processes. The solution could however be integrated in Walraven et al.'s work, instead of the current prototype using jBPM and Drools.
    - Schroeter et al. also propose a dynamic configuration manager thus they  cover only the tenant requirement analysis. This paper thus complements Schroeters paper.
    - Mietzner et al. (2011) present several multi-tenancy patterns. 'Our' paper only focuses on customization that maps to their single configurable instance pattern.
    - Kabbedijk and Jansen present patterns to realize run-time variability. These patterns are also relevant in SLDP, for example, their Component Interceptor Pattern corresponds to 'our' dynamic composition technology.
    - Groher and Weinreich (2012) provide an approach that results in one consistent model which links architectural artifacts (requirements, features, components) with variability models, making these fully traceable. This paper is complementary, however their method would need to be modified to add support for versioning, co-existing configurations and evolutions of service lines.

**Good**: very extensive paper on the whole process of developing a multi-tenant single instance SaaS application. They cover almost all aspects and even develop a prove of concept prototype for a company called UnifiedPost.
**Bad**: very long paper that easily gets boring when they discuss some of the same topics in different levels of detail at different sections.
