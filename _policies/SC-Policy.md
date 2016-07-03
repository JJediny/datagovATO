# {{ site.system }} Systems and Communications Protection Policy

## 1. Purpose of Policy
System Communication protection is the process of implementing protective measures both logically and physically to ensure consistent, uninterrupted, and tamper resistant availability of communication channels and data are provided to information systems and users who require access to the data.

The purpose of this policy is to establish the basis for implementing system and communications practices for protecting information systems and data within {{ site.system }} systems, products and networks.

The {{ site.system }} program includes a library of security policies that address federal and non-federal requirements. These policies guide and govern the actions of {{ site.system }} employees and contractors in conducting any United States (U.S.) business.

This policy is written to include the following
* Application Partitioning
* Security Function Isolation
* Information Remnants
* Denial of Service Protection
* Boundary Protection
* Transmission Confidentiality and Integrity
* Network Disconnect
* Cryptographic Key Establishment and Management
* Cryptographic Protection
* Public Access Protections
* Collaborative Computing
* Public Key Infrastructure Certificates
* Mobile Code
* Voice Over Internet Protocol
 /Secure Name / Address Resolution Service  (Authoritative Source)
* Architecture and Provisioning for Name Address Resolution Service
* Protection of Information At Rest
* Session Authenticity
* Fail In Known State

## 2. Scope of Policy
This policy applies to all users, systems, networks, components, services and processes in or accessing the {{ site.system }} Production environment, and all services, applications and products in General Availability.  This includes cloud infrastructure components, leveraged services and other elements used to deliver {{ site.system }} products and services.

Please see the {{ site.system }} Governance Policy for further information on Management Commitment, Compliance and Enforcement, Review & Update processes, and Penalties.

## 3. Policy
The access and use of Information Technology (IT) resources shall be in compliance with applicable Federal Information Processing Standards (FIPS) and National Institute of Standards and Technology (NIST) Special Publications, International Organization for Standards (ISO) and {{ site.system }} policies and standards.

### Application Partitioning
* All {{ site.system }} information systems must separate user functionality (including user interface services) from information system management functionality and implement separate authentication methods for privileged user access
* Use logical separation through the use of routers, domains, virtualization, network addresses
* Use of multi-factor authentication and Role based access controls.
* {{ site.system }} shall partition its information systems into components residing in separate logical domains (or environments) as deemed necessary.

### Information Shared Resources
* {{ site.system }} information systems shall prevent unauthorized and unintended information transfer via shared system resources.

### Denial of Service Protection
* {{ site.system }} information systems must protect against or limits the effects of denial of service (DoS) attacks including, but not limited to, Buffer Overflow attacks, Smurf attacks, PING of DEATH attacks, Teardrop attacks, SYN attacks; virus-induced DoS.
* {{ site.system }} information systems must restrict the ability of users to launch denial of service attacks against other information systems or networks
* {{ site.system }} information systems must have the capability to manage excess capacity, bandwidth, or other redundancy to limit the effects of information flooding types of denial service attacks
* {{ site.system }} shall use a combination of intrusion detection/prevention systems, firewalls, gateways, network/security operation centers, harden configuration settings, antivirus, malware mechanisms to assist in denial of service protection

### Boundary Protection
* {{ site.system }} information systems must monitor and control communications at the external boundary of the information system and at key internal boundaries within the system.
{{ site.system }} must connect to external networks or information systems only through managed interfaces consisting of boundary protection devices arranged in accordance with approved security architecture.
* {{ site.system }} shall logically allocates publicly accessible information system components to separate sub-networks with separate logical network interfaces
* {{ site.system }} information systems must prevent public access into the organizations internal networks except as appropriately mediated by managed interfaces employing boundary protection devices.
* {{ site.system }} must limit the number of access points to the information system to allow for more comprehensive monitoring of inbound and outbound communications and network traffic.
* {{ site.system }} information systems at managed interfaces must, deny network traffic by default and allows network traffic by exception (i.e., deny all, permit by exception).
* {{ site.system }} information systems must prevent remote devices that have established a non-remote connection with the system from communicating outside of that communications path with resources in external networks.

