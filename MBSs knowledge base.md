## Internal Design

#### API design

- **Poor Restful Api Design**
  - Alias：Inadequate Use of APIs

  - Description：It refers to the issue of utilizing RESTful-style APIs in microservice architectures that are poorly designed or lack coherence. For instance, the APIs have inconsistent naming conventions, making them difficult to comprehend. The utilization of HTTP request methods (GET, POST, PUT, DELETE, etc.) to represent various resource operations is illogical, and these methods are inconsistent with the specific business logic. API versions are often misused or managed in an unreasonable manner, posing challenges for backward compatibility. Additionally, the APIs fail to offer appropriate error status codes, error messages, or error-handling mechanisms for managing errors and exceptions, thereby impeding the client's ability to accurately identify and handle error conditions.

  - Detection：Identification of naming conformity using camel case conventions and other methods. Verification of request method consistency with business logic using rule-based approaches. Identification of API version problems using regular expression matching techniques.

  - Consequence: Inadequate response results may fail to meet expectations, thereby diminishing the system's **interaction capability**. Negative impacts of inadequate naming and improper utilization of HTTP verbs include decreased **maintainability** and increased maintenance effort. Lack of standardized versioning hampers compatibility and complicates achieving backward **compatibility**.

  - Cause: Inappropriate utilization of APIs, disregard for naming conventions, failure to adhere to verb usage in RESTful APIs, and inadequate API version control. 

  - Example: Violating RESTful API design conventions, an item is added to the cart using a POST request instead of a PUT request.

  - Sources：["@article{de2021identifying,  title={Identifying architectural technical debt, principal, and interest in microservices: A multiple-case study},  author={de Toledo, Saulo S and Martini, Antonio and Sj{\o}berg, Dag IK},  journal={Journal of Systems and Software},  volume={177},  pages={110968},  year={2021},  publisher={Elsevier}}","@article{de2022accumulation,  title={Accumulation and prioritization of architectural debt in three companies migrating to microservices},  author={De Toledo, Saulo Soares and Martini, Antonio and Nguyen, Phu H and Sj{\o}berg, Dag IK},  journal={IEEE Access},  volume={10},  pages={37422--37445},  year={2022},  publisher={IEEE}}"]

  - Categories：["Internal design","API design"]

  - Related smells:[[
    {
      "relation": "relates",
      "name": "No API Versioning"
    }
    ]

  - Factor：14
- **CRUDY Interface**
  - Alias：
  - Description：The service is encouraged to adopt an RPC-like behavior by implementing CRUD-type operations, such as create_A(), read_B(). However, this approach may result in the service resembling a gossip service or a nano-service, and the direct exposure of CRUD operations in the interface name introduces certain risks.
  - Detection: Establish rules to identify interface naming patterns and determine if they correspond to CRUD operations.
  - Consequence: The rapid proliferation of interfaces can lead to a decrease in Maintainability, an increase in the complexity and effort of testing, and a reduction in Testability. Additionally, the use of CRUD interface naming can expose sensitive operations, compromising the system's security . Furthermore, it becomes challenging to modify the data model, thereby limiting Adaptability.
  - Cause: The reasons behind these issues include an excessive emphasis on data manipulation, a lack of domain-driven design thinking, and a failure to consider the system as a whole.
  - Example: A user creation interface named create_User() is utilized.
  - Sources：["@inproceedings{palma2015study,  title={A study on the taxonomy of service antipatterns},  author={Palma, Francis and Mohay, Naouel},  booktitle={2015 IEEE 2nd International Workshop on Patterns Promotion and Anti-patterns Prevention (PPAP)},  pages={5--8},  year={2015},  organization={IEEE}}","@inproceedings{wang2017value,   title={On the value of quality of service attributes for detecting bad design practices},   author={Wang, Hanzhang and Kessentini, Marouane and Hassouna, Taghreed and Ouni, Ali},   booktitle={2017 IEEE International Conference on Web Services (ICWS)},   pages={341--348},   year={2017},   organization={IEEE} }"]
  - Categories：["Internal design","API design"]
  - Related smells：[]
  - Factor：5
- **Ambiguous Service**
  - Alias：["Ambiguous Name"，"Ambiguous Interfface"]
  - Description: Service or interface names that are overly generic pose challenges in discerning the extent of functional responsibilities.
  - Detection: Establish rules for detecting service (interface) naming patterns.
  - Consequence: This will diminish modularity.
  - Cause: Ambiguous naming arises from a lack of clearly defined requirements.
  - Example: Initially, the microservice named ProcessService was utilized for processing order information. However, as the business expanded, additional functions related to logistics information were incorporated without clearly defining the functional boundaries.
  - Sources：["@inproceedings{palma2015study,  title={A study on the taxonomy of service antipatterns},  author={Palma, Francis and Mohay, Naouel},  booktitle={2015 IEEE 2nd International Workshop on Patterns Promotion and Anti-patterns Prevention (PPAP)},  pages={5--8},  year={2015},  organization={IEEE}}","@inproceedings{azadi2019architectural,  title={Architectural smells detected by tools: a catalogue proposal},  author={Azadi, Umberto and Fontana, Francesca Arcelli and Taibi, Davide},  booktitle={2019 IEEE/ACM International Conference on Technical Debt (TechDebt)},  pages={88--97},  year={2019},  organization={IEEE}}","@inproceedings{palma2014specification,   title={Specification and detection of SOA antipatterns in web services},   author={Palma, Francis and Moha, Naouel and Tremblay, Guy and Gu{\'e}h{\'e}neuc, Yann-Ga{\"e}l},   booktitle={Software Architecture: 8th European Conference, ECSA 2014, Vienna, Austria, August 25-29, 2014. Proceedings 8},   pages={58--73},   year={2014},   organization={Springer} }","@article{coscia2014refactoring,   title={Refactoring code-first Web Services for early avoiding WSDL anti-patterns: Approach and comprehensive assessment},   author={Coscia, Jos{\'e} Luis Ordiales and Mateos, Cristian and Crasso, Marco and Zunino, Alejandro},   journal={Science of Computer Programming},   volume={89},   pages={374--407},   year={2014},   publisher={Elsevier} }","  @article{tummalapalli2022detection,   title={Detection of web service anti-patterns using weighted extreme learning machine},   author={Tummalapalli, Sahithi and Kumar, Lov and Neti, Lalita Bhanu Murthy and Krishna, Aneesh},   journal={Computer Standards \& Interfaces},   volume={82},   pages={103621},   year={2022},   publisher={Elsevier} }","@inproceedings{wang2017value,   title={On the value of quality of service attributes for detecting bad design practices},   author={Wang, Hanzhang and Kessentini, Marouane and Hassouna, Taghreed and Ouni, Ali},   booktitle={2017 IEEE International Conference on Web Services (ICWS)},   pages={341--348},   year={2017},   organization={IEEE} }"]
  - Categories：["Internal design","API design"]
  - Related smells：[]
  - Factor：1
- **Bloated Service**
  - 别名：
  - Description: The service exhibits a large interface with an excessive number of parameters, and it carries out diverse and heterogeneous operations within this interface, resulting in low cohesion between these operations.
  - Detection: Formulate rules to extract metrics such as interface size, parameter count, and operation heterogeneity in order to make determinations.
  - Consequence: This leads to diminished Maintainability, Reusability, and Testability. Additionally, the low cohesion between operations adversely affects Modularity.
  - Cause: These issues arise from a lack of domain-driven design and unreasonable interface design.
  - Example: The ProductService microservice features an API interface named searchProducts, which encompasses 8 parameters (e.g., keyword, category, etc.) and conducts heterogeneous operations in conjunction with other interfaces.
  - 来源：["@inproceedings{palma2015study,  title={A study on the taxonomy of service antipatterns},  author={Palma, Francis and Mohay, Naouel},  booktitle={2015 IEEE 2nd International Workshop on Patterns Promotion and Anti-patterns Prevention (PPAP)},  pages={5--8},  year={2015},  organization={IEEE}}","  @inproceedings{palma2014specification,   title={Specification and detection of SOA antipatterns in web services},   author={Palma, Francis and Moha, Naouel and Tremblay, Guy and Gu{\'e}h{\'e}neuc, Yann-Ga{\"e}l},   booktitle={Software Architecture: 8th European Conference, ECSA 2014, Vienna, Austria, August 25-29, 2014. Proceedings 8},   pages={58--73},   year={2014},   organization={Springer} }","@inproceedings{palma2014investigating,   title={Investigating the change-proneness of service patterns and antipatterns},   author={Palma, Francis and An, Le and Khomh, Foutse and Moha, Naouel and Gu{\'e}h{\'e}neuc, Yann-Ga{\"e}l},   booktitle={2014 IEEE 7th International Conference on Service-Oriented Computing and Applications},   pages={1--8},   year={2014},   organization={IEEE} }"]
  - 类别：["Internal design","API design"]
  - 相关异味：[]
  - 影响力：5
- **Whatever types**
  - Alias：Ignoring MIME Types
  - Description: The server disregards the client's requirements and capabilities when delivering resources, consistently providing them in a single format.
  - Detection: Analyze the returned response from the microservice to determine if it is consistently stored in a single Content-Type.
  - Consequence: This leads to a single representation of the resource, thereby diminishing its Reliability.
  - Cause: This stems from disregarding the client's needs and processing capabilities.
  - Example: Regardless of the client's requested resource type, every API of ProductService consistently returns a response with a Content-Type of application/json.
  - Sources：["@article{palma2018unidosa,   title={UniDoSA: the unified specification and detection of service antipatterns},   author={Palma, Francis and Moha, Naouel and Gu{\'e}h{\'e}neuc, Yann-Ga{\"e}l},   journal={IEEE Transactions on Software Engineering},   volume={45},   number={10},   pages={1024--1053},   year={2018},   publisher={IEEE} }","@article{coscia2014refactoring,   title={Refactoring code-first Web Services for early avoiding WSDL anti-patterns: Approach and comprehensive assessment},   author={Coscia, Jos{\'e} Luis Ordiales and Mateos, Cristian and Crasso, Marco and Zunino, Alejandro},   journal={Science of Computer Programming},   volume={89},   pages={374--407},   year={2014},   publisher={Elsevier} }"]
  - 类别：["Internal design","API design"]
  - 相关异味：[]
  - 影响力：4
- **No API Versioning**
  - Alias：
  - Descriptions: This indicates that the URI of the API interface does not contain explicitly specified semantic version information.
  - Detection: Develop a regular expression that matches the semantic version of the API, and subsequently extract and analyze the complete URL of the API to identify the presence of semantic versioning.
  - Consequence: The lack of semantic version information hinders the coexistence of different service versions, thereby impacting analysability and diminishing modifiability.
  - Cause: This arises from the failure to consider backward compatibility.
  - Example: The GET method is used to request /api/travelservice/routes/{tripId}, which retrieves trip information based on the tripId. However, this URI does not include the necessary semantic versioning information for the API.
  - Sources：["@article{taibi2018definition,  title={On the definition of microservice bad smells},  author={Taibi, Davide and Lenarduzzi, Valentina},  journal={IEEE software},  volume={35},  number={3},  pages={56--62},  year={2018},  publisher={IEEE}}","@article{taibi2020microservices,   title={Microservices anti-patterns: A taxonomy},   author={Taibi, Davide and Lenarduzzi, Valentina and Pahl, Claus},   journal={Microservices: Science and Engineering},   pages={111--128},   year={2020},   publisher={Springer} }","  @inproceedings{pulnil2022microservices,   title={A microservices quality model based on microservices anti-patterns},   author={Pulnil, Sermsook and Senivongse, Twittie},   booktitle={2022 19th International Joint Conference on Computer Science and Software Engineering (JCSSE)},   pages={1--6},   year={2022},   organization={IEEE}}","@article{walker2020automated,   title={Automated code-smell detection in microservices through static analysis: A case study},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   journal={Applied Sciences},   volume={10},   number={21},   pages={7800},   year={2020},   publisher={MDPI} }","@inproceedings{walker2021automated,   title={Automated microservice code-smell detection},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   booktitle={Information Science and Applications: Proceedings of ICISA 2020},   pages={211--221},   year={2021},   organization={Springer} }","  @inproceedings{schirgi2021quality,   title={Quality assurance for microservice architectures},   author={Schirgi, Thomas and Brenner, Eugen},   booktitle={2021 IEEE 12th International Conference on Software Engineering and Service Science (ICSESS)},   pages={76--80},   year={2021},   organization={IEEE} }"]
  - 类别：["Internal design","API design"]
  - 相关异味：[]
  - 影响力：2
- **Unstable API**
  - 别名：
  - Description: Unstable APIs are susceptible to frequent changes and errors throughout the evolution of microservices.
  - Detection: Determined by analyzing the revision history.
  - Consequence: The frequent modification of APIs, coupled with high error rates, diminishes both Reliability and Modifiability.
  - Cause: This arises from both immature design and changes in requirements.
  - Example: In the initial release, certain endpoints of the API may have contained security vulnerabilities, potentially allowing unauthorized access to sensitive information. To mitigate this issue, the development team modified the API to implement more stringent authentication and authorization mechanisms. However, due to the unstable design of the API, the team discovered additional security vulnerabilities in subsequent versions, necessitating further modifications to the API. These frequent modifications not only consumed development resources but also resulted in an unstable API that heightened the risk of errors.
  - 来源：["@inproceedings{fang2023identifying,
    title={Identifying Anti-Patterns in Distributed Systems With Heterogeneous Dependencies},
    author={Fang, Hongzhou and Cai, Yuanfang and Kazman, Rick and Lefever, Jason},
    booktitle={2023 IEEE 20th International Conference on Software Architecture Companion (ICSA-C)}, pages={116--120}, year={2023}, organization={IEEE}}"]
  - 类别：["Internal design","API design"]
  - 相关异味：[]
  - 影响力：5
- **Crossing API**
  - 别名：

  - Descriptions: The API exhibits high fan-in and fan-out, making it susceptible to frequent modifications and prone to errors.

  - Detection: Extract the fan-in and fan-out indicators of the API and combine them with the modification history and system logs to make a comprehensive assessment.

  - Consequence: The ease of modification and proneness to errors result in low **reliability** and **modifiability**.

  - Reason: This is attributed to improper module division and changes in requirements.

  - Example: Consider an e-commerce system that includes an API for an order service, which is utilized by various microservices such as a user service, a payment service, and an inventory service. Additionally, the API itself invokes other services to fulfill different stages of order processing. Throughout the system's evolution, the API for the order service frequently requires modifications and adaptations due to changing requirements. Given its high fan-in and fan-out, these modifications often involve multiple callers and callees. For instance, when the Order Service needs to introduce a new order state, it may necessitate adjustments to the processing logic of the caller and ensuring that the callee can correctly handle the new state. The frequent modifications and interactions across multiple components escalate the complexity and challenges in maintaining the system, thereby diminishing its maintainability and fault tolerance.

  - 来源：["@inproceedings{fang2023identifying,
    title={Identifying Anti-Patterns in Distributed Systems With Heterogeneous Dependencies},
    author={Fang, Hongzhou and Cai, Yuanfang and Kazman, Rick and Lefever, Jason},
    booktitle={2023 IEEE 20th International Conference on Software Architecture Companion (ICSA-C)}, pages={116--120}, year={2023}, organization={IEEE}}"]

  - 类别：["Internal design","API design"]

  - 相关异味：[]

  - 影响力：5
- **Dismiss documentation**
  - 别名：
  - Description: The lack of comprehensive documentation that includes detailed descriptions of APIs indicates a tendency to trivialize or neglect the importance of documentation.
  - Detection: Detection involves scanning source packages for files in the md format.
  - Consequence: Insufficient documentation for API Descriptions has a negative impact on the system's **availability** and **maintainability**. Moreover, the absence of accurate documentation as a guide hinders the system's **adaptability** when adapting to new requirements.
  - Cause: This is attributed to a lack of awareness regarding the importance of documentation and disregard for its value.
  - Example: For example, there is a lack of documentation for Descriptions of APIs related to food and food orders in the food service.
  - 来源：["@article{balalaie2018microservices,   title={Microservices migration patterns},   author={Balalaie, Armin and Heydarnoori, Abbas and Jamshidi, Pooyan and Tamburri, Damian A and Lynn, Theo},   journal={Software: Practice and Experience},   volume={48},   number={11},   pages={2019--2042},   year={2018},   publisher={Wiley Online Library}}"]
  - 类别：["Internal design","API design"]
  - 相关异味:[]
  - 影响力：7

#### Method Design

- **Low Cohesive Operations**
  - 别名：
  - Descriptions: Developers often consolidate low cohesion operations within a single service, resulting in an accumulation of excessive code where each operation functions independently and performs unrelated tasks.
  - Detection：Determination based on the functional relationship between the different methods.
  - Consequence: Low cohesion operations tend to cluster together, resulting in a reduction of **modularity**.
  - Cause: The lack of clear definition of the functional scope of the service during the functional design phase is the underlying cause.
  - Example: For instance, in the context of a financial service, if there is a method dedicated to sending email notifications, it would be considered a low cohesion operation. The functionality for sending emails should ideally be part of a specialized notification service or mail service, separate from the finance service.
  - 来源：["@inproceedings{palma2015study,  title={A study on the taxonomy of service antipatterns},  author={Palma, Francis and Mohay, Naouel},  booktitle={2015 IEEE 2nd International Workshop on Patterns Promotion and Anti-patterns Prevention (PPAP)},  pages={5--8},  year={2015},  organization={IEEE}}","@inproceedings{palma2014specification,   title={Specification and detection of SOA antipatterns in web services},   author={Palma, Francis and Moha, Naouel and Tremblay, Guy and Gu{\'e}h{\'e}neuc, Yann-Ga{\"e}l},   booktitle={Software Architecture: 8th European Conference, ECSA 2014, Vienna, Austria, August 25-29, 2014. Proceedings 8},   pages={58--73},   year={2014},   organization={Springer} }","  @article{coscia2014refactoring,   title={Refactoring code-first Web Services for early avoiding WSDL anti-patterns: Approach and comprehensive assessment},   author={Coscia, Jos{\'e} Luis Ordiales and Mateos, Cristian and Crasso, Marco and Zunino, Alejandro},   journal={Science of Computer Programming},   volume={89},   pages={374--407},   year={2014},   publisher={Elsevier}}"]
  - 类别：["Internal design","Method design"]
  - 相关异味：[]
  - 影响力：1
- **Stovepipe Service**
  - 别名：
  - Descriptions: It refers to a service that contains a significant number of private or protected methods primarily dedicated to utility functionality, such as logging, rather than the main operational goal.
  - Detection: It involves a combined assessment of access modifiers and method functionality.
  - Consequence: This results in heightened code complexity and diminished **maintainability**. Furthermore, the overall structure and functionality of the service become challenging to comprehend, impeding **learnability**. Additionally, it becomes difficult to fulfill the expansion requirements of the system, thus limiting **adaptability**.
  - Reason: The absence of clear definition and separation of concerns during service design leads to the mixing of utility functions unrelated to the core operational goals.
  - Example: For instance, in the order service code, there is a significant presence of private or protected methods dedicated to utility functions, such as logging the order creation process and sending notifications like email or SMS.
  - 来源：["@inproceedings{palma2015study,  title={A study on the taxonomy of service antipatterns},  author={Palma, Francis and Mohay, Naouel},  booktitle={2015 IEEE 2nd International Workshop on Patterns Promotion and Anti-patterns Prevention (PPAP)},  pages={5--8},  year={2015},  organization={IEEE}}"]
  - 类别：["Internal design","Method design"]
  - 相关异味：[]
  - 影响力：7
- **Data Service**
  - 别名：Data coupling
  - Descriptions：It refers to a service primarily composed of accessor methods (e.g., getter/setter) characterized by high data cohesion. Its methods primarily handle small and basic types of parameters. Due to the absence of business logic, these services often serve other services.
  - Detection: The detection process involves extracting the method names within the service and formulating rules to assess them.
  - Consequence: Modifying or adjusting these methods may require altering a significant number of calling codes simultaneously, resulting in diminished **adaptability** and **maintainability**. This can also introduce errors more easily and reduce the **fault tolerance** of the system.
  - Cause: This is primarily due to an excessive focus on data operations, resulting in a lack of encapsulation of domain logic.
  - Example: For example, CustomerServiceImpl is a data service class encompassing private data fields (e.g., customerId, customerName, age, and address) and accessor methods (i.e., getter/setter) for accessing and modifying these fields. This data service class primarily focuses on data manipulation and lacks extensive business logic. It resembles more of a basic data container than a service class with robust functionality and domain logic.
  - 来源：["@inproceedings{palma2015study,  title={A study on the taxonomy of service antipatterns},  author={Palma, Francis and Mohay, Naouel},  booktitle={2015 IEEE 2nd International Workshop on Patterns Promotion and Anti-patterns Prevention (PPAP)},  pages={5--8},  year={2015},  organization={IEEE}}","  @article{tummalapalli2022detection,   title={Detection of web service anti-patterns using weighted extreme learning machine},   author={Tummalapalli, Sahithi and Kumar, Lov and Neti, Lalita Bhanu Murthy and Krishna, Aneesh},   journal={Computer Standards \& Interfaces},   volume={82},   pages={103621},   year={2022},   publisher={Elsevier} }","@inproceedings{fang2023identifying,   title={Identifying Anti-Patterns in Distributed Systems With Heterogeneous Dependencies},   author={Fang, Hongzhou and Cai, Yuanfang and Kazman, Rick and Lefever, Jason},   booktitle={2023 IEEE 20th International Conference on Software Architecture Companion (ICSA-C)},   pages={116--120},   year={2023},   organization={IEEE} }","@inproceedings{wang2017value,   title={On the value of quality of service attributes for detecting bad design practices},   author={Wang, Hanzhang and Kessentini, Marouane and Hassouna, Taghreed and Ouni, Ali},   booktitle={2017 IEEE International Conference on Web Services (ICWS)},   pages={341--348},   year={2017},   organization={IEEE} }"]
  - 相关异味：[]
  - 影响力：7

#### Granularity Design

- **Nano microservice**

  - 别名：["Excessive number of small products"，"Fine grained web service", "Tiny service"]

  - Description: This term refers to highly streamlined microservices, indicating that the microservice's granularity is excessively fine and typically encompasses limited functionality and data processing capabilities.

  - Detection: The detection process is based on comprehensive assessments, including the number of service entities, lines of code, number of files, number of APIs, and other factors.

  - Consequence: The proliferation of nanoservices amplifies the overall system complexity and coupling, compromising **maintainability**, **interaction capability**, and **modularity**.

  - Cause：This is primarily caused by an excessive refinement of the domain model or an overemphasis on the decoupling of microservices.

  - Example: These services possess minimal functionality and are specifically designed to address narrow, specific problems. For instance, a file upload service is a dedicated microservice responsible for handling file uploads and storage, tasked with receiving files and storing them in the appropriate location.

  - 来源：["@article{de2021identifying,  title={Identifying architectural technical debt, principal, and interest in microservices: A multiple-case study},  author={de Toledo, Saulo S and Martini, Antonio and Sj{\o}berg, Dag IK},  journal={Journal of Systems and Software},  volume={177},  pages={110968},  year={2021},  publisher={Elsevier}}","@inproceedings{palma2015study,  title={A study on the taxonomy of service antipatterns},  author={Palma, Francis and Mohay, Naouel},  booktitle={2015 IEEE 2nd International Workshop on Patterns Promotion and Anti-patterns Prevention (PPAP)},  pages={5--8},  year={2015},  organization={IEEE}}","  @inproceedings{palma2014specification,   title={Specification and detection of SOA antipatterns in web services},   author={Palma, Francis and Moha, Naouel and Tremblay, Guy and Gu{\'e}h{\'e}neuc, Yann-Ga{\"e}l},   booktitle={Software Architecture: 8th European Conference, ECSA 2014, Vienna, Austria, August 25-29, 2014. Proceedings 8},   pages={58--73},   year={2014},   organization={Springer} }","  @inproceedings{palma2014investigating,   title={Investigating the change-proneness of service patterns and antipatterns},   author={Palma, Francis and An, Le and Khomh, Foutse and Moha, Naouel and Gu{\'e}h{\'e}neuc, Yann-Ga{\"e}l},   booktitle={2014 IEEE 7th International Conference on Service-Oriented Computing and Applications},   pages={1--8},   year={2014},   organization={IEEE} }","@inproceedings{matar2023approach,   title={An Approach for Evaluating the Potential Impact of Anti-Patterns on Microservices Performance},   author={Matar, Raghad and Jahi{\'c}, Jasmin},   booktitle={2023 IEEE 20th International Conference on Software Architecture Companion (ICSA-C)},   pages={167--170},   year={2023},   organization={IEEE} }","@inproceedings{wang2017value,   title={On the value of quality of service attributes for detecting bad design practices},   author={Wang, Hanzhang and Kessentini, Marouane and Hassouna, Taghreed and Ouni, Ali},   booktitle={2017 IEEE International Conference on Web Services (ICWS)},   pages={341--348},   year={2017},   organization={IEEE} }"]

  - 类别：["Internal design","Granularity design"]

  - 相关异味:[[
    {
      "relation": "relates",
      "name": "Mega Service"
    },

    {
        "relation": "relates",
        "name": "Wrong Cuts"
      }

    ]

  - 影响力：13

- **Mega Microservice**

  - 别名：["God object web service", "Multi service", "God component","Concern overload"]

  - Descriptions: It refers to microservices that are excessively large and complex, indicating that the microservice's granularity is too coarse and it assumes an excessive number of responsibilities.

  - Detection: The detection method is based on comprehensive metrics assessments, including the number of service entities, lines of code, files, number of API, and other metrics.

  - Consequence: This leads to an increased risk of a single point of failure and a reduction in **Availability** and **Reliability**. It becomes challenging to meet response time and throughput requirements, which affects the **time-behaviour**. The presence of complex dependencies between components leads to increased coupling. Moreover, the lack of a proper modular design diminishes **modularity**, **modifiability**, and **analyzability**. The internal complexity also hampers **maintainability** and **testability**.

  - Cause：Incorrect service splitting results in an excessive coarsening of microservice partitioning.

  - Example: Consider an e-commerce system encompassing order management, inventory management, payment management, and user management. In this scenario, a typical Mega service might consolidate all these functions into a single, massive service. However, such a service comprises multiple unrelated functions, thereby increasing its complexity and making the code challenging to comprehend, maintain, and extend.

  - 来源：["@inproceedings{palma2015study,  title={A study on the taxonomy of service antipatterns},  author={Palma, Francis and Mohay, Naouel},  booktitle={2015 IEEE 2nd International Workshop on Patterns Promotion and Anti-patterns Prevention (PPAP)},  pages={5--8},  year={2015},  organization={IEEE}}","@inproceedings{azadi2019architectural,   title={Architectural smells detected by tools: a catalogue proposal},   author={Azadi, Umberto and Fontana, Francesca Arcelli and Taibi, Davide},   booktitle={2019 IEEE/ACM International Conference on Technical Debt (TechDebt)},   pages={88--97},   year={2019},   organization={IEEE} }","@article{taibi2020microservices,   title={Microservices anti-patterns: A taxonomy},   author={Taibi, Davide and Lenarduzzi, Valentina and Pahl, Claus},   journal={Microservices: Science and Engineering},   pages={111--128},   year={2020},   publisher={Springer} }","@inproceedings{palma2014specification,   title={Specification and detection of SOA antipatterns in web services},   author={Palma, Francis and Moha, Naouel and Tremblay, Guy and Gu{\'e}h{\'e}neuc, Yann-Ga{\"e}l},   booktitle={Software Architecture: 8th European Conference, ECSA 2014, Vienna, Austria, August 25-29, 2014. Proceedings 8},   pages={58--73},   year={2014},   organization={Springer} }","@inproceedings{palma2014investigating,   title={Investigating the change-proneness of service patterns and antipatterns},   author={Palma, Francis and An, Le and Khomh, Foutse and Moha, Naouel and Gu{\'e}h{\'e}neuc, Yann-Ga{\"e}l},   booktitle={2014 IEEE 7th International Conference on Service-Oriented Computing and Applications},   pages={1--8},   year={2014},   organization={IEEE} }","  @inproceedings{matar2023approach,   title={An Approach for Evaluating the Potential Impact of Anti-Patterns on Microservices Performance},   author={Matar, Raghad and Jahi{\'c}, Jasmin},   booktitle={2023 IEEE 20th International Conference on Software Architecture Companion (ICSA-C)},   pages={167--170},   year={2023},   organization={IEEE} }","@article{tummalapalli2022detection,   title={Detection of web service anti-patterns using weighted extreme learning machine},   author={Tummalapalli, Sahithi and Kumar, Lov and Neti, Lalita Bhanu Murthy and Krishna, Aneesh},   journal={Computer Standards \& Interfaces},   volume={82},   pages={103621},   year={2022},   publisher={Elsevier} }","  @article{zhong2022impacts,   title={Impacts, causes, and solutions of architectural smells in microservices: An industrial investigation},   author={Zhong, Chenxing and Huang, Huang and Zhang, He and Li, Shanshan},   journal={Software: Practice and Experience},   volume={52},   number={12},   pages={2574--2597},   year={2022},   publisher={Wiley Online Library} }","  @inproceedings{wang2017value,   title={On the value of quality of service attributes for detecting bad design practices},   author={Wang, Hanzhang and Kessentini, Marouane and Hassouna, Taghreed and Ouni, Ali},   booktitle={2017 IEEE International Conference on Web Services (ICWS)},   pages={341--348},   year={2017},   organization={IEEE} }","@inproceedings{schirgi2021quality,   title={Quality assurance for microservice architectures},   author={Schirgi, Thomas and Brenner, Eugen},   booktitle={2021 IEEE 12th International Conference on Software Engineering and Service Science (ICSESS)},   pages={76--80},   year={2021},   organization={IEEE} }"]

  - 类别：["Internal design","Granularity design"]

  - 相关异味:[[
    {
      "relation": "relates",
      "name": "Nano Service"
    },

    {
        "relation": "relates",
        "name": "Wrong Cuts"
      }

    ]

  - 影响力：10



# Communication & Interaction

#### Communication

- **Insufficient message traceability**

  - Alias：
  - Descriptions: This term refers to the absence of adequate traceability and observability of messages exchanged between microservices.
  - Detection：Analyze logs or implement interceptors to identify specific fields within messages.
  - Consequence: Insufficient traceability of messages diminishes the system's analyzability, complicating monitoring and troubleshooting processes.
  - Cause: This is primarily caused by developers not adequately considering the necessity of message tracing or disregarding the significance of logging.
  - Example: For instance, if the order service lacks a sufficient message tracking mechanism, it becomes challenging to trace the order processing workflow, including order creation, payment, and delivery. This may result in troubleshooting difficulties related to order processing issues, such as lost orders or duplicate processing.
  - 来源：["@article{de2021identifying,  title={Identifying architectural technical debt, principal, and interest in microservices: A multiple-case study},  author={de Toledo, Saulo S and Martini, Antonio and Sj{\o}berg, Dag IK},  journal={Journal of Systems and Software},  volume={177},  pages={110968},  year={2021},  publisher={Elsevier}}"]
  - 相关异味:[]
  - 影响力：1

- **Use of complex API calls when messaging is a simpler solution**

  - 别名：
  - Descriptions: It refers to the utilization of synchronous calls when asynchronous calls would be more suitable.
  - Detection：Analyze communication patterns and combine with code logic to make a comprehensive decision
  - Consequence: This leads to increased coupling between services, thereby diminishing the **testability** of the system.
  - Cause: This is primarily caused by misleading technology selection or a lack of design thinking.
  - Example: For instance, if the order service directly updates the data of the inventory service through intricate API calls, it intensifies the coupling between these services, rendering it more challenging for them to independently evolve and expand.
  - 来源：["@article{de2021identifying,  title={Identifying architectural technical debt, principal, and interest in microservices: A multiple-case study},  author={de Toledo, Saulo S and Martini, Antonio and Sj{\o}berg, Dag IK},  journal={Journal of Systems and Software},  volume={177},  pages={110968},  year={2021},  publisher={Elsevier}}"]
  - 类别：["Communication & Interaction","Communication"]
  - 相关异味:[]
  - 影响力：1

- **Use of business logic in communication among services**

  - 别名：Logic implemented in the communication layer
  - Descriptions: It pertains to the utilization of business logic within the communication layer of a service (such as message queues or transit components), resulting in data modifications during transmission.
  - Detection: The detection process involves identifying communication layer middleware, such as message queues or transit components, and analyzing whether they incorporate business logic.
  - Consequence: The dispersion of business logic within the communication layer diminishes the **analyzability** and **reliability** of the system. Modifying the business logic necessitates alterations in multiple locations, thereby reducing **maintainability**. It hampers the ability of services to expand, diminishing **adaptability**.
  - Cause: These issues primarily arise due to misleading technology selection or a lack of design thinking.
  - Example: For instance, when a user places an order, the order service can transmit the order information to a message queue. In this scenario, a portion of the inventory service's logic is executed within the message queue, allowing the inventory service to collaborate with the order service in completing the product inventory update.
  - 来源：["@article{de2021identifying,  title={Identifying architectural technical debt, principal, and interest in microservices: A multiple-case study},  author={de Toledo, Saulo S and Martini, Antonio and Sj{\o}berg, Dag IK},  journal={Journal of Systems and Software},  volume={177},  pages={110968},  year={2021},  publisher={Elsevier}}","@inproceedings{de2019architectural,   title={Architectural technical debt in microservices: a case study in a large company},   author={De Toledo, Saulo Soares and Martini, Antonio and Przybyszewska, Agata and Sj{\o}berg, Dag IK},   booktitle={2019 IEEE/ACM International Conference on Technical Debt (TechDebt)},   pages={78--87},   year={2019},   organization={IEEE} }","@inproceedings{de2021reducing,   title={Reducing Incidents in Microservices by Repaying Architectural Technical Debt},   author={de Toledo, Saulo S and Martini, Antonio and Sj{\o}berg, Dag IK and Przybyszewska, Agata and Frandsen, Johannes Skov},   booktitle={2021 47th Euromicro Conference on Software Engineering and Advanced Applications (SEAA)},   pages={196--205},   year={2021},   organization={IEEE} }"]
  - 类别：["Communication & Interaction","Communication"]
  - 相关异味:[]
  - 影响力：10

- **Hardcoded endpoints**

  - 别名：Endpoint-based service interactions
  - Descriptions: This term refers to the hard-coded endpoints in a service's code, typically in the form of IP:PORT, which enable direct communication with other services  or database.
  - Detection：Formulate a regular expression that matches IP:PORT, scanning source files for detection
  - Consequence: The presence of scattered hard-coded endpoint information throughout the code hinders the analysis of service dependencies, thereby reducing **analyzability**. Furthermore, any changes in the location of the target service (such as IP address or port number) require modifications to all services utilizing the hard-coded endpoint, which diminishes **scalability**. Additionally, if the service instance expands to multiple instances, the hardcoding restricts communication to just one instance, leading to resource wastage and a decline in **resource utilization**.
  - Cause:  lack of consideration for scalability and adaptability, as well as  lack of awareness regarding the associated problems and challenges.
  - Example: The Order Service directly sends HTTP requests (e.g., http://172.16.17.55:8080/v1/products) to the Merchandise Service using a hard-coded endpoint in order to retrieve product information.
  - 来源：["@article{taibi2018definition,   title={On the definition of microservice bad smells},   author={Taibi, Davide and Lenarduzzi, Valentina},   journal={IEEE software},   volume={35},   number={3},   pages={56--62},   year={2018},   publisher={IEEE} }","@article{taibi2020microservices,   title={Microservices anti-patterns: A taxonomy},   author={Taibi, Davide and Lenarduzzi, Valentina and Pahl, Claus},   journal={Microservices: Science and Engineering},   pages={111--128},   year={2020},   publisher={Springer} }","@inproceedings{pigazzini2020towards,   title={Towards microservice smells detection},   author={Pigazzini, Ilaria and Fontana, Francesca Arcelli and Lenarduzzi, Valentina and Taibi, Davide},   booktitle={Proceedings of the 3rd International Conference on Technical Debt},   pages={92--97},   year={2020} }","@inproceedings{pulnil2022microservices,   title={A microservices quality model based on microservices anti-patterns},   author={Pulnil, Sermsook and Senivongse, Twittie},   booktitle={2022 19th International Joint Conference on Computer Science and Software Engineering (JCSSE)},   pages={1--6},   year={2022},   organization={IEEE} }","@article{walker2020automated,   title={Automated code-smell detection in microservices through static analysis: A case study},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   journal={Applied Sciences},   volume={10},   number={21},   pages={7800},   year={2020},   publisher={MDPI} }","@inproceedings{walker2021automated,   title={Automated microservice code-smell detection},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   booktitle={Information Science and Applications: Proceedings of ICISA 2020},   pages={211--221},   year={2021},   organization={Springer} }","@inproceedings{brogi2020freshening,   title={Freshening the air in microservices: Resolving architectural smells via refactoring},   author={Brogi, Antonio and Neri, Davide and Soldani, Jacopo},   booktitle={Service-Oriented Computing--ICSOC 2019 Workshops: WESOACS, ASOCA, ISYCC, TBCE, and STRAPS, Toulouse, France, October 28--31, 2019, Revised Selected Papers 17},   pages={17--29},   year={2020},   organization={Springer} }","@inproceedings{soldani2023kubernetes,   title={Kubernetes-Enabled Detection and Resolution of Architectural Smells for Microservices},   author={Soldani, Jacopo and Rendina, Davide and Fontana, Francesca Arcelli and Brogi, Antonio},   booktitle={2023 IEEE International Conference on Service-Oriented System Engineering (SOSE)},   pages={75--80},   year={2023},   organization={IEEE} }","@inproceedings{schirgi2021quality,   title={Quality assurance for microservice architectures},   author={Schirgi, Thomas and Brenner, Eugen},   booktitle={2021 IEEE 12th International Conference on Software Engineering and Service Science (ICSESS)},   pages={76--80},   year={2021},   organization={IEEE} }"]
  - 类别：["Communication & Interaction","Communication"]
  - 相关异味:[]
  - 影响力：3

- **Lack of communication standards among microservices**

  - 别名：There is no approach to standardise the communication model among services
  - Descriptions: In a microservice system, there exist multiple communication standards, with each service development team having its own set of standards. This diversity of communication standards complicates the interaction between different services.
  - Detection:1. Detect whether data format mixing is taken in different microservices, i.e., detect each service dependency (JSON, XML, etc.). 2. Iterate through the dependencies of each service and determine whether a threshold number of communication protocols (including message queuing protocols such as AMQP) is exceeded.
  - Consequence: As a result, the entire system is burdened with the need to maintain multiple communication standards, which diminishes its **reliability** and **adaptability**.
  - Reason:  Lack of unified guidance and specification, leading to independent decision-making by the teams.
  - Example: Let's consider an e-commerce platform comprising two microservices: a product service and a review service. The product service handles the management of product information, whereas the review service is responsible for managing user reviews. Unfortunately, due to the absence of communication standards, the product service and the review service adopt different data formats to represent product information and reviews. Specifically, the product service utilizes JSON format for product information, while the review service relies on XML format for reviews. Consequently, when the review service needs to obtain product information, it must convert the JSON-formatted data returned by the product service into XML format, resulting in increased complexity and system overhead.
  - 来源：["@inproceedings{de2019architectural,   title={Architectural technical debt in microservices: a case study in a large company},   author={De Toledo, Saulo Soares and Martini, Antonio and Przybyszewska, Agata and Sj{\o}berg, Dag IK},   booktitle={2019 IEEE/ACM International Conference on Technical Debt (TechDebt)},   pages={78--87},   year={2019},   organization={IEEE} }","@inproceedings{de2021reducing,   title={Reducing Incidents in Microservices by Repaying Architectural Technical Debt},   author={de Toledo, Saulo S and Martini, Antonio and Sj{\o}berg, Dag IK and Przybyszewska, Agata and Frandsen, Johannes Skov},   booktitle={2021 47th Euromicro Conference on Software Engineering and Advanced Applications (SEAA)},   pages={196--205},   year={2021},   organization={IEEE} }"]
  - 类别：["Communication & Interaction","Communication"]
  - 相关异味:[]
  - 影响力：5

- **Empty messages**

  - 别名：
  - Descriptions: Empty messages, characterized by the absence of actual valid data, are commonly encountered during communication between microservices for signaling and triggering behavior.
  - Detection：By detecting whether the URI of a get request contains parameter fields and whether the request body of other request methods is empty.
  - Consequence: The presence of empty messages introduces additional processing logic, thereby increasing system complexity and diminishing **maintainability**. In testing scenarios, special processing logic may be necessary to simulate or handle empty messages, thereby reducing **testability**. Since null messages lack actual valid data, they may fail to provide sufficient information for ensuring accurate reception and comprehension. This can result in signal loss, false behavioral triggers, or inconsistent state, thereby compromising the **reliability** of the system. Empty messages, lacking actual valid data, are insufficient for ensuring data **integrity**.
  - Cause: Lack of clear and unambiguous communication protocols is the underlying cause for this issue.
  - Example: Let's consider an e-commerce platform consisting of an order service and an inventory service. The order service is responsible for managing product information. Whenever a new order is generated, the order service must inform the inventory service to update the inventory information accordingly. To accomplish this, the order service sends an empty message to the inventory service as a signal for inventory update. Upon receiving the null message, the inventory service activates the corresponding inventory update logic, which may involve retrieving updated details from other services, to update the inventory information in response to the signal.
  - 来源：["  @article{coscia2014refactoring,   title={Refactoring code-first Web Services for early avoiding WSDL anti-patterns: Approach and comprehensive assessment},   author={Coscia, Jos{\'e} Luis Ordiales and Mateos, Cristian and Crasso, Marco and Zunino, Alejandro},   journal={Science of Computer Programming},   volume={89},   pages={374--407},   year={2014},   publisher={Elsevier} }"]
  - 类别：["Communication & Interaction","Communication"]
  - 相关异味:[]
  - 影响力：10

- **Timeout**

  - 别名：

  - Descriptions: This situation refers to when a service experiences excessively long response times or becomes unavailable, causing the caller to wait for an extended period and leading to resource wastage.

  - Detection: It can be detected by comparing the service response time with a predefined threshold value.

  - Consequence: When the service response time exceeds acceptable limits, it leads to increased **time-behavior** and reduced **availability**. This can have a ripple effect on other microservices or client applications that rely on the service, ultimately impacting the overall **performance  efficiency** of the system.

  - Cause: Insufficient strategies to address service unavailability or prolonged response times can be attributed to this issue. By implementing circuit breakers and configuring their parameters appropriately (such as timeout time and error threshold), the system can better manage service unavailability and response delays, leading to improved stability and performance.

  - Example: Let's consider an order service and an inventory service scenario. The order service verifies the availability of goods by invoking the inventory service and finalizes the order accordingly. When the order service calls the inventory service, it sets a timeout of 3 seconds and configures a maximum of 2 retries. In the event that no response is received from the inventory service within 3 seconds, the order service promptly resends the request, allowing a maximum of 2 retries. If no response is received even after 2 retries, the order service triggers a circuit breaker open action. This mechanism ensures fast failure and provides alternate options such as utilizing cached data or reverting to default values.

  - 来源：["@inproceedings{schirgi2021quality,   title={Quality assurance for microservice architectures},   author={Schirgi, Thomas and Brenner, Eugen},   booktitle={2021 IEEE 12th International Conference on Software Engineering and Service Science (ICSESS)},   pages={76--80},   year={2021},   organization={IEEE} }"]

  - 类别：["Communication & Interaction","Communication"]

  - 相关异味:[
    {
      "relation": "relates",
      "name": "Bottleneck Service"
    }

    ]

  - 影响力：4

####  Interaction

- **Wobbly service interactions**

  - 别名：
  - Descriptions: This term describes the instability in the interaction between a microservice and other services. Specifically, it occurs when service A depends on one or more functions provided by service B without having a mechanism to handle service B's failures. 
  - Detection：Analyze dependencies between services and judge whether to adopt a failure handling mechanism.
  - Consequences: When a service fails, it rapidly propagates to other services, diminishing the overall **reliability** of the system.
  - Cause: The lack of adequate fault handling and fault tolerance mechanisms.
  - Example: Let's consider an e-commerce platform comprising multiple microservices, such as product services, inventory services, and order services. These microservices exhibit direct dependencies, with the order service relying on both the product service and the inventory service. In the event of a failure in the product service, the failure can rapidly propagate to the order service, impeding the retrieval of accurate product information and leading to order processing failures. Consequently, this fault propagation significantly diminishes the overall availability of the system.
  - 来源：["@inproceedings{brogi2020freshening,   title={Freshening the air in microservices: Resolving architectural smells via refactoring},   author={Brogi, Antonio and Neri, Davide and Soldani, Jacopo},   booktitle={Service-Oriented Computing--ICSOC 2019 Workshops: WESOACS, ASOCA, ISYCC, TBCE, and STRAPS, Toulouse, France, October 28--31, 2019, Revised Selected Papers 17},   pages={17--29},   year={2020},   organization={Springer} }","@inproceedings{soldani2023kubernetes,   title={Kubernetes-Enabled Detection and Resolution of Architectural Smells for Microservices},   author={Soldani, Jacopo and Rendina, Davide and Fontana, Francesca Arcelli and Brogi, Antonio},   booktitle={2023 IEEE International Conference on Service-Oriented System Engineering (SOSE)},   pages={75--80},   year={2023},   organization={IEEE} }"]
  - 类别：["Communication & Interaction","Interaction"]
  - []
  - 影响力：4

- **Service chain**

  - 别名：
  - Description: This term describes the process of continuously requesting multiple services in order to fulfill a specific business objective during request processing. Each service is responsible for handling a portion of the logic or providing specific functionalities.
  - Detection: To identify this pattern, AOP (aspect-oriented programming) or interceptors can be employed to monitor method calls during runtime and verify if the target of the call is designated as a transaction.
  - Consequences: The interaction with multiple services amplifies the complexity of the logic and diminishes **maintainability**. If any of the services exhibit subpar performance or prolonged response times, it can cause delays in the overall service chain, impacting user experience and system **performance efficiency**. Moreover, excessive dependence on other services intensifies coupling, making fault propagation more likely and escalating debugging expenses, thereby compromising system **reliability**.
  - Cause: Inappropriate service splitting results in tightly coupled services.
  - For example, in a movie ticket booking service, the process begins with a call to the movie resource service to retrieve all currently available movie resources. Once the desired movie is selected, the ticket booking service proceeds to invoke the payment service for payment processing. Finally, the ticket booking service contacts the order service to generate and handle order information.
  - 来源：["@inproceedings{palma2014investigating,   title={Investigating the change-proneness of service patterns and antipatterns},   author={Palma, Francis and An, Le and Khomh, Foutse and Moha, Naouel and Gu{\'e}h{\'e}neuc, Yann-Ga{\"e}l},   booktitle={2014 IEEE 7th International Conference on Service-Oriented Computing and Applications},   pages={1--8},   year={2014},   organization={IEEE} }"]
  - 类别：["Communication & Interaction","Interaction"]
  - 相关异味：[]
  - 影响力：12

- **Chatty service**

  - 别名：Too many point-to-point connections among services

  - Descriptions: It denotes a service that engages in excessive communication with other services. It occurs when a service needs to make multiple fine-grained operations or retrieve data from multiple sources in order to obtain the required information.

  - Detection：Statically analyze the source code to determine the number of calls each service makes to other services, and make a judgment based on whether it exceeds the threshold.

  - Consequences: Excessive microservice communication leads to heightened network latency and increased volume of data transmission, thereby diminishing the overall **performance efficiency** of the system. Complete request processing leads to increased **time-behavior**. Moreover, there is a strong reliance on the implementation details of frequently called services, which in turn reduces **maintainability**.

  - Cause: This issue arises due to unreasonable business logic and API design.

  - Example: When the order service receives an order, it iterates through each item in the order and contacts the inventory service to retrieve the inventory status for each item. This results in frequent communication between services during request processing.

  - 来源：["@inproceedings{palma2015study,  title={A study on the taxonomy of service antipatterns},  author={Palma, Francis and Mohay, Naouel},  booktitle={2015 IEEE 2nd International Workshop on Patterns Promotion and Anti-patterns Prevention (PPAP)},  pages={5--8},  year={2015},  organization={IEEE}}","@inproceedings{de2019architectural,   title={Architectural technical debt in microservices: a case study in a large company},   author={De Toledo, Saulo Soares and Martini, Antonio and Przybyszewska, Agata and Sj{\o}berg, Dag IK},   booktitle={2019 IEEE/ACM International Conference on Technical Debt (TechDebt)},   pages={78--87},   year={2019},   organization={IEEE} }","@inproceedings{palma2014specification,   title={Specification and detection of SOA antipatterns in web services},   author={Palma, Francis and Moha, Naouel and Tremblay, Guy and Gu{\'e}h{\'e}neuc, Yann-Ga{\"e}l},   booktitle={Software Architecture: 8th European Conference, ECSA 2014, Vienna, Austria, August 25-29, 2014. Proceedings 8},   pages={58--73},   year={2014},   organization={Springer} }","@article{palma2018unidosa,   title={UniDoSA: the unified specification and detection of service antipatterns},   author={Palma, Francis and Moha, Naouel and Gu{\'e}h{\'e}neuc, Yann-Ga{\"e}l},   journal={IEEE Transactions on Software Engineering},   volume={45},   number={10},   pages={1024--1053},   year={2018},   publisher={IEEE} }","  @article{tummalapalli2022detection,   title={Detection of web service anti-patterns using weighted extreme learning machine},   author={Tummalapalli, Sahithi and Kumar, Lov and Neti, Lalita Bhanu Murthy and Krishna, Aneesh},   journal={Computer Standards \& Interfaces},   volume={82},   pages={103621},   year={2022},   publisher={Elsevier} }"]

  - 类别：["Communication & Interaction","Interaction"]

  - 相关异味：[]

  - 影响力：8

    

# Structure & Infrastructure

### Infrastructure

- **Unnecessary settings**
  - 别名：
  - Descriptions: This refers to the presence of numerous unnecessary settings in the configuration files of microservices. For instance, default parameter values are overridden during actual usage. The configuration parameters of microservices are interdependent and have complex dependencies, resulting in higher maintenance costs for configurations.
  - Detection: Perform static analysis on the source code to determine metrics such as the definition, usage, and quantity of configuration parameters in each service, and subsequently make additional determinations.
  - Consequence: The presence of excessive and unnecessary configuration settings complicates configuration management and decreases the system's **maintainability**. Testers are required to invest additional time and effort in verifying parameter interaction and conflicts due to the complexity of configuration parameters, which decreases **testability**.
  - Cause: The lack of a clear configuration management strategy.
  - Example: When a service is used for data processing and needs to support various data sources, configuration parameters specific to each data source are introduced in the configuration file, leading to configuration overload. To prevent excessive configuration parameters and redundant settings, configurations should be appropriately designed and managed using abstraction and generalization techniques to handle different data source types.
  - 来源：["@article{de2021identifying, title={Identifying architectural technical debt, principal, and interest in microservices: A multiple-case study}, author={de Toledo, Saulo S and Martini, Antonio and Sj{\o}berg, Dag IK}, journal={Journal of Systems and Software}, volume={177}, pages={110968}, year={2021}, publisher={Elsevier} }", "@article{de2022accumulation,  title={Accumulation and prioritization of architectural debt in three companies migrating to microservices},  author={De Toledo, Saulo Soares and Martini, Antonio and Nguyen, Phu H and Sj{\o}berg, Dag IK},  journal={IEEE Access},  volume={10},  pages={37422--37445},  year={2022},  publisher={IEEE}}"]
  - 类别：["Structure & Infrastructure"," Infrastructure"]
  - 相关异味：[]
  - 影响力：5
- **ESB Usage**
  - 别名：
  - Description：The primary purpose of an Enterprise Service Bus (ESB) is to facilitate connectivity between heterogeneous systems, resulting in a centralized and heavyweight architecture. However, when ESB-style components are incorporated into a microservices architecture, it introduces complexities in inter-service communication, requiring messages between services to be routed through the ESB.
  - Detection: The detection process involves conducting static analysis on the source code to identify the dependencies of each service, including both the services it relies on and the services that depend on it. Based on this analysis, specific thresholds can be established for further determination.
  - Consequences: By mandating that all communications pass through the ESB, the system topology becomes intricate, resulting in increased complexity and inter-module coupling. This, in turn, adversely affects the system's **analyzability** and **fault tolerance**. Misusing the ESB undermines the **modularity** of services, preventing them from communicating and evolving independently. Consequently, services may struggle to handle high concurrency, limiting the **scalability** of the entire system.
  - Cause: The lack of understanding regarding the principles and best practices of microservices architecture.
  - Example: Consider a microservice system consisting of user service, order service, payment service, product service, and inventory service. In this scenario, communication among these services is forced to go through the ESB, resulting in an excessively centralized system topology.
  - 来源：["@article{taibi2018definition,   title={On the definition of microservice bad smells},   author={Taibi, Davide and Lenarduzzi, Valentina},   journal={IEEE software},   volume={35},   number={3},   pages={56--62},   year={2018},   publisher={IEEE} }","@article{taibi2020microservices,   title={Microservices anti-patterns: A taxonomy},   author={Taibi, Davide and Lenarduzzi, Valentina and Pahl, Claus},   journal={Microservices: Science and Engineering},   pages={111--128},   year={2020},   publisher={Springer} }","@inproceedings{pulnil2022microservices,   title={A microservices quality model based on microservices anti-patterns},   author={Pulnil, Sermsook and Senivongse, Twittie},   booktitle={2022 19th International Joint Conference on Computer Science and Software Engineering (JCSSE)},   pages={1--6},   year={2022},   organization={IEEE} }","@article{walker2020automated,   title={Automated code-smell detection in microservices through static analysis: A case study},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   journal={Applied Sciences},   volume={10},   number={21},   pages={7800},   year={2020},   publisher={MDPI} }","@inproceedings{walker2021automated,   title={Automated microservice code-smell detection},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   booktitle={Information Science and Applications: Proceedings of ICISA 2020},   pages={211--221},   year={2021},   organization={Springer} }"]
  - 类别：["Structure & Infrastructure"," Infrastructure"]
  - 相关异味：[]
  - 影响力：4
- **No API-Gateway**
  - 别名：Not Having an API Gateway
  - Description: The lack of an API Gateway in a microservices architecture is a notable drawback. An API Gateway serves as a centralized service positioned at the front end of a microservices architecture, handling all external requests and responses. It provides consistent interfaces and performs protocol conversions, shielding external clients from the intricacies of the underlying microservices. As the number of services grows, the limitations stemming from the lack of an API Gateway become more apparent, resulting in decreased maintainability.
  - Detection: The analysis involves examining the microservice dependency files and configuration file source code to determine if gateway-related dependencies have been introduced and if routing rules have been configured in the configuration file.
  - Consequence: In the absence of an API Gateway, clients communicate directly with the services, potentially necessitating independent implementation of service discovery and load balancing. This increases system complexity and compromises **security**, **maintainability**, and **analyzability**. Moreover, when new microservices need to be added, modifying the source code of multiple clients becomes necessary, thereby reducing **modifiability**.
  - Cause: The lack of timely architectural adjustments and improvements as the system evolves leads to the lack of an API Gateway.
  - Example: A system with only two microservices allows clients to communicate with them directly. As the system grows and the number of microservices increases to dozens, the client needs to manage a large number of service invocation logics and routing rules, leading to increased complexity.
  - 来源：["@article{taibi2018definition,   title={On the definition of microservice bad smells},   author={Taibi, Davide and Lenarduzzi, Valentina},   journal={IEEE software},   volume={35},   number={3},   pages={56--62},   year={2018},   publisher={IEEE} }","@article{taibi2020microservices,   title={Microservices anti-patterns: A taxonomy},   author={Taibi, Davide and Lenarduzzi, Valentina and Pahl, Claus},   journal={Microservices: Science and Engineering},   pages={111--128},   year={2020},   publisher={Springer} }","@inproceedings{pulnil2022microservices,   title={A microservices quality model based on microservices anti-patterns},   author={Pulnil, Sermsook and Senivongse, Twittie},   booktitle={2022 19th International Joint Conference on Computer Science and Software Engineering (JCSSE)},   pages={1--6},   year={2022},   organization={IEEE} }","@article{walker2020automated,   title={Automated code-smell detection in microservices through static analysis: A case study},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   journal={Applied Sciences},   volume={10},   number={21},   pages={7800},   year={2020},   publisher={MDPI} }","@inproceedings{walker2021automated,   title={Automated microservice code-smell detection},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   booktitle={Information Science and Applications: Proceedings of ICISA 2020},   pages={211--221},   year={2021},   organization={Springer} }","  @inproceedings{brogi2020freshening,   title={Freshening the air in microservices: Resolving architectural smells via refactoring},   author={Brogi, Antonio and Neri, Davide and Soldani, Jacopo},   booktitle={Service-Oriented Computing--ICSOC 2019 Workshops: WESOACS, ASOCA, ISYCC, TBCE, and STRAPS, Toulouse, France, October 28--31, 2019, Revised Selected Papers 17},   pages={17--29},   year={2020},   organization={Springer} }","@inproceedings{soldani2023kubernetes,   title={Kubernetes-Enabled Detection and Resolution of Architectural Smells for Microservices},   author={Soldani, Jacopo and Rendina, Davide and Fontana, Francesca Arcelli and Brogi, Antonio},   booktitle={2023 IEEE International Conference on Service-Oriented System Engineering (SOSE)},   pages={75--80},   year={2023},   organization={IEEE} }","@inproceedings{bacchiega2022microservices,   title={Microservices smell detection through dynamic analysis},   author={Bacchiega, Paolo and Pigazzini, Ilaria and Fontana, Francesca Arcelli},   booktitle={2022 48th Euromicro Conference on Software Engineering and Advanced Applications (SEAA)},   pages={290--293},   year={2022},   organization={IEEE} }"]
  - 类别：["Structure & Infrastructure"," Infrastructure"]
  - 相关异味：[]
  - 影响力：11
- **No service discovery**
  - 别名：No service registry
  - Description: In microservice architectures, the Service Discovery pattern is commonly employed to address communication and orchestration challenges among services. However, in the absence of proper service discovery mechanisms, as observed in the no service discovery smell, manual modification of endpoint information becomes necessary when the location of a service changes.
  - Detection: The analysis entails examining the microservice dependency files and configuration file source code to verify the introduction of service discovery-related dependencies and configuration information.
  - Consequence: Communication between services becomes hardcoded, requiring manual code modification when the location of a service changes. This hampers **adaptability**, **scalability**, and **installability**, while also diminishing the system's **maintainability**. In the event of a service instance failure or unavailability, other microservices cannot automatically switch to alternative instances, thereby impeding failure recovery and reducing **recoverability** and **availability**. The absence of a service discovery mechanism complicates the collection and monitoring of service metrics, consequently diminishing **analyzability**.
  - Cause: The  lack of comprehensive recognition of the significance of service discovery.
  - Example: The code for an order service may include the IP address and port number of a user service. Consequently, if the location or configuration of the user service changes, manual modification of the order service code and subsequent service redeployment become necessary.
  - 来源：["@article{balalaie2018microservices,   title={Microservices migration patterns},   author={Balalaie, Armin and Heydarnoori, Abbas and Jamshidi, Pooyan and Tamburri, Damian A and Lynn, Theo},   journal={Software: Practice and Experience},   volume={48},   number={11},   pages={2019--2042},   year={2018},   publisher={Wiley Online Library} }","  @inproceedings{messina2016database,   title={The database-is-the-service pattern for microservice architectures},   author={Messina, Antonio and Rizzo, Riccardo and Storniolo, Pietro and Tripiciano, Mario and Urso, Alfonso},   booktitle={Information Technology in Bio-and Medical Informatics: 7th International Conference, ITBAM 2016, Porto, Portugal, September 5-8, 2016, Proceedings 7},   pages={223--233},   year={2016},   organization={Springer} }","  @inproceedings{brown2016implementation,   title={Implementation patterns for microservices architectures},   author={Brown, Kyle and Woolf, Bobby},   booktitle={Proceedings of the 23rd conference on pattern languages of programs},   pages={1--35},   year={2016} }"]
  - 类别：["Structure & Infrastructure"," Infrastructure"]
  - 相关异味：[]
  - 影响力：10

### 	Structure

- **Bottleneck service**

  - 别名：

  - Descriptions：It refers to a critical service that is highly relied upon by other services or highly used by clients, often characterized by high incoming and low outgoing traffic.

  - Detection: The identification process involves analyzing the service dependencies and calculating the frequency of service invocations within a specific time period.

  - Consequence: The increased workload on the service leads to prolonged response times, thereby impacting **time-behavior** and reducing **availability**.

  - Cause: Insufficient consideration of decoupling and independence between services. The functions and responsibilities of a service may be excessively centralized, resulting in excessive reliance on that service by other services or clients.

  - Example: The order service plays a crucial role in managing various order-related operations, such as order creation, status updates, and retrieval of order information. However, due to its widespread utilization throughout the system, it becomes a Bottleneck Service. The high volume of order requests places a significant burden on this service, causing prolonged response times. Consequently, other services or clients may experience considerable delays when processing orders.

  - 来源：["@inproceedings{palma2015study,  title={A study on the taxonomy of service antipatterns},  author={Palma, Francis and Mohay, Naouel},  booktitle={2015 IEEE 2nd International Workshop on Patterns Promotion and Anti-patterns Prevention (PPAP)},  pages={5--8},  year={2015},  organization={IEEE}}","@inproceedings{palma2014investigating,   title={Investigating the change-proneness of service patterns and antipatterns},   author={Palma, Francis and An, Le and Khomh, Foutse and Moha, Naouel and Gu{\'e}h{\'e}neuc, Yann-Ga{\"e}l},   booktitle={2014 IEEE 7th International Conference on Service-Oriented Computing and Applications},   pages={1--8},   year={2014},   organization={IEEE} }","  @inproceedings{matar2023approach,   title={An Approach for Evaluating the Potential Impact of Anti-Patterns on Microservices Performance},   author={Matar, Raghad and Jahi{\'c}, Jasmin},   booktitle={2023 IEEE 20th International Conference on Software Architecture Companion (ICSA-C)},   pages={167--170},   year={2023},   organization={IEEE} }"]

  - 类别：["Structure & Infrastructure","Structure "]

  - 相关异味：[
    {
      "relation": "relates",
      "name": "Timeout"
    }

    ]

  - 影响力：2

- **Chaotic independence**

  - 别名：

  - Descriptions：It refers to the presence of one or more excessively lengthy sequences of service calls within a microservice system.

  - Detection: Detection involves collecting logs generated during service calls, tracing the service call process, and determining the length of the service call chain.

  - Consequence: When a service within a call chain fails, the failure quickly propagates to other services, resulting in cascading failures that decrease the overall system **availability**. A long service call chain increases the complexity of business logic and introduces additional network communication overhead, leading to reduced **performance efficiency** and **testability** of the system.

  - Cause: The services are not properly divided, and the dependency relationships between services are not adequately designed.

  - Example: The user service receives user order requests, verifies the user's identity, and then calls the order service to create the order. The order service subsequently calls the payment service to process the order expenditure, and the payment service in turn calls the inventory service to check the goods inventory. The user service, order service, payment service, and inventory service form a lengthy call chain.

  - 来源：["@article{zhou2023revisiting,   title={Revisiting the practices and pains of microservice architecture in reality: An industrial inquiry},   author={Zhou, Xin and Li, Shanshan and Cao, Lingli and Zhang, He and Jia, Zijia and Zhong, Chenxing and Shan, Zhihao and Babar, Muhammad Ali},   journal={Journal of Systems and Software},   volume={195},   pages={111521},   year={2023},   publisher={Elsevier} }"]

  - 类别：["Structure & Infrastructure","Structure "]

  - 相关异味：[
    {
      "relation": "relates",
      "name": "Service Chain"
    }

    ]

  - 影响力：5

- **Cyclic dependency**

  - 别名：Cross-module cycle
  - Description: It refers to the case where a ring call occurs in a complete request call chain in a microservice system.
  - Detection: Static Detection: Construct a dependency graph between services by analyzing the source code statically. Then, determine the presence of an invocation loop through methods such as topological sorting. Dynamic Detection: Set up a request interceptor to update the current service ID and predecessor service ID in the request header. When the API receives the request, relevant link information is written into the log. Log information collected in real-time within a recent time window allows the restoration of the actual service call chain using the link information. Determination can be made using topological sorting or SCC algorithm.
  - Consequences: It increases coupling between services, reducing **modularity**, **reliability**, and **maintainability**. t creates a vulnerability to cascading failures, reducing **fault tolerance**. It makes it difficult to extract specific services for independent reuse, diminishing **reusability**. The complexity of invocation relationships decreases **analyzability**, hampers coping with high loads, reducing **scalability** and **adaptability**. Changes to one service affect other services within the circular call chain, reducing **modifiability**. The execution of tests becomes challenging, as it is difficult to simulate and isolate specific services, decreasing **testability**.
  - Cause：The presence of confusing dependencies, complex business logic, and a lack of appropriate interface design contribute to cyclic  dependency.
  - Example: The user service requires personalized product recommendations for users. As a result, it calls the recommendation service to obtain the recommendation results. The recommendation service, in turn, calls the user service to retrieve more detailed user information for accurate recommendations. This creates a cyclic call chain between the user service and the recommendation service.
  - 来源：["@article{taibi2018definition,   title={On the definition of microservice bad smells},   author={Taibi, Davide and Lenarduzzi, Valentina},   journal={IEEE software},   volume={35},   number={3},   pages={56--62},   year={2018},   publisher={IEEE} }","@inproceedings{azadi2019architectural,   title={Architectural smells detected by tools: a catalogue proposal},   author={Azadi, Umberto and Fontana, Francesca Arcelli and Taibi, Davide},   booktitle={2019 IEEE/ACM International Conference on Technical Debt (TechDebt)},   pages={88--97},   year={2019},   organization={IEEE} }","@inproceedings{roveda2018towards,   title={Towards an architectural debt index},   author={Roveda, Riccardo and Fontana, Francesca Arcelli and Pigazzini, Ilaria and Zanoni, Marco},   booktitle={2018 44th Euromicro Conference on Software Engineering and Advanced Applications (SEAA)},   pages={408--416},   year={2018},   organization={IEEE} }","@inproceedings{mo2015hotspot,   title={Hotspot patterns: The formal definition and automatic detection of architecture smells},   author={Mo, Ran and Cai, Yuanfang and Kazman, Rick and Xiao, Lu},   booktitle={2015 12th Working IEEE/IFIP Conference on Software Architecture},   pages={51--60},   year={2015},   organization={IEEE} }","  @article{taibi2020microservices,   title={Microservices anti-patterns: A taxonomy},   author={Taibi, Davide and Lenarduzzi, Valentina and Pahl, Claus},   journal={Microservices: Science and Engineering},   pages={111--128},   year={2020},   publisher={Springer} }","@article{fontana2019architectural,   title={Are architectural smells independent from code smells? An empirical study},   author={Fontana, Francesca Arcelli and Lenarduzzi, Valentina and Roveda, Riccardo and Taibi, Davide},   journal={Journal of Systems and Software},   volume={154},   pages={139--156},   year={2019},   publisher={Elsevier} }","  @inproceedings{pigazzini2020towards,   title={Towards microservice smells detection},   author={Pigazzini, Ilaria and Fontana, Francesca Arcelli and Lenarduzzi, Valentina and Taibi, Davide},   booktitle={Proceedings of the 3rd International Conference on Technical Debt},   pages={92--97},   year={2020} }","  @inproceedings{pulnil2022microservices,   title={A microservices quality model based on microservices anti-patterns},   author={Pulnil, Sermsook and Senivongse, Twittie},   booktitle={2022 19th International Joint Conference on Computer Science and Software Engineering (JCSSE)},   pages={1--6},   year={2022},   organization={IEEE} }","  @article{walker2020automated,   title={Automated code-smell detection in microservices through static analysis: A case study},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   journal={Applied Sciences},   volume={10},   number={21},   pages={7800},   year={2020},   publisher={MDPI} }","@inproceedings{walker2021automated,   title={Automated microservice code-smell detection},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   booktitle={Information Science and Applications: Proceedings of ICISA 2020},   pages={211--221},   year={2021},   organization={Springer} }","@article{zhong2022impacts,   title={Impacts, causes, and solutions of architectural smells in microservices: An industrial investigation},   author={Zhong, Chenxing and Huang, Huang and Zhang, He and Li, Shanshan},   journal={Software: Practice and Experience},   volume={52},   number={12},   pages={2574--2597},   year={2022},   publisher={Wiley Online Library} }","@inproceedings{bacchiega2022microservices,   title={Microservices smell detection through dynamic analysis},   author={Bacchiega, Paolo and Pigazzini, Ilaria and Fontana, Francesca Arcelli},   booktitle={2022 48th Euromicro Conference on Software Engineering and Advanced Applications (SEAA)},   pages={290--293},   year={2022},   organization={IEEE} }","@inproceedings{pigazzini2019tool,   title={Tool support for the migration to microservice architecture: An industrial case study},   author={Pigazzini, Ilaria and Arcelli Fontana, Francesca and Maggioni, Andrea},   booktitle={Software Architecture: 13th European Conference, ECSA 2019, Paris, France, September 9--13, 2019, Proceedings 13},   pages={247--263},   year={2019},   organization={Springer} }","@inproceedings{schirgi2021quality,   title={Quality assurance for microservice architectures},   author={Schirgi, Thomas and Brenner, Eugen},   booktitle={2021 IEEE 12th International Conference on Software Engineering and Service Science (ICSESS)},   pages={76--80},   year={2021},   organization={IEEE} }"]
  - 类别：["Structure & Infrastructure","Structure "]
  - 相关异味：[]
  - 影响力：10

- **Sand pile** 

  - 别名：
  - Descriptions：It refers to the situation where multiple nano services in a system share public data, resulting in tight coupling between them.
  - Detection：Comprehensive judgment based on service business logic, dependencies and granularity.
  - Consequence: The tight coupling among multiple nano services reduces the **modularity** of the overall service architecture.
  - Cause: Improper cutting of services and excessive sharing of data.
  - Example: Consider an e-commerce platform consisting of three nano-services: product service, shopping cart service, and order service. Both the shopping cart service and order service require access to the public data of the product service, specifically, product information. Due to excessive data sharing, a tight coupling develops between the shopping cart service, order service, and product service. Consequently, when the data structure of the product service changes, the code of the shopping cart service and order service may need to be modified to accommodate the new data structure.
  - 来源：["@inproceedings{palma2015study, title={A study on the taxonomy of service antipatterns}, author={Palma, Francis and Mohay, Naouel}, booktitle={2015 IEEE 2nd International Workshop on Patterns Promotion and Anti-patterns Prevention (PPAP)}, pages={5--8}, year={2015}, organization={IEEE}}", "@article{palma2018unidosa,   title={UniDoSA: the unified specification and detection of service antipatterns},   author={Palma, Francis and Moha, Naouel and Gu{\'e}h{\'e}neuc, Yann-Ga{\"e}l},   journal={IEEE Transactions on Software Engineering},   volume={45},   number={10},   pages={1024--1053},   year={2018},   publisher={IEEE} }"]
  - 类别：["Structure & Infrastructure","Structure "]
  - 相关异味：[]
  - 影响力：1

- **Knot service**

  - 别名：

  - Descriptions：指的是一组非常低内聚，但是紧耦合的服务。多个服务与同一个服务通信，类似于一个节点上缠绕了太多的线，使得系统架构混乱。

  - Detection：根据服务间的依赖关系以及功能职责综合判定。

  - 后果：执行路径变得复杂，响应时间变长，影响了时间行为（Time-behavior）。

  - 原因：不合理的依赖关系设计。

  - 举例：假设有一个在线社交媒体平台，包含了用户管理、帖子发布、评论和点赞等各种微服务。最初，这些微服务被设计成通过明确定义的API进行松耦合的通信。然而，随着时间的推移，开发人员意识到一个名为"通知服务（Notification Service）"的中央服务对多个微服务至关重要。最初，通知服务负责处理用户之间的消息通知和活动提醒。然而，随着平台的增长和功能的扩展，其他微服务也开始依赖这个服务。例如：

    1. 用户管理服务需要通知服务发送欢迎邮件给新注册用户。
    2. 帖子发布服务需要通知服务发送提醒通知给关注该用户的粉丝。
    3. 评论服务需要通知服务发送通知给帖子作者，告知有新的评论。
    4. 点赞服务需要通知服务发送通知给帖子作者，告知有新的点赞。

    随着这些依赖的增加，微服务与通知服务紧密耦合。任何对通知服务的更改或问题都会对其他微服务产生影响。

  - 来源：["@inproceedings{palma2015study, title={A study on the taxonomy of service antipatterns}, author={Palma, Francis and Mohay, Naouel}, booktitle={2015 IEEE 2nd International Workshop on Patterns Promotion and Anti-patterns Prevention (PPAP)}, pages={5--8}, year={2015}, organization={IEEE}}", "@inproceedings{palma2014investigating,   title={Investigating the change-proneness of service patterns and antipatterns},   author={Palma, Francis and An, Le and Khomh, Foutse and Moha, Naouel and Gu{\'e}h{\'e}neuc, Yann-Ga{\"e}l},   booktitle={2014 IEEE 7th International Conference on Service-Oriented Computing and Applications},   pages={1--8},   year={2014},   organization={IEEE} }"]

  - 类别：["Structure & Infrastructure","Structure "]

  - 相关异味：[]

  - 影响力：1

- **Hub-like dependency**

  - 别名：
  - Descriptions：指的是一个服务与其他大量服务具有传入和传出关系。这个服务往往成为中心服务，它的变动容易影响多个服务。
  - Detection：根据服务间的传入传出关系判定。
  - 后果：一个服务具有大量的传入和传出关系，增加了模块间的耦合性，降低了模块性（Modularity）、可修改性（Modifiability）和可分析性（Analyzability）。
  - 原因：不合理的依赖关系设计
  - 举例：用户服务可能需要从用户关系管理服务获取用户的关注列表或好友列表，以展示用户的社交关系。举例：假设有一个社交媒体平台，由多个微服务组成，包括用户服务、用户关系管理服务、帖子服务、关注服务和推荐服务。帖子服务可能需要从用户关系管理服务获取用户的关注列表，以确定哪些用户应该接收到与帖子相关的通知或更新。关注服务需要与用户关系管理服务进行通信，以获取其他用户的关注状态或关注数量，以便在用户界面中显示相关信息。推荐服务可能需要从用户关系管理服务获取用户的关注列表或好友列表，以便为用户生成个性化的推荐内容。而用户关系管理服务需要与其他服务进行通信，以更新用户的关注状态、好友列表或通知相关的信息。例如，当用户取消关注某位用户时，用户关系管理服务可能需要通知帖子服务停止向该用户发送相关的通知。
  - 来源：["@inproceedings{azadi2019architectural,   title={Architectural smells detected by tools: a catalogue proposal},   author={Azadi, Umberto and Fontana, Francesca Arcelli and Taibi, Davide},   booktitle={2019 IEEE/ACM International Conference on Technical Debt (TechDebt)},   pages={88--97},   year={2019},   organization={IEEE} }","  @inproceedings{roveda2018towards,   title={Towards an architectural debt index},   author={Roveda, Riccardo and Fontana, Francesca Arcelli and Pigazzini, Ilaria and Zanoni, Marco},   booktitle={2018 44th Euromicro Conference on Software Engineering and Advanced Applications (SEAA)},   pages={408--416},   year={2018},   organization={IEEE} }","@article{zhong2022impacts,   title={Impacts, causes, and solutions of architectural smells in microservices: An industrial investigation},   author={Zhong, Chenxing and Huang, Huang and Zhang, He and Li, Shanshan},   journal={Software: Practice and Experience},   volume={52},   number={12},   pages={2574--2597},   year={2022},   publisher={Wiley Online Library} }","@inproceedings{pigazzini2019tool,   title={Tool support for the migration to microservice architecture: An industrial case study},   author={Pigazzini, Ilaria and Arcelli Fontana, Francesca and Maggioni, Andrea},   booktitle={Software Architecture: 13th European Conference, ECSA 2019, Paris, France, September 9--13, 2019, Proceedings 13},   pages={247--263},   year={2019},   organization={Springer} }"]
  - 类别：["Structure & Infrastructure","Structure "]
  - 相关异味：[]
  - 影响力：3

- **Unstable dependency**

  - 别名：Evolutionary coupling
  - Descriptions：指的是服务间存在逻辑耦合，它们的依赖关系不稳定，一个服务的更改会影响其他服务的更改。
  - Detection：根据存储库的修改历史判定。
  - 后果：由于服务之间存在不稳定的依赖关系，当一个服务发生变化时，这种变化可能会传播到其他依赖它的服务中，降低了模块性（Modularity）和可分析性（Analyzability）。如果变化引入了错误或导致不正确的行为，这会降低整个系统的可靠性（Reliability）。
  - 原因：不合理的依赖关系设计
  - 举例：一个服务直接依赖于另一个服务的API，当API发生变化时，其他服务也需要相应地修改代码。例如，订单服务直接依赖于库存服务的API来检查产品的库存量，并在创建订单时减少库存。库存服务更改了检查库存的方法名或参数，订单服务必须相应地修改代码以适应这些变化。
  - 来源：["  @inproceedings{azadi2019architectural,   title={Architectural smells detected by tools: a catalogue proposal},   author={Azadi, Umberto and Fontana, Francesca Arcelli and Taibi, Davide},   booktitle={2019 IEEE/ACM International Conference on Technical Debt (TechDebt)},   pages={88--97},   year={2019},   organization={IEEE} }","@inproceedings{roveda2018towards,   title={Towards an architectural debt index},   author={Roveda, Riccardo and Fontana, Francesca Arcelli and Pigazzini, Ilaria and Zanoni, Marco},   booktitle={2018 44th Euromicro Conference on Software Engineering and Advanced Applications (SEAA)},   pages={408--416},   year={2018},   organization={IEEE} }","@inproceedings{fang2023identifying,   title={Identifying Anti-Patterns in Distributed Systems With Heterogeneous Dependencies},   author={Fang, Hongzhou and Cai, Yuanfang and Kazman, Rick and Lefever, Jason},   booktitle={2023 IEEE 20th International Conference on Software Architecture Companion (ICSA-C)},   pages={116--120},   year={2023},   organization={IEEE} }","@article{zhong2022impacts,   title={Impacts, causes, and solutions of architectural smells in microservices: An industrial investigation},   author={Zhong, Chenxing and Huang, Huang and Zhang, He and Li, Shanshan},   journal={Software: Practice and Experience},   volume={52},   number={12},   pages={2574--2597},   year={2022},   publisher={Wiley Online Library} }","@inproceedings{pigazzini2019tool,   title={Tool support for the migration to microservice architecture: An industrial case study},   author={Pigazzini, Ilaria and Arcelli Fontana, Francesca and Maggioni, Andrea},   booktitle={Software Architecture: 13th European Conference, ECSA 2019, Paris, France, September 9--13, 2019, Proceedings 13},   pages={247--263},   year={2019},   organization={Springer} }"]
  - 类别：["Structure & Infrastructure","Structure "]
  - 相关异味：[]
  - 影响力：6

- **Implicit cross-module dependency**

  - 别名：["Implicit cross package dependency","Modularity violation"]
  - Descriptions：指的是服务间虽然没有显示依赖关系，但它们具有共同变更关系。
  - Detection：根据存储库的修改历史判定。
  - 后果：由于隐式关系，降低了可测试性（Testability），一个模块修改时，其他模块也需要相应修改，降低了可修改性（Modifiability）和可分析性（analyzability）。它破坏了模块之间的清晰边界，使得模块无法独立演化和替换。降低了模块性（Modularity）。
  - 原因：不合理的依赖关系设计
  - 举例：当服务A和服务B共享同一配置文件时，虽然它们没有直接通信，但对配置文件的更改可能会影响到两个服务的行为。
  - 来源：["@inproceedings{azadi2019architectural,   title={Architectural smells detected by tools: a catalogue proposal},   author={Azadi, Umberto and Fontana, Francesca Arcelli and Taibi, Davide},   booktitle={2019 IEEE/ACM International Conference on Technical Debt (TechDebt)},   pages={88--97},   year={2019},   organization={IEEE} }","@inproceedings{roveda2018towards,   title={Towards an architectural debt index},   author={Roveda, Riccardo and Fontana, Francesca Arcelli and Pigazzini, Ilaria and Zanoni, Marco},   booktitle={2018 44th Euromicro Conference on Software Engineering and Advanced Applications (SEAA)},   pages={408--416},   year={2018},   organization={IEEE} }","@inproceedings{mo2015hotspot,   title={Hotspot patterns: The formal definition and automatic detection of architecture smells},   author={Mo, Ran and Cai, Yuanfang and Kazman, Rick and Xiao, Lu},   booktitle={2015 12th Working IEEE/IFIP Conference on Software Architecture},   pages={51--60},   year={2015},   organization={IEEE} }","@article{zhong2022impacts,   title={Impacts, causes, and solutions of architectural smells in microservices: An industrial investigation},   author={Zhong, Chenxing and Huang, Huang and Zhang, He and Li, Shanshan},   journal={Software: Practice and Experience},   volume={52},   number={12},   pages={2574--2597},   year={2022},   publisher={Wiley Online Library} }"]
  - 类别：["Structure & Infrastructure","Structure "]
  - 相关异味：[]
  - 影响力：4


# Decomposition

#### Functionality

- **Microservice greedy**
  - 别名：
  - Descriptions：指的是把不必要的功能和特性拆分为服务。
  - Detection：根据服务间的业务逻辑相关性综合判断。
  - 后果：引入了不必要的微服务，增加了服务数量和系统的复杂性，破坏了模块性（Moudularity），降低了系统的可分析性（Analyzability）和可维护性（Maintainability）。不必要的功能成为服务，降低了可重用性（reusability）。引入新的功能或特性时，可能涉及多个服务的修改，降低了可修改性（Modifiability）。增加了通信开销，限制了系统的可伸缩性（Scalability）。
  - 原因：对业务领域边界模糊
  - 举例：一个电子商务平台有商品搜索服务和库存管理服务。库存管理服务负责跟踪商品的库存数量和可用性。商品搜索服务的目标是根据用户的搜索关键字，从可用的商品中筛选出与关键字相关的结果。可以在现有的库存管理服务的基础上拓展商品搜索的功能，而没必要单独形成商品搜索服务。
  - 来源：["@article{taibi2018definition,   title={On the definition of microservice bad smells},   author={Taibi, Davide and Lenarduzzi, Valentina},   journal={IEEE software},   volume={35},   number={3},   pages={56--62},   year={2018},   publisher={IEEE} }","  @article{taibi2020microservices,   title={Microservices anti-patterns: A taxonomy},   author={Taibi, Davide and Lenarduzzi, Valentina and Pahl, Claus},   journal={Microservices: Science and Engineering},   pages={111--128},   year={2020},   publisher={Springer} }","@article{zhou2023revisiting,   title={Revisiting the practices and pains of microservice architecture in reality: An industrial inquiry},   author={Zhou, Xin and Li, Shanshan and Cao, Lingli and Zhang, He and Jia, Zijia and Zhong, Chenxing and Shan, Zhihao and Babar, Muhammad Ali},   journal={Journal of Systems and Software},   volume={195},   pages={111521},   year={2023},   publisher={Elsevier} }","  @inproceedings{pulnil2022microservices,   title={A microservices quality model based on microservices anti-patterns},   author={Pulnil, Sermsook and Senivongse, Twittie},   booktitle={2022 19th International Joint Conference on Computer Science and Software Engineering (JCSSE)},   pages={1--6},   year={2022},   organization={IEEE} }","@article{walker2020automated,   title={Automated code-smell detection in microservices through static analysis: A case study},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   journal={Applied Sciences},   volume={10},   number={21},   pages={7800},   year={2020},   publisher={MDPI} }","@inproceedings{walker2021automated,   title={Automated microservice code-smell detection},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   booktitle={Information Science and Applications: Proceedings of ICISA 2020},   pages={211--221},   year={2021},   organization={Springer} }"]
  - 类别：["Decomposition", "Functionality"]
  - 相关异味：[]
  - 影响力：6
- **Wrong cuts**
  - 别名：Subjective microservices-oriented decomposition without an effective guide
  - Descriptions：指的是微服务基于技术层（表示层、业务层和数据层）而不是业务功能进行划分。
  - Detection：根据服务功能职责和粒度大小综合判定
  - 后果：不合理的服务拆分，增加了模块间的复杂性（Complexity）和耦合性（Coupling）降低了模块性（Modularity）、可修改性（Modifiability）、可分析性（Analyzability）、可伸缩性（Scalability），服务高度耦合在一起，影响了系统的时间行为（Time-behavior）。
  - 原因：没有按照业务功能进行合理划分
  - 举例：假设有一个电子商务应用，将所有与web界面相关的逻辑和功能，如用户注册、登录、商品展示等形成一个服务；将所有与业务逻辑相关的功能，如订单处理、库存管理、支付等， 形成一个服务；将所有与数据库操作的和数据存储相关的功能形成一个服务。
  - 来源：["@article{taibi2018definition,   title={On the definition of microservice bad smells},   author={Taibi, Davide and Lenarduzzi, Valentina},   journal={IEEE software},   volume={35},   number={3},   pages={56--62},   year={2018},   publisher={IEEE} }","@article{taibi2020microservices,   title={Microservices anti-patterns: A taxonomy},   author={Taibi, Davide and Lenarduzzi, Valentina and Pahl, Claus},   journal={Microservices: Science and Engineering},   pages={111--128},   year={2020},   publisher={Springer} }","@article{zhou2023revisiting,   title={Revisiting the practices and pains of microservice architecture in reality: An industrial inquiry},   author={Zhou, Xin and Li, Shanshan and Cao, Lingli and Zhang, He and Jia, Zijia and Zhong, Chenxing and Shan, Zhihao and Babar, Muhammad Ali},   journal={Journal of Systems and Software},   volume={195},   pages={111521},   year={2023},   publisher={Elsevier} }","@inproceedings{pulnil2022microservices,   title={A microservices quality model based on microservices anti-patterns},   author={Pulnil, Sermsook and Senivongse, Twittie},   booktitle={2022 19th International Joint Conference on Computer Science and Software Engineering (JCSSE)},   pages={1--6},   year={2022},   organization={IEEE} }","@article{walker2020automated,   title={Automated code-smell detection in microservices through static analysis: A case study},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   journal={Applied Sciences},   volume={10},   number={21},   pages={7800},   year={2020},   publisher={MDPI} }","@inproceedings{walker2021automated,   title={Automated microservice code-smell detection},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   booktitle={Information Science and Applications: Proceedings of ICISA 2020},   pages={211--221},   year={2021},   organization={Springer} }","@inproceedings{schirgi2021quality,   title={Quality assurance for microservice architectures},   author={Schirgi, Thomas and Brenner, Eugen},   booktitle={2021 IEEE 12th International Conference on Software Engineering and Service Science (ICSESS)},   pages={76--80},   year={2021},   organization={IEEE} }"]
  - 类别：["Decomposition", "Functionality"]
  - 相关异味：[]
  - 影响力：5
- **Duplicated services**
  - 别名：
  - Descriptions：指的是微服务系统中存在一组执行相似或相同的功能（语义重复）的服务，导致冗余和复杂性增加。
  - Detection：对比不同服务的功能和操作集去判定。
  - 后果：多个服务具有相同或相似功能，降低了系统的可维护性（Maintainability）。功能上存在重叠，不利于服务的重用，降低了可重用性（Reusability）和模块性（Modularity）。
  - 原因：业务边界模糊，缺乏服务的复用性考虑。
  - 举例：假设有一个电子商务系统，其中有两个微服务：订单服务和库存服务。然而，由于团队之间缺乏充分的沟通，库存服务团队也独立开发了一个与订单服务相似的功能，用于处理订单库存的管理。这就导致了系统中存在两个服务，它们都提供了类似的功能，包括订单的创建、库存的扣减等。这种重复的服务增加了维护成本。
  - 来源：["@inproceedings{palma2015study,  title={A study on the taxonomy of service antipatterns},  author={Palma, Francis and Mohay, Naouel},  booktitle={2015 IEEE 2nd International Workshop on Patterns Promotion and Anti-patterns Prevention (PPAP)},  pages={5--8},  year={2015},  organization={IEEE}}"]
  - 类别：["Decomposition", "Functionality"]
  - 相关异味：[]
  - 影响力：5
- **Scattered functionality**
  - 别名：
  - Descriptions：指的是多个服务负责实现同一个高级别关注点，还包括一个服务实现多个关注点的情况。实现同一个高级别关注点的服务间高度耦合。
  - Detection：对比分析不同服务的业务功能领域和服务间的依赖关系去判定。
  - 后果：多个服务实现同一个高级关注点，修改一处代码涉及到其他服务的修改，降低了可修改性（Modifiability）。模块间高度耦合，降低了模块性（modularity）。
  - 原因：缺乏明确的服务边界定义或业务变更和演进过程中没有及时调整和重构服务。
  - 举例：假设有一个电子商务系统，其中有两个微服务：订单服务和库存服务。然而，由于团队之间缺乏充分的沟通，库存服务团队也独立开发了一个与订单服务相似的功能，用于处理订单库存的管理。这就导致了系统中存在两个服务，它们都提供了类似的功能，包括订单的创建、库存的扣减等。这种重复的服务增加了维护成本。
  - 来源：["@inproceedings{azadi2019architectural,   title={Architectural smells detected by tools: a catalogue proposal},   author={Azadi, Umberto and Fontana, Francesca Arcelli and Taibi, Davide},   booktitle={2019 IEEE/ACM International Conference on Technical Debt (TechDebt)},   pages={88--97},   year={2019},   organization={IEEE} }","@article{zhong2022impacts,   title={Impacts, causes, and solutions of architectural smells in microservices: An industrial investigation},   author={Zhong, Chenxing and Huang, Huang and Zhang, He and Li, Shanshan},   journal={Software: Practice and Experience},   volume={52},   number={12},   pages={2574--2597},   year={2022},   publisher={Wiley Online Library} }"]
  - 类别：["Decomposition", "Functionality"]
  - 相关异味：[]
  - 影响力：2
- **Nobody Home**
  - 别名：Retiring components
  - Descriptions：指的是在微服务系统中存在服务未被使用的情况。
  - Detection：根据运行时的服务调用日志统计分析哪些服务从未被使用。
  - 后果：虽然服务从未被使用，但仍然需要部署和管理，增加了维护成本，降低了系统的可维护性（Maintainability）。如果存在大量未被使用的服务，不管是否采用容器化部署，都会影响系统的性能效率（Performance Efficiency）。
  - 原因：业务变更或被错误地划分为独立的微服务。
  - 举例：假设有一个电子商务系统，其中包含多个微服务，如用户服务、订单服务、库存服务和支付服务。然而，在系统的演进过程中，发现支付服务从未被其他服务或客户端使用。在系统设计初期，支付服务可能被认为是必需的，因为处理订单支付是核心功能之一。然而，随着时间的推移，业务需求可能发生变化，例如，公司决定将支付功能外包给第三方支付提供商，因此支付服务就不再需要了，但并未进行相应的更新或移除。
  - 来源：["@article{palma2018unidosa,   title={UniDoSA: the unified specification and detection of service antipatterns},   author={Palma, Francis and Moha, Naouel and Gu{\'e}h{\'e}neuc, Yann-Ga{\"e}l},   journal={IEEE Transactions on Software Engineering},   volume={45},   number={10},   pages={1024--1053},   year={2018},   publisher={IEEE} }","  @inproceedings{palma2014investigating,   title={Investigating the change-proneness of service patterns and antipatterns},   author={Palma, Francis and An, Le and Khomh, Foutse and Moha, Naouel and Gu{\'e}h{\'e}neuc, Yann-Ga{\"e}l},   booktitle={2014 IEEE 7th International Conference on Service-Oriented Computing and Applications},   pages={1--8},   year={2014},   organization={IEEE} }","@inproceedings{fang2023identifying,   title={Identifying Anti-Patterns in Distributed Systems With Heterogeneous Dependencies},   author={Fang, Hongzhou and Cai, Yuanfang and Kazman, Rick and Lefever, Jason},   booktitle={2023 IEEE 20th International Conference on Software Architecture Companion (ICSA-C)},   pages={116--120},   year={2023},   organization={IEEE} }"]
  - 类别：["Decomposition", "Functionality"]
  - 相关异味：[]
  - 影响力：8

#### Data

- **Sharing persistence**

  - 别名：["Unplanned data sharing"，"Shared database"]

  - Descriptions：指的是存在多个服务共享同一个数据库的情况。

  - Detection：提取各个服务的数据库连接信息去判定。

  - 后果：数据模型的变动会涉及到多个服务的实体的修改没降低了可修改性（Modifiability），增加了系统的复杂性（Complexity），降低了系统的模块性（Modularity）。不同服务间可能存在数据耦合的情况，增大了服务间的耦合性（Coupling）。增加了数据泄露的风险，降低了机密性（confidentiality）。如果数据库发生故障或出现性能问题，所有依赖该数据库的服务都将受到影响，降低了容错性（Fault tolerance）。

  - 原因：未充分考虑到服务的独立性和自治性原则。

  - 举例：用户服务和订单服务指向同一个数据库实例，当某个服务存在安全漏洞时，另一个服务的数据也会被泄露。

  - 来源：["@article{de2021identifying,   title={Identifying architectural technical debt, principal, and interest in microservices: A multiple-case study},   author={de Toledo, Saulo S and Martini, Antonio and Sj{\o}berg, Dag IK},   journal={Journal of Systems and Software},   volume={177},   pages={110968},   year={2021},   publisher={Elsevier} }"," @article{taibi2018definition,   title={On the definition of microservice bad smells},   author={Taibi, Davide and Lenarduzzi, Valentina},   journal={IEEE software},   volume={35},   number={3},   pages={56--62},   year={2018},   publisher={IEEE} }","@article{de2022accumulation,   title={Accumulation and prioritization of architectural debt in three companies migrating to microservices},   author={De Toledo, Saulo Soares and Martini, Antonio and Nguyen, Phu H and Sj{\o}berg, Dag IK},   journal={IEEE Access},   volume={10},   pages={37422--37445},   year={2022},   publisher={IEEE} }","@article{taibi2020microservices,   title={Microservices anti-patterns: A taxonomy},   author={Taibi, Davide and Lenarduzzi, Valentina and Pahl, Claus},   journal={Microservices: Science and Engineering},   pages={111--128},   year={2020},   publisher={Springer} }","  @inproceedings{pigazzini2020towards,   title={Towards microservice smells detection},   author={Pigazzini, Ilaria and Fontana, Francesca Arcelli and Lenarduzzi, Valentina and Taibi, Davide},   booktitle={Proceedings of the 3rd International Conference on Technical Debt},   pages={92--97},   year={2020} }","@inproceedings{pulnil2022microservices,   title={A microservices quality model based on microservices anti-patterns},   author={Pulnil, Sermsook and Senivongse, Twittie},   booktitle={2022 19th International Joint Conference on Computer Science and Software Engineering (JCSSE)},   pages={1--6},   year={2022},   organization={IEEE} }","  @article{walker2020automated,   title={Automated code-smell detection in microservices through static analysis: A case study},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   journal={Applied Sciences},   volume={10},   number={21},   pages={7800},   year={2020},   publisher={MDPI} }","@inproceedings{walker2021automated,   title={Automated microservice code-smell detection},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   booktitle={Information Science and Applications: Proceedings of ICISA 2020},   pages={211--221},   year={2021},   organization={Springer} }","@inproceedings{brogi2020freshening,   title={Freshening the air in microservices: Resolving architectural smells via refactoring},   author={Brogi, Antonio and Neri, Davide and Soldani, Jacopo},   booktitle={Service-Oriented Computing--ICSOC 2019 Workshops: WESOACS, ASOCA, ISYCC, TBCE, and STRAPS, Toulouse, France, October 28--31, 2019, Revised Selected Papers 17},   pages={17--29},   year={2020},   organization={Springer} }","@inproceedings{bacchiega2022microservices,   title={Microservices smell detection through dynamic analysis},   author={Bacchiega, Paolo and Pigazzini, Ilaria and Fontana, Francesca Arcelli},   booktitle={2022 48th Euromicro Conference on Software Engineering and Advanced Applications (SEAA)},   pages={290--293},   year={2022},   organization={IEEE} }","@inproceedings{schirgi2021quality,   title={Quality assurance for microservice architectures},   author={Schirgi, Thomas and Brenner, Eugen},   booktitle={2021 IEEE 12th International Conference on Software Engineering and Service Science (ICSESS)},   pages={76--80},   year={2021},   organization={IEEE} }"]

  - 类别：["Decomposition", "Service Data Management"]

  - 相关异味:[[
    {
      "relation": "relates",
      "name": "Sharing persistence"
    }

    ]

  - 影响力：4

- **Inappropriate service intimacy**

  - 别名：

  - Descriptions：指的是一个服务除了访问自己的私有数据外，还访问其他服务的私有数据的情况。

  - Detection：提取各个服务的数据库连接信息去判定。

  - 后果：数据模型的变动会涉及到多个服务的实体的修改没降低了可修改性（Modifiability），增加了系统的复杂性（Complexity），降低了系统的模块性（Modularity）。亲密方和被亲密方之间存在数据耦合的情况，增大了服务间的耦合性（Coupling）。访问其他服务的私有数据，增容易造成数据泄露，降低了机密性（confidentiality）。如果数据库发生故障或出现性能问题，所有依赖该数据库的服务都将受到影响，降低了容错性（Fault tolerance）。

  - 原因：未充分考虑到服务的独立性和自治性原则。

  - 举例：一个订单服务可能需要访问用户服务的私有数据（如用户信息），以便在创建订单时关联用户信息。

  - 来源：["@article{taibi2018definition,   title={On the definition of microservice bad smells},   author={Taibi, Davide and Lenarduzzi, Valentina},   journal={IEEE software},   volume={35},   number={3},   pages={56--62},   year={2018},   publisher={IEEE} }","@article{taibi2020microservices,   title={Microservices anti-patterns: A taxonomy},   author={Taibi, Davide and Lenarduzzi, Valentina and Pahl, Claus},   journal={Microservices: Science and Engineering},   pages={111--128},   year={2020},   publisher={Springer} }","  @inproceedings{pulnil2022microservices,   title={A microservices quality model based on microservices anti-patterns},   author={Pulnil, Sermsook and Senivongse, Twittie},   booktitle={2022 19th International Joint Conference on Computer Science and Software Engineering (JCSSE)},   pages={1--6},   year={2022},   organization={IEEE} }","@article{walker2020automated,   title={Automated code-smell detection in microservices through static analysis: A case study},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   journal={Applied Sciences},   volume={10},   number={21},   pages={7800},   year={2020},   publisher={MDPI} }","@inproceedings{walker2021automated,   title={Automated microservice code-smell detection},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   booktitle={Information Science and Applications: Proceedings of ICISA 2020},   pages={211--221},   year={2021},   organization={Springer} }"]

  - 类别：["Decomposition", "Service Data Management"]

  - 相关异味：[[
    {
      "relation": "relates",
      "name": "Inappropriate service intimacy"
    }

    ]

  - 影响力：4

## Security

### Data and Communication

- **Own crypto code**
  - 别名：
  - Descriptions：开发团队使用自己专属的加密解决方案和算法。
  - Detection：审查加密相关代码。
  - 后果：积极定义的解决方案可能会不恰当，可能会比没有任何加密解决方案更糟糕，产生一种错误的安全感，降低了系统的保密性（Confidentiality）、完整性（Integrity）和真实性（Authenticity）。
  - 原因：未充分验证自定义的加密算法
  - 举例：团队可能开发了一种名为"CustomCrypto"的加密库，其中包含他们自己设计的加密算法和相关的加密函数。他们在微服务中使用这个自定义的加密库来加密敏感数据，如用户密码或支付信息。该加密算法可能没有经过充分的安全审计和验证，系统易受到攻击。
  - 来源：["@book{hofmann2017microservices,   title={Microservices best practices for Java},   author={Hofmann, Michael and Schnabel, Erin and Stanley, Katherine and others},   year={2017},   publisher={IBM Redbooks} }","@article{dell2023kubehound,   title={KubeHound: Detecting Microservices’ Security Smells in Kubernetes Deployments},   author={Dell’Immagine, Giorgio and Soldani, Jacopo and Brogi, Antonio},   journal={Future Internet},   volume={15},   number={7},   pages={228},   year={2023},   publisher={MDPI} }"]
  - 类别：["Security", "Data and Communication"]
  - 相关异味：[]
  - 影响力：3
- **Non-encrypted data exposure**
  - 别名：
  - Descriptions：指的是敏感数据在传输或存储中未采用任何加密，导致敏感数据意外暴露的情况。强调消息级别的安全性问题。
  - Detection：根据微服务是否使用标准加密相关的库和框架来判定
  - 后果：敏感数据被暴露后，可能被直接获取或修改，系统的保密性（Confidentiality）和完整性（Integrity）易受到破坏。
  - 原因：缺乏安全意识
  - 举例：假设一个电商平台系统未对用户个人信息、支付信息和订单数据等敏感数据加密，攻击者可以访问和窃取用户的个人信息，可能导致身份盗窃、欺诈和其他恶意活动。
  - 来源：["@book{hofmann2017microservices,   title={Microservices best practices for Java},   author={Hofmann, Michael and Schnabel, Erin and Stanley, Katherine and others},   year={2017},   publisher={IBM Redbooks} }", "@book{dias2020microservices,   title={Microservices security in action},   author={Dias, Wajjakkara Kankanamge Anthony Nuwan and Siriwardena, Prabath},   year={2020},   publisher={Simon and Schuster} }", "@article{dell2023kubehound,   title={KubeHound: Detecting Microservices’ Security Smells in Kubernetes Deployments},   author={Dell’Immagine, Giorgio and Soldani, Jacopo and Brogi, Antonio},   journal={Future Internet},   volume={15},   number={7},   pages={228},   year={2023},   publisher={MDPI} }"]
  - 类别：["Security", "Data and Communication"]
  - 相关异味：[]
  - 影响力：2
- **Hardcoded secrets**
  - 别名：
  - Descriptions：指的是在微服务源码中存在硬编码凭证的情况，或在部署脚本中存在值为密钥的环境变量的情况。
  - Detection：扫描源码和部署脚本文件，Detection是否有未加密的API密钥，数据库密钥等。
  - 后果：在源码或环境变量中存储密钥，一旦被意外暴露，保密性（Confidentiality）和完整性（Integrity）易被违反。
  - 原因：缺乏凭证管理策略
  - 举例：将微服务的数据库连接密钥暴露在k8s的部署脚本的环境变量中，脚本泄露后，数据库中的私密数据易受破坏。
  - 来源：["@book{hofmann2017microservices,   title={Microservices best practices for Java},   author={Hofmann, Michael and Schnabel, Erin and Stanley, Katherine and others},   year={2017},   publisher={IBM Redbooks} }","@article{dell2023kubehound,   title={KubeHound: Detecting Microservices’ Security Smells in Kubernetes Deployments},   author={Dell’Immagine, Giorgio and Soldani, Jacopo and Brogi, Antonio},   journal={Future Internet},   volume={15},   number={7},   pages={228},   year={2023},   publisher={MDPI} }"]
  - 类别：["Security", "Data and Communication"]
  - 相关异味：[]
  - 影响力：2
- **Non-secured service-to-service communications**
  - 别名：
  - Descriptions：指的是微服务之间没有进行安全交互的情况，强调传输层的安全问题。
  - Detection：根据源码中加密通信和身份验证相关的函数调用、库引用或安全框架的使用情况以及配置文件中的协议配置项综合判定。
  - 后果：导致服务间通信的保密性（Confidentiality）受到破坏，传输的数据易受到篡改，破坏了完整性（Integrity）和真实性（Authenticity）。
  - 原因：未考虑服务交互的安全性问题
  - 举例：订单服务和支付服务之间的交互采取明文传输，未采用身份验证和数据加密，导致订单数据易被篡改，使得支付金额不准确。
  - 来源：["@book{hofmann2017microservices,   title={Microservices best practices for Java},   author={Hofmann, Michael and Schnabel, Erin and Stanley, Katherine and others},   year={2017},   publisher={IBM Redbooks} }","@book{carnell2021spring,   title={Spring microservices in action},   author={Carnell, John and S{\'a}nchez, Illary Huaylupo},   year={2021},   publisher={Simon and Schuster} }","@book{dias2020microservices,   title={Microservices security in action},   author={Dias, Wajjakkara Kankanamge Anthony Nuwan and Siriwardena, Prabath},   year={2020},   publisher={Simon and Schuster} }","@article{dell2023kubehound,   title={KubeHound: Detecting Microservices’ Security Smells in Kubernetes Deployments},   author={Dell’Immagine, Giorgio and Soldani, Jacopo and Brogi, Antonio},   journal={Future Internet},   volume={15},   number={7},   pages={228},   year={2023},   publisher={MDPI} }"]
  - 类别：["Security", "Data and Communication"]
  - 相关异味：[]
  - 影响力：3

#### Authentication and Authorization

- **Insufficient access control**

  - 别名：
  - Descriptions：指的是微服务缺乏足够的访问权限控制。
  - Detection：扫描源码根据访问权限控制的业务逻辑的充足性判断。
  - 后果：攻击者获得了本不该得到的数据，系统的保密性（Confidentiality）受到破坏。
  - 原因：未制定合适的访问权限控制
  - 举例：在一个医疗保健微服务系统中，病历服务没有实施足够的访问权限控制，攻击者获得了疾病诊断、药物处方、手术记录等敏感的个人医疗信息。
  - 来源：["@article{dell2023kubehound,   title={KubeHound: Detecting Microservices’ Security Smells in Kubernetes Deployments},   author={Dell’Immagine, Giorgio and Soldani, Jacopo and Brogi, Antonio},   journal={Future Internet},   volume={15},   number={7},   pages={228},   year={2023},   publisher={MDPI} }"]
  - 类别：["Security", "Authentication and Authorization"]
  - 相关异味：[]
  - 影响力：1

- **Publicly accessible microservices**

  - 别名：
  - Descriptions：微服务可被外部客户端直接访问。
  - Detection：根据是否引入API 网关等判断。
  - 后果：每个服务都可以单独执行身份验证，可能导致用户凭证的长期暴露，系统的保密性（Confidentiality）易受到破坏。
  - 原因：缺乏安全风险意识
  - 举例：假设一个微服务系统没有API网关，虽然每个服务都能进行身份验证，但扩充新的服务时还需要单独制定身份验证规则，增加了系统的维护成本。
  - 来源：["@book{pacheco2018microservice,   title={Microservice Patterns and Best Practices: Explore patterns like CQRS and event sourcing to create scalable, maintainable, and testable microservices},   author={Pacheco, Vinicius Feitosa},   year={2018},   publisher={Packt Publishing Ltd} }","@article{dell2023kubehound,   title={KubeHound: Detecting Microservices’ Security Smells in Kubernetes Deployments},   author={Dell’Immagine, Giorgio and Soldani, Jacopo and Brogi, Antonio},   journal={Future Internet},   volume={15},   number={7},   pages={228},   year={2023},   publisher={MDPI} }"]
  - 类别：["Security", "Authentication and Authorization"]
  - 相关异味：[]
  - 影响力：1

- **Unnecessary privileges to microservices**

  - 别名：
  - Descriptions：指的是微服务被授予不必要的特权的情况。
  - Detection：根据服务的业务逻辑和授权策略综合判断。
  - 后果：当微服务被授予不必要的特权时，可以获取和暴露与其职责无关的敏感信息，会导致保密性（Confidentiality）和完整性（Integrity）问题。
  - 原因：未采纳最少特权原则
  - 举例：用户管理微服务被授予了访问订单数据和库存数据的权限，而实际上它只需要处理用户相关的功能，那么就存在不必要的权限问题。
  - 来源：["@book{carnell2021spring,   title={Spring microservices in action},   author={Carnell, John and S{\'a}nchez, Illary Huaylupo},   year={2021},   publisher={Simon and Schuster} }","@article{dell2023kubehound,   title={KubeHound: Detecting Microservices’ Security Smells in Kubernetes Deployments},   author={Dell’Immagine, Giorgio and Soldani, Jacopo and Brogi, Antonio},   journal={Future Internet},   volume={15},   number={7},   pages={228},   year={2023},   publisher={MDPI} }"]
  - 类别：["Security", "Authentication and Authorization"]
  - 相关异味：[]
  - 影响力：2

- **Unauthenticated traffic**

  - 别名：
  - Descriptions：指的是出现来自外部的未经身份认证的请求，或微服务间有未经身份认证的请求的情况。
  - Detection：扫描源码分析是否包含身份认证逻辑。
  - 后果：当微服务间以及外部和服务间没有适当的身份认证机制，会导致真实性（Authenticity）问题。
  - 原因：未采纳合适的身份验证机制
  - 举例：如果订单管理微服务接受来自外部的未经身份认证的请求，或者通过内部通信接收到未经身份认证的请求，那么就存在未经身份认证的流量问题。这可能意味着任何未经身份认证的用户或系统都可以访问订单管理微服务。
  - 来源：["@book{hofmann2017microservices,   title={Microservices best practices for Java},   author={Hofmann, Michael and Schnabel, Erin and Stanley, Katherine and others},   year={2017},   publisher={IBM Redbooks} }","@article{dell2023kubehound,   title={KubeHound: Detecting Microservices’ Security Smells in Kubernetes Deployments},   author={Dell’Immagine, Giorgio and Soldani, Jacopo and Brogi, Antonio},   journal={Future Internet},   volume={15},   number={7},   pages={228},   year={2023},   publisher={MDPI} }"]
  - 类别：["Security", "Authentication and Authorization"]
  - 相关异味：[]
  - 影响力：1

- **Multiple user authentication**

  - 别名：
  - Descriptions：指的是微服务系统中存在多个接入点用来处理用户身份验证和授权的情况。
  - Detection：扫描源码分析是否包含多个身份验证逻辑。
  - 后果：使用多个访问点进行身份验证，会导致真实性（Authenticity）问题。
  - 原因：未采用单点登录的方式
  - 举例：一个电商微服务系统中，有多个用于身份验证的接入点，分别处理普通用户、商家用户和管理员用户的身份验证和访问权限控制。增加了系统的攻击面和安全风险。
  - 来源：["@book{hofmann2017microservices,   title={Microservices best practices for Java},   author={Hofmann, Michael and Schnabel, Erin and Stanley, Katherine and others},   year={2017},   publisher={IBM Redbooks} }","@article{dell2023kubehound,   title={KubeHound: Detecting Microservices’ Security Smells in Kubernetes Deployments},   author={Dell’Immagine, Giorgio and Soldani, Jacopo and Brogi, Antonio},   journal={Future Internet},   volume={15},   number={7},   pages={228},   year={2023},   publisher={MDPI} }"]类别：["Security", "Authentication and Authorization"]
  - 相关异味：[]
  - 影响力：1

- **Centralized Authorization**

  - 别名：

  - Descriptions：指的是授权决策和访问控制逻辑集中在一个中心化的组件或服务中进行管理的情况。

  - Detection：根据包含身份授权逻辑的服务数判定。

  - 后果：如果集中授权的中心化组件或服务出现问题，可能会导致授权和访问控制的失败，从而影响真实性（Authenticity）。

  - 原因：未考虑分布式授权方案

  - 举例：假设在一个微服务系统中，集中式授权被用于管理对敏感数据的访问权限。网关服务负责验证用户的身份，并控制用户对各个微服务的访问权限。

    然而，由于设计或配置上的缺陷，网关服务的授权逻辑存在漏洞。攻击者利用这个漏洞，成功绕过授权验证，直接访问了包含敏感数据的微服务。

  - 来源：["@book{hofmann2017microservices,   title={Microservices best practices for Java},   author={Hofmann, Michael and Schnabel, Erin and Stanley, Katherine and others},   year={2017},   publisher={IBM Redbooks} }","@article{dell2023kubehound,   title={KubeHound: Detecting Microservices’ Security Smells in Kubernetes Deployments},   author={Dell’Immagine, Giorgio and Soldani, Jacopo and Brogi, Antonio},   journal={Future Internet},   volume={15},   number={7},   pages={228},   year={2023},   publisher={MDPI} }"]类别：["Security", "Authentication and Authorization"]

  - 类别：["Security", "Authentication and Authorization"]

  - 相关异味：[]

  - 影响力：1

## Lifecycle Management

#### Migration

- **Nonhomogeneous adoption**

  - 别名：
  - Descriptions：指的是只有少数团队迁移到微服务，是否迁移由开发团队决定的情况。
  - Detection：根据整个系统的微服务覆盖率判定。
  - 后果：整个系统既有采用单体架构的部分，也有采用微服务架构的部分，带来部署和安装困难，降低了整个系统的可安装性（Installability）。
  - 原因：组织缺乏整体规划
  - 举例：公司的订单管理团队决定将其订单管理功能迁移到微服务架构中，他们创建了一个独立的订单管理微服务和相应的数据库。他们采用了现代的技术栈和最佳实践，使用容器化和自动化部署来支持持续集成和持续交付。然而，其他团队，如用户管理团队和产品目录团队，仍然继续使用单体架构和共享数据库。这些团队认为迁移到微服务架构会带来太多的复杂性和风险，因此选择保持现状。结果是，公司的技术栈和架构变得不一致。订单管理团队的微服务使用了不同的技术和工具，而其他团队仍然使用传统的单体开发方式。这导致了不一致的开发和部署流程。
  - 来源：["@article{taibi2020microservices,   title={Microservices anti-patterns: A taxonomy},   author={Taibi, Davide and Lenarduzzi, Valentina and Pahl, Claus},   journal={Microservices: Science and Engineering},   pages={111--128},   year={2020},   publisher={Springer} }"]
  - 类别：["Lifecycle Management", "Migration"]
  - 相关异味：[]
  - 影响力：1

#### Deployment

- **Local logging**
  - 别名：

  - Descriptions：指的是每个微服务产生的日志都存储到本地的情况。缺乏统一的分布式日志机制来聚合所有的日志，用于集中监控、分析微服务系统。

  - Detection：根据系统的日志收集和传输方式（可Detection依赖文件中是否引入日志收集相关的依赖）去判定。

  - 后果：当日志分散存储在各个微服务的本地时，如果某个微服务发生故障或崩溃，相关的日志可能会丢失。这导致难以追踪和诊断故障，降低了系统的可靠性（Reliability）。没有一个集中的、统一的视图来查看和分析所有微服务的日志数据，降低了系统的可分析性（Analyzability）。

  - 原因：缺乏统一的日志管理策略

  - 举例：在一个电商微服务系统中，每个微服务都有自己的日志记录机制，将日志存储在本地文件或数据库中。例如，用户管理微服务会将用户的登录和注册信息记录在自己的本地日志文件中，订单管理微服务会将订单创建和更新的日志存储在本地日志文件中。由于每个微服务都有自己的日志存储，无法实时监控整个系统的运行状态，限制了对系统行为和性能问题的全面理解。

  - 来源：["@article{taibi2020microservices,   title={Microservices anti-patterns: A taxonomy},   author={Taibi, Davide and Lenarduzzi, Valentina and Pahl, Claus},   journal={Microservices: Science and Engineering},   pages={111--128},   year={2020},   publisher={Springer} }","@article{zhou2023revisiting,   title={Revisiting the practices and pains of microservice architecture in reality: An industrial inquiry},   author={Zhou, Xin and Li, Shanshan and Cao, Lingli and Zhang, He and Jia, Zijia and Zhong, Chenxing and Shan, Zhihao and Babar, Muhammad Ali},   journal={Journal of Systems and Software},   volume={195},   pages={111521},   year={2023},   publisher={Elsevier} }"]

  - 类别：["Lifecycle Management", "Deployment "]

  - 相关异味：[]

  - 影响力：5
- **Multiple services per deployment unit**
  - 别名：
  - Descriptions：指的是在单个节点或容器部署多个微服务实例的情况，多个实例共享单个节点或容器的资源。
  - Detection：根据服务的部署策略去判定。
  - 后果：多实例共享同一个主机或节点的资源，在面对高负载的情况下，影响系统的性能效率（Performance Efficiency）和可适应性（Adaptability）。服务实例间相互影响，降低了系统的模块性（Modularity）。
  - 原因：未实现每个服务的隔离，未遵循自治的原则
  - 举例：在一个电商微服务系统中，将所有服务实例部署在同一个节点上，且未采用容器化部署。服务实例间可能存在技术冲突问题。
  - 来源：["@inproceedings{soldani2023kubernetes,   title={Kubernetes-Enabled Detection and Resolution of Architectural Smells for Microservices},   author={Soldani, Jacopo and Rendina, Davide and Fontana, Francesca Arcelli and Brogi, Antonio},   booktitle={2023 IEEE International Conference on Service-Oriented System Engineering (SOSE)},   pages={75--80},   year={2023},   organization={IEEE} }"]
  - 类别：["Lifecycle Management", "Deployment "]
  - 相关异味：[]
  - 影响力：5
- **Manual configuration**
  - 别名：
  - Descriptions：指的是服务的配置由开发人员手动完成的情况。
  - Detection：Detection是否存在与配置服务器交互的代码，然后做进一步判定。
  - 后果：手动配置微服务的过程非常耗时且易出错，降低了容错性（Fault tolerance）。
  - 原因：未使用配置服务器，自动化配置过程。
  - 举例：假设有一个Web应用程序，它由多个微服务组成。在手动配置的情况下，开发人员需要手动编辑每个微服务的配置文件或代码，以配置其运行时行为。
  - 来源：["@inproceedings{schirgi2021quality,   title={Quality assurance for microservice architectures},   author={Schirgi, Thomas and Brenner, Eugen},   booktitle={2021 IEEE 12th International Conference on Software Engineering and Service Science (ICSESS)},   pages={76--80},   year={2021},   organization={IEEE} }"]
  - 类别：["Lifecycle Management", "Deployment "]
  - 相关异味：[]
  - 影响力：1
- **Single DevOps toolchain**
  - 别名：
  - Descriptions：指的是每个微服务没有单独的Devops工具链，所有微服务使用相同的管道的情况，违反了服务的自治性原则。
  - Detection：检查是否存在统一的构建脚本、部署配置等。
  - 后果：每个微服务使用通用的管道，限制了服务的自治性，降低了服务的模块性（Modularity）。服务在构建、部署和运维过程可能会有共同限制，降低了可维护性（Maintainability）。
  - 原因：未针对每个服务建立单独的自治管道。
  - 举例：所有微服务可能使用相同的版本控制系统（如Git），相同的构建工具（如Jenkins或GitLab CI/CD），相同的部署工具（如Docker和Kubernetes），以及相同的监控工具（如Prometheus和Grafana）。每个微服务的代码和配置都存储在相同的代码仓库中，并且共享相同的部署和监控流程。微服务失去了自治性。
  - 来源：["@article{balalaie2018microservices,   title={Microservices migration patterns},   author={Balalaie, Armin and Heydarnoori, Abbas and Jamshidi, Pooyan and Tamburri, Damian A and Lynn, Theo},   journal={Software: Practice and Experience},   volume={48},   number={11},   pages={2019--2042},   year={2018},   publisher={Wiley Online Library} }"]
  - 类别：["Lifecycle Management", "Deployment "]
  - 相关异味：[]
  - 影响力：6

#### Operations 

- **Insufficient monitoring**
  - 别名：Lack of monitoring
  - Descriptions：微服务受到服务水平协议（SLA）的限制，所以监控微服务的行为至关重要。不充足的服务监控增加了维护的困难，难以对故障进行定位。
  - Detection：根据整个系统采取的监控策略进一步判定。
  - 后果：对整个系统的监控不足，限制了可靠性（Reliability）和可维护性（Maintainability）。缺乏监控可能使得对微服务系统的修改和演进变得困难，降低了可修改性（Modifiability）和可分析性（Analyzability）。缺乏监控可能导致安装过程中的错误配置、环境不兼容或依赖项冲突等问题，从而影响系统的可安装性（Installability)。
  - 原因：缺乏监控策略和工具
  - 举例：一个微服务系统中各服务只有本地执行日志，并未采取其他监控策略。当出现故障时，很难追溯原因，限制了系统的可维护性。
  - 来源：["@article{balalaie2018microservices,   title={Microservices migration patterns},   author={Balalaie, Armin and Heydarnoori, Abbas and Jamshidi, Pooyan and Tamburri, Damian A and Lynn, Theo},   journal={Software: Practice and Experience},   volume={48},   number={11},   pages={2019--2042},   year={2018},   publisher={Wiley Online Library} }","@article{taibi2020microservices,   title={Microservices anti-patterns: A taxonomy},   author={Taibi, Davide and Lenarduzzi, Valentina and Pahl, Claus},   journal={Microservices: Science and Engineering},   pages={111--128},   year={2020},   publisher={Springer} }","  @article{zhou2023revisiting,   title={Revisiting the practices and pains of microservice architecture in reality: An industrial inquiry},   author={Zhou, Xin and Li, Shanshan and Cao, Lingli and Zhang, He and Jia, Zijia and Zhong, Chenxing and Shan, Zhihao and Babar, Muhammad Ali},   journal={Journal of Systems and Software},   volume={195},   pages={111521},   year={2023},   publisher={Elsevier} }","@inproceedings{schirgi2021quality,   title={Quality assurance for microservice architectures},   author={Schirgi, Thomas and Brenner, Eugen},   booktitle={2021 IEEE 12th International Conference on Software Engineering and Service Science (ICSESS)},   pages={76--80},   year={2021},   organization={IEEE} }"]
  - 类别：["Lifecycle Management", "Operations "]
  - 相关异味：[]
  - 影响力：10
- **Manual per service handling of network failures**
  - 别名：
  - Descriptions：指的是当目标服务不可用性手动解决并定向到可用的服务实例的情况。
  - Detection：根据微服务是否采取容易化编排和管理（如k8s）来判定。
  - 后果：增加了维护的复杂性。由于需要手动干预来解决故障，系统的恢复时间可能会延长，降低了系统的可用性（availablity）。人为干预，存在错误风险，降低了系统的可靠性（reliability）。增加了系统的维护成本，降低了可维护性（Maintainability）。
  - 原因：未采取容器化编排和管理，自动处理容器实例出现故障的情况。
  - 举例：在一个电商微服务系统中，订单实例需要调用支付实例完成支付，如果支付实例出现故障，那么将无法处理当前请求，需要手动重新部署支付实例，造成不必要的麻烦。
  - 来源：["@article{de2021identifying,   title={Identifying architectural technical debt, principal, and interest in microservices: A multiple-case study},   author={de Toledo, Saulo S and Martini, Antonio and Sj{\o}berg, Dag IK},   journal={Journal of Systems and Software},   volume={177},   pages={110968},   year={2021},   publisher={Elsevier} }"]
  - 类别：["Lifecycle Management", "Operations "]
  - 相关异味：[]
  - 影响力：9
- **Weak source code and knowledge management**
  - 别名：
  - Descriptions：指的是不同服务的源代码和知识管理薄弱的情况。
  - Detection：根据每个服务是否使用存储库来判定。
  - 后果：如果代码缺失，可能无法追溯，降低了可分析性（Analyzability）。开发人员可能不清楚代码的功能、目的和依赖关系，从而增加了改进的难度，降低了可维护性（Maintainability）和可修改性（Modifiability）。系统难以拓展，可适应性（Adaptability）变弱，增加了新功能引入的复杂性，因代码的可学习性（Learnability）变差，开发人员无法轻松了解现有代码的结构和设计。
  - 原因：组织对源代码和知识管理的重要性缺乏认识。
  - 举例：假设有一个电商微服务系统，当前所有服务的版本为v2.1，假设订单服务v2.1版本突然出现问题，那么需要对比先前版本的代码分析故障原因。若没有存储库，将给故障的分析带来困难。
  - 来源：["@inproceedings{de2019architectural,   title={Architectural technical debt in microservices: a case study in a large company},   author={De Toledo, Saulo Soares and Martini, Antonio and Przybyszewska, Agata and Sj{\o}berg, Dag IK},   booktitle={2019 IEEE/ACM International Conference on Technical Debt (TechDebt)},   pages={78--87},   year={2019},   organization={IEEE} }"]
  - 类别：["Lifecycle Management", "Operations "]
  - 相关异味：[]
  - 影响力：7
- **No continuous integration / continuous delivery (CI/CD)**
  - 别名：["No DevOps tools"，"Microservices DevOps"，"Inadequate automation"]
  - Descriptions：指缺乏持续集成和持续交付的做法或流程。CI/CD是一种软件开发实践，旨在通过自动化构建、测试和部署流程，实现快速、频繁、可靠的软件交付。
  - Detection：检查微服务是否存在自动化的构建配置文件（如Jenkinsfile等）。
  - 后果：如果没有CI/CD，如果服务间具有复杂的依赖关系，增加了手动部署的难度，降低了可安装性（Installability）。手动的构建、测试和部署，容易引发人为错误，降低了系统的容错性（Fault tolerance）；增加了时间成本，影响了时间行为（Time-behavior）。
  - 原因：未意识到CI/CD的重要性。
  - 举例：团队在每次软件更新或发布时手动执行部署过程。他们可能需要手动复制文件、配置服务器、手动运行脚本等。这种手动部署过程容易出错、耗时且不可靠。
  - 来源：["@inproceedings{brown2016implementation,   title={Implementation patterns for microservices architectures},   author={Brown, Kyle and Woolf, Bobby},   booktitle={Proceedings of the 23rd conference on pattern languages of programs},   pages={1--35},   year={2016} }","@article{taibi2020microservices,   title={Microservices anti-patterns: A taxonomy},   author={Taibi, Davide and Lenarduzzi, Valentina and Pahl, Claus},   journal={Microservices: Science and Engineering},   pages={111--128},   year={2020},   publisher={Springer} }","@article{zhou2023revisiting,   title={Revisiting the practices and pains of microservice architecture in reality: An industrial inquiry},   author={Zhou, Xin and Li, Shanshan and Cao, Lingli and Zhang, He and Jia, Zijia and Zhong, Chenxing and Shan, Zhihao and Babar, Muhammad Ali},   journal={Journal of Systems and Software},   volume={195},   pages={111521},   year={2023},   publisher={Elsevier} }","@inproceedings{schirgi2021quality,   title={Quality assurance for microservice architectures},   author={Schirgi, Thomas and Brenner, Eugen},   booktitle={2021 IEEE 12th International Conference on Software Engineering and Service Science (ICSESS)},   pages={76--80},   year={2021},   organization={IEEE} }"]
  - 类别：["Lifecycle Management", "Operations "]
  - 相关异味：[]
  - 影响力：3
- **No health check**
  - 别名：
  - Descriptions：微服务是灵活且不稳定的，它可以部署在任何地方，并且可以在特定的时间或上下文中变得不可用。如果没有健康检查机制，服务实例突然变得不可用，会造成依赖该实例的服务长时间等待。
  - Detection：通断Detection是否引入相关依赖（Consul、ZooKeeper、etcd、Eureka、Linkerd等），判断是否采用健康检查机制
  - 后果：没有及时Detection到故障或异常情况，进而导致系统无法正常运行，降低了系统的可用性(availablity)。
  - 原因：忽视了健康检查的必要性
  - 举例：在一个订票系统中，由于缺乏健康检查，当身份验证服务出现问题时，其他依赖于该服务的微服务将无法准确判断该服务是否可用，从而引发错误或产生意外行为。
  - 来源：["@inproceedings{schirgi2021quality,   title={Quality assurance for microservice architectures},   author={Schirgi, Thomas and Brenner, Eugen},   booktitle={2021 IEEE 12th International Conference on Software Engineering and Service Science (ICSESS)},   pages={76--80},   year={2021},   organization={IEEE} }"]
  - 类别：["Lifecycle Management", "Operations "]
  - 相关异味:[]
  - 影响力：1

## Team & Technology

#### Team 

- **Team coupling**
  - 别名：
  - Descriptions：指的是微服务系统按技术层划分团队的情况，对微服务的任何更改都可能导致跨团队的审批，给开发和优化过程带来极大不便。
  - Detection：根据不同开发团队对代码库的贡献情况决定。
  - 后果：对业务逻辑的简单修改都可能需要跨团队的批准，影响了时间行为（Time-behavior）。按技术层划分团队而不是按照业务功能划分团队，团队之间不能保证及时的交互，不利于服务的模块化（Modularity）发展。
  - 原因：技术驱动的组织结构
  - 举例：团队成员只对自己负责的技术层中的微服务进行更改和发布，缺乏对其他技术层微服务的自主权和责任。这使得团队无法独立地进行微服务的优化和改进。
  - 来源：["@inproceedings{fang2023identifying,   title={Identifying Anti-Patterns in Distributed Systems With Heterogeneous Dependencies},   author={Fang, Hongzhou and Cai, Yuanfang and Kazman, Rick and Lefever, Jason},   booktitle={2023 IEEE 20th International Conference on Software Architecture Companion (ICSA-C)},   pages={116--120},   year={2023},   organization={IEEE} }"]
  - 类别：["Team & Technology",  "Team"]
  - 相关异味：[]
  - 影响力：2
- **Common ownership**
  - 别名：
  - Descriptions：指的是一个团队负责整个微服务系统的开发，而不是将不同的微服务分配给不同的团队进行独立开发和维护。这种情况下，每个团队都在同一个开发和部署管道中工作，没有充分体现微服务的独立性和自治性。
  - Detection：通过分析代码库的贡献团队数量进行判断。
  - 后果：由于整个微服务系统由一个团队负责开发，各个微服务之间的独立性受到限制。降低了服务的模块性（Modularity）。
  - 原因：忽视了多团队独立开发的优势
  - 举例：一个团队负责开发和维护整个微服务系统中的多个微服务。这意味着团队需要同时处理不同技术栈和业务逻辑，导致开发困难。
  - 来源：["@article{taibi2020microservices,   title={Microservices anti-patterns: A taxonomy},   author={Taibi, Davide and Lenarduzzi, Valentina and Pahl, Claus},   journal={Microservices: Science and Engineering},   pages={111--128},   year={2020},   publisher={Springer} }"]
  - 类别：["Team & Technology",  "Team"]
  - 相关异味：[]
  - 影响力：1

#### Technology

- **Too many standards**
  - 别名：["Excessive diversity or heterogeneity in the technologies chosen across the system"，,"Excessive diversity", "Too many technologies"]
  - Descriptions：指的是微服务系统在开发过程中使用了多种开发语言、框架的情况。
  - Detection：分析依赖文件确定服务使用的框架，分析存储库确定不同语言的使用情况。
  - 后果：使用多种不同的技术会增加系统的复杂性（Complexity），对系统的可用性（Availability）产生负面影响。使得系统的可维护性（Maintainability）变得更为困难。每个技术栈都需要独立的维护和更新，包括版本升级、安全漏洞修复等。多种技术的使用可能增加团队成员的学习负担，降低了可学习性（Learnability）。
  - 原因：开发团队缺乏统一的技术标准和指导
  - 举例：整个微服务系统中使用了多个数据访问框架（Spring Data JPA 、MyBatis等） ，增加了系统的复杂性，并且这种多样化的选择没有明确的理由。
  - 来源：["@article{de2021identifying,   title={Identifying architectural technical debt, principal, and interest in microservices: A multiple-case study},   author={de Toledo, Saulo S and Martini, Antonio and Sj{\o}berg, Dag IK},   journal={Journal of Systems and Software},   volume={177},   pages={110968},   year={2021},   publisher={Elsevier} }","@article{taibi2018definition,   title={On the definition of microservice bad smells},   author={Taibi, Davide and Lenarduzzi, Valentina},   journal={IEEE software},   volume={35},   number={3},   pages={56--62},   year={2018},   publisher={IEEE} }","@article{de2022accumulation,   title={Accumulation and prioritization of architectural debt in three companies migrating to microservices},   author={De Toledo, Saulo Soares and Martini, Antonio and Nguyen, Phu H and Sj{\o}berg, Dag IK},   journal={IEEE Access},   volume={10},   pages={37422--37445},   year={2022},   publisher={IEEE} }","@article{taibi2020microservices,   title={Microservices anti-patterns: A taxonomy},   author={Taibi, Davide and Lenarduzzi, Valentina and Pahl, Claus},   journal={Microservices: Science and Engineering},   pages={111--128},   year={2020},   publisher={Springer} }","@inproceedings{pulnil2022microservices,   title={A microservices quality model based on microservices anti-patterns},   author={Pulnil, Sermsook and Senivongse, Twittie},   booktitle={2022 19th International Joint Conference on Computer Science and Software Engineering (JCSSE)},   pages={1--6},   year={2022},   organization={IEEE} }","@article{walker2020automated,   title={Automated code-smell detection in microservices through static analysis: A case study},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   journal={Applied Sciences},   volume={10},   number={21},   pages={7800},   year={2020},   publisher={MDPI} }"," @inproceedings{walker2021automated,   title={Automated microservice code-smell detection},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   booktitle={Information Science and Applications: Proceedings of ICISA 2020},   pages={211--221},   year={2021},   organization={Springer} }"]
  - 类别：["Team & Technology", "Technology"]
  - 相关异味：[]
  - 影响力：7
- **Inadequate techniques support**
  - 别名：
  - Descriptions：指的是开发微服务系统时未采取最佳技术选择，随着业务功能的扩展，当前技术栈可能无法满足的情况。
  - Detection：对微服务系统的架构和技术选择进行审查，评估是否存在不足的技术支持。
  - 后果：使用不完备的技术对系统的可维护性（Maintainability）产生负面影响。如果当前技术栈无法满足业务需求或缺乏必要的功能支持，可能无法实现系统的全部功能，影响了系统的功能完整性（Functional Completeness）。
  - 原因：开发团队缺乏统一的技术标准和指导
  - 举例：一些微服务使用关系型数据库（如MySQL）作为数据存储，在处理高并发和大规模数据操作时可能会遇到性能瓶颈，数据库的读写操作可能会变得缓慢，导致系统响应时间延迟。
  - 来源：["@article{de2021identifying,   title={Identifying architectural technical debt, principal, and interest in microservices: A multiple-case study},   author={de Toledo, Saulo S and Martini, Antonio and Sj{\o}berg, Dag IK},   journal={Journal of Systems and Software},   volume={177},   pages={110968},   year={2021},   publisher={Elsevier} }"]
  - 类别：["Team & Technology", "Technology"]
  - 相关异味：[]
  - 影响力：6
- **Shared libraries**
  - 别名：["Reusing third-party implementations"，"Misusing shared libraries"]
  - Descriptions：指的是不同微服务间共享依赖库的情况。如果多个微服务依赖于同一个共享库，对该共享库的变更可能会对所有使用它的微服务产生影响。
  - Detection：通过分析每个服务的依赖文件去判定。
  - 后果：如果多个微服务依赖于同一个共享库，对该库的任何变更可能会涉及多个微服务的修改。增加了系统的耦合性，破坏了系统的模块性（Modularity），对系统的可维护性（Maintainability）、抵抗性（Resistance）、易安装性（Installability）产生负面影响。
  - 原因：未将与共享库相关的业务逻辑提取到一个公共服务中。
  - 举例：假设有一个电子商务平台，包含订单服务和支付服务两个微服务。开发团队决定使用一个共享库来处理日期和时间相关的功能，例如日期格式化、时区转换等。他们选择了一个功能强大的日期时间处理库，并在订单服务和支付服务中都引入了该库。然而，随着时间的推移，团队注意到该共享库只有一小部分功能被实际使用，而且库的更新变得缓慢。在进一步的分析中，他们发现该共享库过于庞大且复杂，不适合微服务的实际需求。此外，由于库的更新速度较慢，微服务无法及时获得新功能和修复的漏洞。
  - 来源：["@article{de2021identifying,   title={Identifying architectural technical debt, principal, and interest in microservices: A multiple-case study},   author={de Toledo, Saulo S and Martini, Antonio and Sj{\o}berg, Dag IK},   journal={Journal of Systems and Software},   volume={177},   pages={110968},   year={2021},   publisher={Elsevier} }","@article{taibi2018definition,   title={On the definition of microservice bad smells},   author={Taibi, Davide and Lenarduzzi, Valentina},   journal={IEEE software},   volume={35},   number={3},   pages={56--62},   year={2018},   publisher={IEEE} }","@article{de2022accumulation,   title={Accumulation and prioritization of architectural debt in three companies migrating to microservices},   author={De Toledo, Saulo Soares and Martini, Antonio and Nguyen, Phu H and Sj{\o}berg, Dag IK},   journal={IEEE Access},   volume={10},   pages={37422--37445},   year={2022},   publisher={IEEE} }","@article{taibi2020microservices,   title={Microservices anti-patterns: A taxonomy},   author={Taibi, Davide and Lenarduzzi, Valentina and Pahl, Claus},   journal={Microservices: Science and Engineering},   pages={111--128},   year={2020},   publisher={Springer} }","@inproceedings{pulnil2022microservices,   title={A microservices quality model based on microservices anti-patterns},   author={Pulnil, Sermsook and Senivongse, Twittie},   booktitle={2022 19th International Joint Conference on Computer Science and Software Engineering (JCSSE)},   pages={1--6},   year={2022},   organization={IEEE} }","@article{walker2020automated,   title={Automated code-smell detection in microservices through static analysis: A case study},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   journal={Applied Sciences},   volume={10},   number={21},   pages={7800},   year={2020},   publisher={MDPI} }","@inproceedings{walker2021automated,   title={Automated microservice code-smell detection},   author={Walker, Andrew and Das, Dipta and Cerny, Tomas},   booktitle={Information Science and Applications: Proceedings of ICISA 2020},   pages={211--221},   year={2021},   organization={Springer} }","@inproceedings{schirgi2021quality,   title={Quality assurance for microservice architectures},   author={Schirgi, Thomas and Brenner, Eugen},   booktitle={2021 IEEE 12th International Conference on Software Engineering and Service Science (ICSESS)},   pages={76--80},   year={2021},   organization={IEEE} }"]
  - 类别：["Team & Technology", "Technology"]
  - 相关异味：[]
  - 影响力：7
- **Focus on latest technologies**
  - 别名：["Lust","Too new technology"]
  - Descriptions：指的是开发团队过于追求使用最新的技术和工具，而忽视了系统需求和可维护性。
  - Detection：对系统中使用的技术栈进行调查和分析，然后做进一步判定。
  - 后果：会带来一系列安全性（Security）问题，可能存在潜在缺陷，降低了容错性（Fault tolerance）。调研资料有限，上手成本高，带来不必要的复杂性），影响可适应性（Adaptability），后续维护性（Maintainability）也很差。新技术通常伴随着陡峭的学习曲线。过于频繁地引入新技术可能导致团队需要花费大量时间来学习和适应，降低了系统的可学习性（Learnability）。
  - 原因：开发团队可能过于关注最新技术的潮流和热点，希望通过使用最新技术来展示他们的技术能力和创新性。他们忽视了系统的实际需求和技术选择的合理性。
  - 举例：假设有一个团队负责开发一个在线社交媒体平台的用户管理微服务。在技术选型时，他们听说了一个全新的、被广泛讨论的身份验证和授权框架，声称具有先进的安全特性和灵活的权限管理功能。然而，这个新框架刚刚发布不久，还没有经过广泛的实际应用和验证。虽然它声称具有先进的安全特性，但它的文档和支持资源相对有限。此外，它还缺乏与团队已使用的其他组件的良好集成和兼容性。
  - 来源：["@article{taibi2018definition,   title={On the definition of microservice bad smells},   author={Taibi, Davide and Lenarduzzi, Valentina},   journal={IEEE software},   volume={35},   number={3},   pages={56--62},   year={2018},   publisher={IEEE} }", "@article{taibi2020microservices,   title={Microservices anti-patterns: A taxonomy},   author={Taibi, Davide and Lenarduzzi, Valentina and Pahl, Claus},   journal={Microservices: Science and Engineering},   pages={111--128},   year={2020},   publisher={Springer} }", "@inproceedings{schirgi2021quality,   title={Quality assurance for microservice architectures},   author={Schirgi, Thomas and Brenner, Eugen},   booktitle={2021 IEEE 12th International Conference on Software Engineering and Service Science (ICSESS)},   pages={76--80},   year={2021},   organization={IEEE} }"]
  - 类别：["Team & Technology", "Technology"]
  - 相关异味：[]
  - 影响力：14