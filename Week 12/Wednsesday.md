# Wednesday February 15, 2023

## Client-Server Model

### What is a Server?

 Is a computer program or device that provides services or resources to other computers or programs, known as clients, over a network.

### What is a Client?

Is a computer program or device that requests services or resources from a server over a network. Clients can take many forms, such as web browsers, mobile apps, email clients, game clients, and file transfer clients. When a client wants to access a resource or service provided by a server, it sends a request to the server over the network. The server processes the request and sends a response back to the client, which can then use the response to display information to the user, process data, or perform other tasks.

### Is a server just another physical computer?

A server can be a physical computer, but it can also be a virtual machine or a cloud-based service.

#### Why do we refer to a certain class of applications as Servers?

Because these applications are designed to provide services or resources to other computers or devices over a network. In other words, they "serve" other devices by fulfilling requests for information or resources.

#### What is the difference?

While server applications and physical servers are both important components of modern computing infrastructure, they serve different functions. Server applications provide services and resources to clients, while physical servers provide the computing power and resources needed to run those applications. Without physical servers, server applications would have nowhere to run, and without server applications, physical servers would not have anything to do. Together, they form the backbone of modern network-based computing.

### Is there any similarity between human communication and the client-server model?

One similarity between human communication and the client-server model is that both involve a sender and a receiver exchanging messages or information. In both cases, there is a goal or purpose to the communication, and the communication is facilitated by a medium or protocol.

### Is the client-server model applicable only to the Web?

No, the client-server model is not applicable only to the Web. The client-server model is a general architectural pattern that can be applied to a wide range of computing systems, including distributed computing systems, local area networks, and cloud-based systems, among others.

#### Do desktop applications use the client-server model?

Yes, desktop applications can use the client-server model. In fact, many desktop applications are built using the client-server model, especially in enterprise and business environments.

In a client-server desktop application, the client software is installed on individual desktop computers, while the server software is installed on a central server or servers. The client software communicates with the server software over a network, typically using a protocol such as TCP/IP or HTTP.

---

## HTTP Learning Exercise

### What is HTTP?

HTTP is an application protocol that is used for transmitting data over the internet.

### What is a Communication Protocol?

Is a set of rules and standards that govern the exchange of data between different systems or devices.

#### Do humans use communication protocols?

Yes, humans use communication protocols all the time in various forms of communication. For example, spoken languages such as English and Spanish have their own rules and standards for grammar, pronunciation, and vocabulary that people use to communicate with one another.

### What is a Request in HTTP?

Is a message sent by a client to a server, asking the server to perform a certain action.

### What is a Response in HTTP?

Is a message sent by a server to a client in response to a client's request. 

### What is an HTTP method?

Is a type of request used by a client to indicate the action it wants to perform on a resource located on a server.

### What are HTTP request headers?

Are additional pieces of information sent by a client to a server as part of an HTTP request. They provide metadata about the request, such as the content type, language, and encoding, as well as any authentication credentials or cookies that are required.

---

## APIs Core Understanding

### What is an API?

Is a set of protocols, routines, and tools that allow different software applications to communicate with each other.

### What is a Protocol?

Protocols define how data is formatted, transmitted, received, and interpreted by different entities involved in the communication process

### Is the term API only applicable to the communication of programs over the Internet?

No, the term API is not only applicable to the communication of programs over the Internet. APIs can also be used for communication between programs on the same machine or within a closed network.

### Why is structured communication between two programs important?

Are important for enabling interoperability, ensuring consistency, promoting scalability, and enhancing security in software systems.

#### Do we humans use APIs when communicating without technology?

An API, or Application Programming Interface, is essentially a set of rules, protocols, and tools for building software applications. It defines how different components of a software system can interact with each other, and specifies the format and structure of the data that can be exchanged between them. Similarly, when humans communicate with each other, there are often unwritten rules and protocols that govern the interaction. 

### Is an API just another program or a standard?