### Transmission Confidentiality and Integrity
* {{ site.system }} information systems must protect the confidentiality and integrity of transmitted information.
* {{ site.system }} must employ cryptographic mechanisms to prevent unauthorized disclosure of information during transmission unless otherwise protected by alternative physical measures.

### Network Disconnect
* {{ site.system }} information systems must terminate the network connection associated with a communications session at the end of the session or after 20 minutes of inactivity.

### Cryptographic Key Establishment and Management
* {{ site.system }} information systems must employ automated mechanisms with supporting procedures or manual procedures for cryptographic key establishment and key management.
* Define key management requirements in accordance with applicable federal laws, Executive Orders, directives, regulations, policies, standards, and guidance, specifying appropriate options, levels, and parameters.
* Manage trust stores to ensure that only approved trust anchors are in such trust stores. This includes certificates with visibility external to organizational information systems and certificates related to the internal operations of

### Cryptographic Protection
* {{ site.system }} information systems must implement required cryptographic protections using cryptographic modules that comply with applicable federal laws, Executive Orders, directives, policies, regulations, standards, and guidance.
* The information system implements applicable NSA-approved cryptography, provision of digital signatures and FIPS-validated cryptography in accordance with applicable federal laws, Executive Orders, directives, policies, regulations, and standards.

### Public Access Protections
* For publicly available systems, {{ site.system }} information systems must protect the integrity of the information and applications.

### Collaborative Computing
* {{ site.system }} information systems must prohibit remote activation of collaborative computing mechanisms (e.g., video and audio conferencing) and provides an explicit indication of use to the local users (e.g., use of camera or microphone).

### Public Key Infrastructure Certificates
* {{ site.system }} must develop and implement a certificate policy and certification practice statement for the issuance of public key certificates used in the information systems.

### Mobile Code
* {{ site.system }} must establish usage restrictions and implementation guidance for mobile code technologies based on the potential to cause damage to the information system if used maliciously
* {{ site.system }} must document, monitor and control the use of mobile code within the information system.

### Voice over Internet Protocol
* {{ site.system }} shall establish usage restrictions and implementation guidance for Voice over Internet Protocol (VoIP) technologies based on the potential to cause damage to the information system if used maliciously
* Authorizes, monitors, and controls the use of VoIP within the information system if applicable.

### Secure Name / Address Resolution Service (Authoritative Source)
* {{ site.system }} will provides additional data origin authentication and integrity verification artifacts along with the authoritative name resolution data any system returns in response to external name/address resolution queries
* Provides the means to indicate the security status of child zones and (if the child supports secure resolution services) to enable verification of a chain of trust among parent and child domains, when operating as part of a distributed, hierarchical namespace.
* {{ site.system }} shall leverage approved DNS services provided by authorized cloud infrastructure providers as needed for its information systems.

### Architecture and Provisioning for Name / Address Resolution Service
* {{ site.system }} shall implement name/address resolution using domain name system (DNS) servers that are fault-tolerant and implement internal/external role separation
* {{ site.system }} shall eliminate single points of failure and enhance redundancy, by implementing multiple authoritative domain name system (DNS) servers or by leveraging approved DNS services from a third party.
* DNS servers with an internal role, only process name/address resolution requests from within the organization (i.e., internal clients). DNS servers with an external role only process name/address resolution information requests from clients external to the organization (i.e., on the external networks including the Internet).
* The set of clients that can access an authoritative DNS server in a particular role is specified by the {{ site.system }}

### Protection of Information at Rest
* {{ site.system }} information systems must protect the confidentiality and integrity of information at rest by employing cryptographic mechanisms to prevent unauthorized disclosure and modification of information at rest unless otherwise protected by alternative physical measures

### Session Authenticity
* {{ site.system }} information system must protects the authenticity of communications sessions

### Fail In Known State
* All  information systems must possess the capability to fail to a defined known-state such as previous snapshots or implement high availability components for  preserving the system state information in failure scenarios

## 4. Roles and Responsibilities
|Roles                  | Responsibilities                                                                                     |
|-----------------------|------------------------------------------------------------------------------------------------------|
|DevOps                 | Ensure the safety and security of data on network and the equipment used to run the network infrastructure. |
|Senior Director        | Ensuring the Policy is approved, implemented and communicated.|
|Director of Compliance | Owner of the Policy. Ensuring the Policy meets the compliance requirements.|
