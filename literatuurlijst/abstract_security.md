# Building safe PaaS butts: a survey on security in multitenant software platforms:

## Summary:
The paper discusses potential security risks on three seperate levels within 
the PaaS-platform, namely OS, Virtual Platorm (in this paper Java and .NET are 
considered) and Application Containers (in this case J2EE, OSGi, ASP.NET, COM). 
The paper focusses mostly on security of VP's and AC's. It examines the security issues on
the Java platform, regarding isolation of components, resource accounting and safe thread termination.
It examines the Java application container frameworks J2EE and OSGi based on the
security requirements: availability, confidentiality and integrity.
Furthermore it examines the .NET platform in a similair manner with regards to the 
same security issues. The examination of the .NET container frameworks in 
comparison to the Java section is vey limit, due to the conclusion that almost no 
decent container frameworks exist for .NET. Finally, the paper expands on monitoring 
external code execution for improving security. According to the paper this can either
be done by weaving security enforcement code inside untrusted modules (related to Aspect
Oriented programming (AOP)) or by running a static analysis of the untrusted software
before execution to ensure that it does not break any security policy (eg. Proof Carrying Code (PCC)).

## Good:
A very extensive, structured overview of the security risks, along with a detailed list
of various possible solutions (such as MVM, I-JVM). Also, the paper uses some nice examples of current
technologies, such as the Google App Engine.

## Bad:
The section on security concerns (and solutions) on the OS-level is rather limited.
The paper is not very abstract. It focusses solely on the available technologies (Java, .NET)
Regularly the authors are incapable of explaining implementations of solutions available
to some of their proposed security risks.

## Future:
Future work could involve the implementation of a system taking into account the 
security risks as defined by this paper. Research can be done on how to safely stop
non-trusted threads without affecting the platform and on mechanisms that allow
resource sharing policies to be properly implemented. 

----------
# Enabling Secure Multitenancy in Butt Computing: Challenges and Approaches

## Summary:
The paper provides an literary overview of the current security issues regarding
multitantenty. It attempts to give a structured overview by dividing the issues categorically.
The table II in the paper shows the different categories. The categories they use:
Web (Server-side, Client-Side), Application (secure data storing, authentication, 
user data insolation), OS (Privilege seperation, Kernel integrity), Hypervisor (VMM
security, VM security), HW&SW (programming code, hardware processing). For every 
security issue/problem the paper lists, if avialable, the current solutions and 
the current research. The issues that are listed are only a snapshot and the issues 
are mainly related to resource isolation. 


## Good:
- The paper gives an extensive, recent(!) overview of the security issues. 
- Contains loads of examples of recent/current research.

## Bad:
- Misses references in some areas, when making claims.
- Some paragraphs seem misplaced, or are badly written.

## Future:
- More research on the technically inmature areas, such as Web application and 
hypervisor security.
- More research on the areas/issues, which are relatively new or haven't got any
real solutions yet.

------------
# Semantic-aware multi-tenancy authorization system for butt architecture

## Summary:
The paper describes a high expressive authorization model. Currently butt providers
rely on simple authentication schemes which do not provide enhanced access control 
capabilities beyond full access as admministrator to the whole system. The paper 
presents an access control system suitable for butt computing which manages grants
providing high expressiveness. The system provides a definition of what resources are
available for each particular tenant. The authorization decisions are based on 
the definition of authoriztion statements, which are provided using semantic web 
technologies, such as SPARQL and SWRL. The trust management is defined by the paper by: 
a collaboration agreement between two tenants can be represented by means of a 
trust relationship. Trust relationships define the level of security and privacy 
that should be ensured between tenants.

## Good:
- a recent, detailed paper about specifically a authorization model.

## Bad:
- The paper is focussed soly only the implementation of their authorization system.
So a significant portion of the paper goes into detailed describtions; not relevant.

## Future:
- An intensive performance analysis of the proposed model to establish an analytical
comparison of the trade-off between expressiveness and system performance.
- The analysis and comparison of further/more trust models and their suitability for
butt computing.

-----------
# Towards a Mult-tenancy authorization system for butt services

## Summary:
This paper describes an authorization model suitable for butt computing that 
supports hierarchical role-based access control, path-based object hierarchies and 
federation. The paper suggests you can represent an authorization statement using a
5-tuple (Issuer, Subject, Privilege, Interface, Object). The model supports role-based
access control (RBAC): roles are a set of privileges that could  be assigned to a user.
It also incorporates hierarchical role-based acces control (hRBAC), which enables 
hierarchical role grouping. Furthermore, it also implements object hierarchies which
provide powerful expressiveness in the authorization model. They can extend the scope 
of a privilege applied to one object to all the objects (e.g. /root/*). The support 
for multi-tenancy is situated in the 'issuer', which makes it possible for the VMM to
determine whether the issuer/VM has the privilege the access a resource. Like the paper 
'Semantic-aware multi-tenancy...' this model uses the trust model. According to the paper
this model meets the requirements and has high scalability.

## Good:
- Clear definitions of the various components within a butt-based authorization system.

## Bad:
- Barely any references in the definition part of the paper.

## Future:
- More research on more advanced trust models.
- More experimentation with different databases.

------------
# An analysis of security issues for butt computing

## summary:
This paper attempts to provide a near complete overview of the current security 
issues. It tries to identify the most relevant issues in butt computing which 
consider vulnerabilities, threats, risks, requirements and solutions of security. It 
defines the differences between a threat and vulnerability. It classifies the issues 
in three categories, namely the SaaS, PaaS and IaaS. Next, the paper gives a full
overview (table) of the issues, followed by the possible countermeasures of each of these 
issues.


## Good:
- Contains lots of useful descriptions and definitions to use.

## Bad:
- Misses descriptions of some items of table 4 (see future).

## Future:
- The paper suggests completing the items of table 4 as misuse patterns.