is not necessarily just another program, but rather it is a set of protocols, routines, and tools for building software applications. APIs define how different software components can interact with each other, what kind of data can be exchanged, and what operations can be performed.

### Do you know any API? Can you list at least 5 examples of APIs?

- PayPal API: Allows developers to integrate PayPal payments into their applications and websites.

- GitHub API: Enables developers to build applications that interact with GitHub repositories and user data.

- Spotify API: Provides access to Spotify music data, such as playlists and recommendations, for use in third-party applications.

- YouTube API - enables developers to integrate YouTube videos and functionality into their own applications.

- Amazon Web Services (AWS) API - provides access to a wide range of cloud computing services offered by AWS, including storage, compute, database, and analytics services.

---

##  From JSON to REST

### What is JSON?

Is a lightweight data interchange format that is easy for humans to read and write and easy for machines to parse and generate. JSON is often used to transmit data between a server and a web application, as an alternative to XML.

#### Is JSON the same as a plain Javascript object?

Plain JavaScript object and a JSON object, they are not the same thing. JSON is a data format that is designed for interoperability between different systems, whereas a plain JavaScript object is a data structure used within a JavaScript program.

### What is REST?

It is a software architectural style for building distributed systems on the web. RESTful web services allow clients to interact with servers using standard HTTP methods, such as GET, POST, PUT, and DELETE, to perform CRUD (Create, Read, Update, Delete) operations on resources.

#### Is REST a programming language, framework, technology, or architecture pattern?

REST is an architecture pattern, not a programming language, framework, or technology.

### What is a Resource in REST?

In REST, a resource is a piece of information or a data entity that can be accessed and manipulated using a URI (Uniform Resource Identifier) and a set of HTTP methods. Resources can be anything, including documents, images, videos, or any other type of data that can be stored, processed, and transmitted over a network.

#### What is a resource identifier?

A resource identifier is a unique address that identifies a specific resource on the web. In REST, a resource identifier is typically represented as a URI (Uniform Resource Identifier), which is a string of characters that provides a unique identifier for a particular resource.

### How are HTTP and REST related?

HTTP and REST are closely related. REST is an architectural style that is commonly used to create web services. RESTful web services use HTTP as the underlying protocol for communication between the client and the server.

#### What HTTP methods does REST use within its architecture rules?

1. GET: Used to retrieve a resource from the server.
2. POST: Used to create a new resource on the server.
3. PUT: Used to update an existing resource on the server.
4. DELETE: Used to delete a resource from the server.
5. PATCH: Used to update a specific part of an existing resource on the server.
6. OPTIONS: Used to retrieve information about the communication options available for a resource on the server.
7. HEAD: Similar to GET, but only retrieves the headers of a resource and not the actual content.

#### Why do we use HTTP methods in REST and how do they relate to resources?

In REST, HTTP methods are used to perform actions on resources. The HTTP methods provide a standardized way to interact with resources, which allows for consistent behavior across different systems and simplifies communication between the client and server.

### Is REST the same as HTTP?

No, REST is not the same as HTTP. REST is an architectural style, whereas HTTP is a protocol. REST is designed to work with any protocol, but it is most commonly used with HTTP.

---

## REST API Clients

1. Install Postman in your computer, follow [this](https://learning.postman.com/docs/getting-started/installation-and-updates/) guide
2. Watch [this](https://www.youtube.com/watch?v=VywxIQ2ZXw4) course about how to use Postman to interact with APIs
3. Answer the questions:
   - Postman only works with REST APIs?

    Postman is a tool that can be used to test and interact with HTTP APIs, including REST APIs. However, Postman is not limited to only working with REST APIs. It can be used to work with other types of HTTP APIs as well. Additionally, Postman also supports GraphQL APIs, SOAP APIs, and other types of APIs.

   - Is there an alternative to Postman?

   1. Insomnia
   2. Paw
   3. cURL
   4. Advanced REST client
   5. SoapUI

