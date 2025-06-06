## 

| Characteristics            | Related expressions                                          |
| -------------------------- | ------------------------------------------------------------ |
| Analyzability              | traceability，track，analysis，analyze，discoverability，understand，Understandability，understanding |
| Availability               | bottleneck                                                   |
| **Maintainability**        | maintain，maintenance，maintainable，change-prone            |
| Testability                | test，                                                       |
| Modifiability              | change，modify                                               |
| Time-behavior              | time-consuming，time，time-consume                           |
| Functional Completeness    | functionalities                                              |
| Reusability                | reuse                                                        |
| Adaptability               | extension，agility，dynamicity，dynamical，flexibility，flexible，Scalability，scale |
| Modifiability              | modify，modification,                                        |
| Recoverability             | ~~easily restart~~                                           |
| Learnability               | learn，                                                      |
| Installability             | migration，deployment                                        |
| **Security**               |                                                              |
| Modularity                 | cohesion，cohesiveness，autonomy，autonomous，independence，independent |
| **Reliability**            | stable，monitor，monitoring，stability，resistant，fail，error-prone，failure， |
| Replaceability             | replace                                                      |
| Fault tolerance            |                                                              |
| Resource Utilization       | Resource efficiency，resource                                |
| **Performance Efficiency** | performance，efficiency                                      |
| confidentiality            | reveal                                                       |
| authenticity               |                                                              |
| Integrity                  | consistency                                                  |
| **complexity**             |                                                              |
| **couping**                | couple                                                       |
| **Compatibility**          |                                                              |
| Interoperability           |                                                              |
| **Usability**              | use，usability                                               |
| Accessibility              |                                                              |
|                            |                                                              |



[1]**identifying architectural technical debt, principal, and interest in microservices: a multiple-case study**

| Insufficient message traceability                            | traceability                    |
| ------------------------------------------------------------ | ------------------------------- |
| poor restful  api design                                     | ↓use，↓maintain，↓Compatibility |
| Use of complex API calls when messaging is a simpler solution | ↓test                           |
| Use of inadequate technologies to support the microservices architecture | ↓maintain，↓functionalities     |
| Excessive diversity or heterogeneity in the technologies chosen across the system | ↑complexity                     |
| Manual per service handling of network failures when target services are unavailable | ↑complexity                     |
| Sharing persistence or database schema                       | ↑complexity                     |
| **Unplanned database synchronization**                       |                                 |
| Use of business logic in communication among services        | ↓understand，↓maintain          |
| Reusing third-party implementations                          | ↓maintain                       |
| Many services using different versions ofthe same internal shared libraries | ↓maintenance                    |
| External dependencies with various licenses requiring approval | ↑Time-behavior                  |
| Overwhelming amount of unnecessary settings in the services  | ↓maintenance，↓test             |
| excessive number of small products                           | ↓maintenance                    |

[2]**on the definition of microservice bad smells**

| API Versioning                 |                           |
| ------------------------------ | ------------------------- |
| Cyclic Dependency              | ↓maintain，↓ reuse        |
| ESB Usage                      | ↑complexity               |
| Hard-Coded Endpoints           | ↑coupling                 |
| Inappropriate Service Intimacy |                           |
| Microservice Greedy            | ↑maintainable             |
| Not Having an API Gateway      | ↑complexity，↑maintenance |
| Shared Libraries               | ↑coupling，↓independence  |
| Shared Persistency             | ↑coupling，↓independence  |
| Too Many Standards             |                           |
| Wrong Cuts                     | ↑complexity，             |



[3]**accumulation and prioritization of architectural debt in three companies migrating to microservices**

| insufficient metadata               | ↓track      |
| ----------------------------------- | ----------- |
| microservice couping                | ↑coupling   |
| inadequate use of APIs              | ↓understand |
| Excessive diversity 过多标准        | ↓learn      |
| unplanned data sharing共享数据库    |             |
| misusing shared libraries共享依赖库 |             |
| unnecessary settings                |             |

[4]**a study on the taxonomy of service antipatterns**

| Chatty Web Service             | ↑time                   |
| ------------------------------ | ----------------------- |
| Ambiguous Name                 |                         |
| CRUDy Interface                |                         |
| Data Web Service               |                         |
| Duplicated Web Service         |                         |
| Fine Grained Web Service       | ↑complexity             |
| God Object Web Service上帝组件 | ↓availability，↑time    |
| Low Cohesive Operations        |                         |
| Maybe It’s Not RPC             |                         |
| Redundant PortTypes            |                         |
| Multi Service                  | ↓availability，↑time    |
| Tiny Service                   | ↑complexity，↓usability |
| Sand Pile                      |                         |
| Chatty Service                 |                         |
| Knot                           | ↑time                   |
| Bottleneck Service             | ↓availability，↑time    |
| Data Service                   |                         |
| Bloated Service                | ↓cohesion               |
| Stovepipe Service              |                         |

