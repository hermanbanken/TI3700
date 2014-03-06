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

Further lookup by Herman:
ContextJ: http://prg.is.titech.ac.jp/members/masuhara/papers/jssst2009.pdf
Comparable to Dep. Injection since the ContextJ compiler converts 'layers' to different classes (extending each other to provide access to super.method()) therefore compiling to about the same byte-code.

**Good**: technical case study of building on top of PaaS Google App Engine => awesome. Extensive explanation of Context-Oriented Programming by giving very clear code examples.  
**Bad**: some assumptions are made in the analysis of the findings that might need further research. They extrapolate after doing a test run with n = 1.

# 9. (2013) - Gey, F; Walraven, S; Van Landuyt, D; Joosen, W - Building a Customizable Business-Process-as-a-Service Application with Current State-of-Practice.

Migrated an existing document processing application to state-of-practice workflow processing techniques in the context of multi-tenant applications. They focused on:

- Management of Variations: time to market for new tenants is very important in order to be competitive; the tooling should be usable by non-programmers as business analysts and domain experts.
- Resilience of Workflow Execution: in SaaS environments there tends to be maximum utilization of resources, so keeping the promises made in a SLA might be hard when some remote service fails.

They propose to add explicit support in BPMN (Business Process Modeling and Notation) for Tenant-specific Variations by introducing twe elements:
- variation points
- the workflow engine should be able to import knowledge about VP's such as a feature model, or an external source, e.g. a configuration repository.

Potential types of failures:
- After a redefinition of the process, and old process instance can still be running and this may lead to failures or incorrect results.
- In case a task fails the complete workflow has to be re-executed.
- In case a workflow engine crashes the entire workflow has to be re-run.

Compared to other work Gey et al. use more standard tools to comply with existing SaaS platforms and tools.

Conclusions. The passing of parameters in BPMN is not optimal to support modular and individual tasks. Secondly, BPMN lacks support for multi-tenancy and variability so in order to express tenant-specific variabilities workflow branches are used as a workaround. Thirdly, a centralized controller running the entire workflow may not be desirable since it makes a single point of failure that - when failing - requires all task to be completely re-run.

**Good**: little  
**Bad**: very much business modeling talks, not very interesting. Uses a lot of boring tooling like JBosss, jBPM. Boasts about sticking to these tools using workarounds while others implement their own variations of other tooling.

# 10. (2011) - Walraven, S; Truyen, E.; Joosen, W - A Middleware Layer for Flexible and Cost-Efficient Multi-tenant Applications.

Middleware layer that brings configuration and customization closer together on Google's PaaS _App Engine_. Providing the following functionality:
- feature management facility, providing an API.
- configuration management facility
- feature injector

_Feature Management_ is concerned with storing all available features and available feature implementations. _Configuration Management_ manages which tenant has selected which implementation for a specific feature. It also sets the default implementation. The _Feature Injector_ consults the configuration manager for each variation point and the tenant specific configuration is looked up and cached.

**Extensive cost model.** CPU consumption is higher in a single instance mt situation, however memory and storage consumption is lower, while the higher CPU consumption is limited to authenticating tenants and ensuring tenant isolation. Maintenance cost is constant with multi tenancy while for a traditional application maintenance has to be done for each individual tenant.
Administration costs are divided in the creating of a new instance and the provisioning of a new tenant. In Single Tenancy both these things have to be done each time while in MT only the provisioning (eg registering tenant ID, providing access, etc.) needs to be done more than once.

**Case study results**: the single and multi tenant applications used about the same amount of CPU, however while single tenant application instances scaled linearly with the amount of tenants the multi tenant application only needed a little extra amount of instances (about a fourth). To implement multi tenancy using Dep. Injection only 74 more lines of code (about 10% increase) were used and some configurations lines became unnecessary.

Closely related to Truyen, Cardozo, Walraven, et al. (2012)

**Good**: App Engine, mathematical cost model comparison, graphs of CPU, memory consumption  
**Bad**: -

# 11. (2012) - Schroeter, J.; Cech, S.; Götz, S.; Wilke, C.; Aßmann, U. - Towards modeling a variable architecture for multi-tenant SaaS-applications.

Fairly recent paper on MT. Relates also to Quality of Service, since not so much about features but more about non-functional properties.

There are different stakeholders, the tenants and their customers, requiring maximal usability, the SaaS provider striving for maximum users minimizing used resources to maximize profit, and resource providers  minimizing energy consumption and for example license fees per CPU. In order to allow the negotiation between these stakeholders variability should be modeled in, problem space, e.g. variability in functionality:

- feature modeling [14, 3]
- decision modeling [22, 23]
- orthogonal variability modeling [16]

and in solution space variability in component implementation on the architectural level needs to be modeled [19].

Defines several requirements to Multi Tenant Applications. 
**Design Time Requirements **

- Software and Hardware Component Modeling
- Specification of Non-Functional Properties
- Tenant Configuration Modeling

**Runtime Requirements **

- Self-Optimizing Runtime Environment
- Monitoring of NFPs
- Management of Tenants and Users
- Multi-tenant specific Platform Services
- Resource Sharing

Using Multi-Quality Auto-Tuning Architecture. This is a concept from the energy branch but was adapted in this paper to fit MTA's, because:

- it is a component based auto-tuning architecture allowing self-optimization of NFPs;
- it explicitly considers hardware in addition to software components;
- it offers adaptivity at deploy and run time.

This paper is mainly about the non-functional requirements that are relevant in MT environments like where servers are deployed (eg servers should be in Europe.), what the throughput or frame rate is. This is modeled with a method derived from the Energy branch and is used to determine when to scale up or down and when to spawn specific new instances with determined software but also hardware.

**Good**: finally some research on monitoring performance and providing a solution to keep SLA guarantees and contracts.  
**Bad**: seems to be for high data rate applications like video processing where rules from contracts can be measured since the level of detail is much lower. Not sure how this relate to much more lightweight SaaS applications like document processors as the mathematical variance in resource utilization is very different.

