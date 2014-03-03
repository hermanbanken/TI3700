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

# 5. (2008) - Wei Sun; Xin Zhang ; Chang Jie Guo ; Pei Sun ; Hui Su - Software as a Service: Configuration and Customization Perspectives

Lists main reasons for variance: industry focus, customer behavior, product offering, regulation, culture and operation strategy differences.

Different levels of Configuration Competency: entry, aware, capable, mature and world class. These describe the level of how much configuration is possible to support different tenants needs.

4 different scales of keeping configuration in mind during development. Keeping configuration in mind from the start will end up being the cheapest, but requires a high initial workload and thus costs, while building in configuration later will cost less upfront but will cost more in the long run. Moving an application to the SaaS model where payment is done on a monthly basis the initial development costs of the first model may be a real issue.

Different fields for variation are: Data Structure & Processing, Organization Structure, User Interface, Workflow, Business Rule, Reporting.

Important point: configuration is preferred over customization which is considered too complex (as cited by Truyen, 2012)

**Good**: some listings of reasons for variation, levels of configurability, configurable fields and ways to develop with MT in mind.
**Bad**: Lots of misspelling's including "Through SaaS application is usually developed.", "SalesFoce.com" (including not working hyperlink...). 

# 6. (2010) - Jansen, S.; Houben, G.-J.; Brinkkemper, S.; - Customization Realization in Multi-tenant Web Applications: Case Studies from the Library Sector

Chong and Carraro [5] suggest four ways to customize: UI and branding, workflow and business rules, data model extensions, and access control. 

Analyzes that there is a lack of research on Customization Realization Techniques (CRT's).

Defines 5 CRT's in two categories. 
## MVC customization
- Model changes: adding fields, relations or adding domain specific entities.
- View changes: look&feel, different templates (Wordpress) or interfaces
- Controller changes: tenant specific data, different license types

## System customization
- System connector changes: the connection to another system is variable: connect to different providers offering the same functionality
- System component change: swap complete components for example the tenants own system that they want to continue using.

Two case studies; library website (only controller changes), homework support system (almost all CRT's).

Future work: annotate each CRT with customization experiences, such as technical implementation details, code fragments, patterns used and implications such as performance and reliability.

**Good**: research using case studies. Paper by GJ Houben from TU Delft
**Bad**: boring case studies about public libraries

# 7. (2008) - Mietzner, R.; Leymann, F. - Generation of BPEL Customization Processes for SaaS Applications from Variability Descriptors

Defines Variability Points in a template piece of software and proposes an automated way to generate a customization tool that allows tenants to make custom solutions from that software template.

"Opaque tokens" from BPEL offer variations not filled in, but lack the constrains that are allowed for a variation point. Also dependencies of some variation points on others should be made explicit.

We can define Alternatives, Dependencies and Enabling Conditions for each Variability Point. The latter meaning that some alternatives can only be enabled based on some earlier alternatives. 

These customizations must then be validated in an automated manner. Starting with the VP's without dependencies resolving until every VP is checked.

We propose an the automated generation of a customization tool that prompts the user for input about the VP's in the order that the dependencies require and leaving out VP's that no longer have valid options or only one alternative and thus can be bound automatically. Including the ways XPath is used to modify the XML BPEL files.

Future work: automated generation of templates of configurations that are definitely valid. This will be done by introducing rules and algorithms for variability descriptors. Furthermore to better link to the SaaS scenarios we will implement a Web-interface to drive the customization process.

**Good**: Thorough description of dependencies and decision points, and describes in great detail the creation of a customization.
**Bad**: not about real multi tenancy as the methods proposed deliver a tenant specific solution to be deployed on its own.

# 8. (2012) - Truyen, E.; Cardozo, N.; Walraven, S.; Vallejos, J.; Bainomugisha, E.; Gunther, S.; D'Hondt, T.; Wouter, J. - Context-oriented programming for customizable SaaS applications

Presents Context Oriented Programming as an alternative to Dependency Injection to support multi-tenancy by showing ContextJ performs equally good as Guice (Dep. inj. from Google).

Interesting Ref: Tsai et al [26] show that single instance MT yields scalability increases of 60-90% over traditional multi-VM based customization. => scalability

Interesting Ref: Google introduced an API for isolation of application data of different tenants [14]. => security

Shows detailed examples of Context Oriented Programming using 'layers'. Layers are code blocks that redefine methods for different variations, still allowing them to call the original method (like calling super.method()) to not write the same method twice, and simple adjust the value.

ContextJ proves to perform slightly better than dependency injection by Guice, as Guice needs to do database lookups for each variation point encountered in the code, whereas ContextJ just looks up all the tenants layers once, within the 'with'-block.

Future work contains looking in to asynchronism. Currently ContextJ doesn't pass layer state between thread so when spawning a new thread all tenant specific layer state is lost. Middle ware to prevent this exists and needs to be fitted to ContextJ. Futhermore research could be done to provide better quality of service to specific tenants. Currently GAE lacks the performance isolation that some tenants would want to pay for in SLA's. Now some requests of tenants were cut off because the instances couldn't handle the load and GAE doesn't scale during requests.

**Good**: technical case study of building on top of PaaS Google App Engine => awesome. Extensive explanation of Context-Oriented Programming by giving very clear code examples.
**Bad**: some assumptions are made in the analysis of the findings that might need further research. They extrapolate after doing a test run with n = 1.