[5]**architectural smells detected by tools：a catalogue proposal**

| Cyclic Dependency                | ↓maintain，↓Modularity          |
| -------------------------------- | ------------------------------- |
| Hub-Like Dependency              | ↑coupling                       |
| Unstable Dependency              | ↓stable                         |
| Cyclic Hierarchy                 | ↓instability不稳定，↓understand |
| Scattered Functionality          |                                 |
| God Component                    | ↑coupling，↑cohesion            |
| Abstraction without Decoupling   | ↓replace，                      |
| Multipath Hierarchy              | ↓understand，↓maintain          |
| Ambiguous Interface              | ↓cohesion                       |
| Unutilized Abstraction           | ↓replace                        |
| Implicit Cross-module Dependency | ↓modification                   |
| Architecture Violation           |                                 |

[6]**towards an architectural debt Index**

| Unstable Dependency               |                   |
| --------------------------------- | ----------------- |
| Hub-Like Dependency               |                   |
| Cyclic Dependency                 | ↓maintain，↓reuse |
| Implicit Cross Package Dependency | ↓modularity       |

[7]**architectural technical debt in microservices: a case study in a large company**

| Too many point-to-point connections among services           | ↓maintain      |
| ------------------------------------------------------------ | -------------- |
| Business logic implemented in the communication layer        | ↓agility敏捷性 |
| There is no approach to standardise the communication model among services (Tower of Babel problem). | ↓agility       |
| Weak source code and knowledge management for different services |                |
| Unnecessary presence of different middleware technologies in the communication among services. | ↓agility       |

[8]**microservices migration patterns** (文中为好的模式，这里指代反模式)

| Enable continuous integration                    | ↓Deployment                                          |
| ------------------------------------------------ | ---------------------------------------------------- |
| Recover the current architecture                 | ↓Understand                                          |
| Decompose the monolith                           | ↓modifiability                                       |
| Decompose the monolith based on data ownership   | ↓modifiability                                       |
| Change code dependency to service call           | ↓modifiability                                       |
| Introduce service registry client                | ↓Scalability,↓availability, ↓deployment，↓dynamicity |
| Introduce internal load balancer                 | ↓Scalability, ↓availability，↓dynamicity.            |
| Introduce circuit breaker                        | ↓Fault tolerance，↓availability                      |
| Introduce configuration server                   | ↓Modifiability,↓ dynamicity,↓deployment              |
| Introduce edge server                            | ↓Modifiability，↓dynamicity                          |
| Containerize the services                        | ↓Resource efficiency，↓deployment                    |
| Deploy into a cluster and orchestrate containers | ↓Resource efficiency，↓deployment                    |
| Monitor the system and provide feedback          | ↓Monitoring, ↓modifiability,↓deployment              |
| Single DevOps Toolchain                          |                                                      |
| dismiss documentation                            |                                                      |



[9]the database-is-the-service pattern for microservice architectures

| API Gateway       | ↓security  |
| ----------------- | ---------- |
| Discovery服务发现 | ↓dynamical |



[10]hotspot patterns: the formal definition and automatic detection of architecture smells

| Implicit Cross-module Dependency | ↑dependencies |
| -------------------------------- | ------------- |
| Unhealthy Inheritance Hierarchy  | ↑error-prone  |
| Cross-Module Cycle               |               |
| Cross-Package Cycle              |               |



[11]implementation patterns for microservices architectures

| Service Registry     | ↓deployment |
| -------------------- | ----------- |
| Microservices DevOps | ↓deployment |

[12]microservices anti-patterns: a taxonomy

| Lack of monitoring             |                       |
| ------------------------------ | --------------------- |
| Shared persistence             | ↑couple,↓independence |
| Wrong cuts                     | ↑complexity           |
| Legacy organization            |                       |
| Nonhomogeneous adoption        | ↓deployment           |
| Common ownership               | ↓independency         |
| Microservice greedy            | ↓maintainable         |
| Focus on latest technologies   |                       |
| Lack of microservice skeleton  | ↑time，↑error         |
| No DevOps tools                | ↑error                |
| Too many technologies          |                       |
| Cyclic dependency              | ↓maintain，↓reuse     |
| ESB usage                      | ↑complexity           |
| No API gateway                 | ↓maintenance          |
| Shared libraries               | ↓independence         |
| API versioning                 |                       |
| Hardcoded endpoints            |                       |
| Inappropriate service intimacy | ↑coupling             |
| Mega service                   |                       |
| Local Logging                  |                       |

[13]are architectural smells independent from code smells

| Cyclic Dependency | ↓maintain，↓reuse |
| ----------------- | ----------------- |

[14]revisiting the practices and pains of microservice architecture in reality: an industrial inquiry

| Chaotic independence                                         | ↓availability,↑complexity，↓performance，↓test |
| ------------------------------------------------------------ | ---------------------------------------------- |
| Inadequate automation                                        | ↑time-consuming                                |
| Unsatisfying monitoring and logging                          | ↑time-consuming                                |
| Subjective microservices-oriented decomposition without an effective guide | ↑time                                          |



[15]Specification and detection of SOA antipatterns in web services

| Ambiguous Name           | time，availability                      |
| ------------------------ | --------------------------------------- |
| Chatty Web Service       | maintenance，performance，time          |
| CRUDy Interface          |                                         |
| Data Web Service         |                                         |
| Duplicated Web Service,  |                                         |
| Fine Grained Web Service | complexity,usability,cohesive.          |
| God Object Web Service   | availability,reusability,cohesive,time. |
| Low Cohesive Operations  | cohesive.                               |

[16]UniDoSA: The Unified Specification and Detection of Service Antipatterns

| Ambiguous Name              | discoverability，re-usability            |
| --------------------------- | ---------------------------------------- |
| Bloated Service             | maintainability，testability,reusability |
| Multi Service（God Object） | time，available                          |
| Tiny Service                | usability，complexity                    |
| Nobody Home                 | coupled                                  |
| CRUDy Interface             |                                          |
| Sand Pile                   | cohesion                                 |
| Ignoring MIME Types         | accessibility，reusability               |
| Chatty Web Service          | maintenance，performance，time           |

[17] Investigating the Change-proneness of Service Patterns and Antipatterns

| Bloated Service    |      |
| ------------------ | ---- |
| Bottleneck Service |      |
| God Component      |      |
| Multi Service      |      |
| Nobody Home        |      |
| Service Chain      |      |
| The Knot           |      |
| Tiny Service       |      |

[18] refactoring code-first web services for early avoiding wsdl anti-patterns: approach and comprehensive assessment

| Low cohesive operations |      |
| ----------------------- | ---- |
| Ambiguous names         |      |
| Whatever types          |      |
| Empty messages          |      |

[19]towards microservice smells detection

| Cyclic Dependency    | maintain，reuse      |
| -------------------- | -------------------- |
| Hard-Coded Endpoints |                      |
| Shared Persistence   | independence，couple |

[20] a microservices quality model based on microservices anti-patterns

| API Versioning                 | understandability，modifiability                             |
| ------------------------------ | ------------------------------------------------------------ |
| Too Many Standards             | understandability，modifiablity                              |
| Cyclic Dependency              | understandability，reusability，modifiability，modularity，scalability，reliability |
| Shared Libraries               | modularity，modifiability，Fault tolerance                   |
| Wrong Cuts                     | modularity，modifiability，scalability，understandability    |
| Microservice   Greedy          | modularity，Modifiability，understandability，reusability，scalability |
| Hard-Coded Endpoints           | scalability，modifiability                                   |
| Shared Persistency             | modularity，modifiability，confidentiality，Fault tolerance  |
| Inappropriate Service Intimacy | modularity,modifiability,confidentiality,fault tolerance，   |
| ESB Usage                      | understandability,modifiability,fault tolerance，scalability |
| Not Having an API Gateway      | understandability，modifiability                             |

[21] An Approach for Evaluating the Potential Impact of Anti-Patterns on Microservices Performance

| Bottleneck                     |      |
| ------------------------------ | ---- |
| Long Chain of Responsibilities |      |
| Megaservice                    |      |
| Nanoservice                    |      |

[22] automated code-smell detection in microservices through static analysis: a case study

| ESB Usage                      |               |
| ------------------------------ | ------------- |
| Too Many Standards             |               |
| Wrong Cuts                     |               |
| Not Having an API Gateway      |               |
| Hard-Coded Endpoints           | scalability.  |
| API Versioning                 | track         |
| Microservice Greedy            | complexity    |
| Shared Persistency             |               |
| Inappropriate Service Intimacy |               |
| Shared Libraries               | resistant     |
| Cyclic Dependency              | understanding |

[23] Automated microservice code-smell detection

| ESB Usage                      |               |
| ------------------------------ | ------------- |
| Too Many Standards             |               |
| Wrong Cuts                     |               |
| Not Having an API Gateway      |               |
| Hard-Coded Endpoints           | scalability.  |
| API Versioning                 | track         |
| Microservice Greedy            | complexity    |
| Shared Persistency             |               |
| Inappropriate Service Intimacy |               |
| Shared Libraries               | resistant     |
| Cyclic Dependency              | understanding |

[24] detection of web service anti-patterns using weighted extreme learning machine

| God object web service | reuse，testing |
| ---------------------- | -------------- |
| Data web service       |                |
| Chatty web service     |                |
| Ambiguous web service  |                |

[25] freshening the air in microservices: resolving architectural smells via refactoring

| No API gateway                     |                    |
| ---------------------------------- | ------------------ |
| Endpoint-based service interaction | resources          |
| Wobbly service interaction         | tolerating failure |
| Shared persistence                 |                    |

[26]identifying anti-patterns in distributed systems with heterogeneous dependencies

| Retiring Components.      | complexity  |
| ------------------------- | ----------- |
| **Team coupling**         |             |
| Data Coupling             |             |
| **Evolutionary Coupling** |             |
| Unstable API              | unstable    |
| Crossing API              | error-prone |

[27] impacts, causes, and solutions of architectural smells in microservices: an industrial investigation

| Hub-like dependency     | modularity，modifiability，analyzability              |
| ----------------------- | ----------------------------------------------------- |
| Cyclic Dependency       | modularity，modifiability，analyzability，Testability |
| Unstable Dependency     | modularity，analyzability                             |
| Concern overload        | modifiability，analyzability                          |
| Scattered functionality | modularity，analyzability                             |
| Modularity violation    | modularity，modifiability，analyzability，Testability |

[28]kubehound: detecting microservices' security smells in kubernetes deployments

| Insufficient Access Control                   | Confidentiality                           |
| --------------------------------------------- | ----------------------------------------- |
| Publicly Accessible Microservices             | Confidentiality                           |
| Unnecessary Privileges to Microservices       | Confidentiality，Integrity                |
| Own Crypto Code                               | Confidentiality, Integrity, Authenticity  |
| Non-Encrypted Data Exposure                   | Confidentiality， Integrity               |
| Hardcoded Secrets                             | Confidentiality， Integrity               |
| Non-Secured Service-to-Service Communications | Confidentiality, Integrity,  Authenticity |
| Unauthenticated Traffic                       | Authenticity                              |
| Multiple User Authentication                  | Authenticity                              |
| Centralised Authorisation                     | Authenticity                              |
|                                               |                                           |
|                                               |                                           |

[29] kubernetes-enabled detection and resolution of architectural smells for microservices

| multiple services per deployment unit |         |
| ------------------------------------- | ------- |
| endpoint-based service interaction    |         |
| no API gateway                        |         |
| wobbly service interaction            | failure |

[30] microservices smell detection through dynamic analysis

| No API Gateway     | complexity，maintenance. |
| ------------------ | ------------------------ |
| Shared Persistence | independence             |
| Cyclic Dependency  | scale，independent，     |

[31] On the Value of Quality of Service Attributes for Detecting Bad Design Practices

| God object Web service   |             |
| ------------------------ | ----------- |
| fine-grained Web service | maintenance |
| Data Web service         | cohesion    |
| Ambiguous Web service    |             |
| Redundant PortTypes      |             |
| CRUDy Interface          |             |

[32] reducing incidents in microservices by repaying architectural technical debt

| Poor dead-letter queue growth management                     |                              |
| ------------------------------------------------------------ | ---------------------------- |
| Microservice coupling                                        | failures,                    |
| Lack of communication standards among microservices          | incident                     |
| Use of business logic in communication among services        | incident                     |
| Unnecessary diversity in the technologies chosen to handle communication among the services | complexity,incidents         |
| Many services using different versions of the same internal shared libraries, | incompatibilities，incidents |

[33] Tool Support for the Migration to Microservice Architecture: An Industrial Case Study

| Unstable Dependency |      |
| ------------------- | ---- |
| Hub-Like Dependency |      |
| Cyclic Dependency   |      |

[34]  towards an architectural debt Index

| Unstable Dependency               |                 |
| --------------------------------- | --------------- |
| Hub-Like Dependency               |                 |
| Cyclic Dependency                 | maintain，reuse |
| Implicit Cross Package Dependency |                 |

[35]  Quality Assurance for Microservice Architectures

| Hard-Coded Endpoints    |                         |
| ----------------------- | ----------------------- |
| Shared Persistence      | independence.           |
| Wrong Cut               |                         |
| Cyclic Dependencies     | maintain，reused        |
| Nano Service            |                         |
| Mega Service            | test，maintenance       |
| Shared Libraries        | independent，deployable |
| Too many standards      |                         |
| **Too new technology**  |                         |
| **Manual Anti-pattern** |                         |
| NO CI/CD                | time                    |
| No API Gateway          | maintain.               |
| Timeouts                |                         |
| No API Versioning       |                         |
| **No Health Check**     | unavailable             |
| Local Logging           |                         |
| Insufficient Monitoring | maintenance，tracking   |

[36]  Microservice Patterns and Best Practices

[37]  Microservices Best Practices for Java

[38]  Spring Microservices in Action

[39]  Microservices Security in Action

[40]  Microservices Antipatterns and Pitfalls
