
18F Access control Policy

1 Purpose of Policy
Access to 18F computing resources is granted in a manner that carefully balances restrictions designed to prevent unauthorized access against the need to provide unhindered access to informational assets.
This Policy establishes the basis for implementing secure access control practices for protecting information systems and data within 18F systems, products and networks.
The purpose of this policy is to ensure that 18F establishes requirements for a comprehensive program for developing, implementing and maintaining relevant information to support system and information integrity objectives and security posture of the organization

2 Scope of Policy
This policy applies to all users, systems, networks, components, services and processes in or accessing the 18F Production environment, and all services, applications and products in General Availability.  This includes cloud infrastructure components, leveraged services and other elements used to deliver 18F products and services.
Please see POL-CS-0000.10, Governance Policy for further information on Management Commitment, Compliance and Enforcement, Review & Update processes, and Penalties.

3 Policy
The access and use of Information Technology (IT) resources shall be in compliance with applicable Federal Information Processing Standards (FIPS) and National Institute of Standards and Technology (NIST) Special Publications, International Organization for Standards (ISO) and 18F policies and standards.

Access Management
All users are required to have unique system accounts created for use on 18F information systems including individual, group, system, application accounts
18F will establish conditions for group membership based on business needs and roles
18F must identify authorized users of the information system and specify access privileges
Appropriate approvals are required for requests to establish user and system accounts on 18F information systems
18F shall establish, maintain, and fully document procedures to establish, activate, modify, review, disable, and remove accounts
Specifically authorizing and monitoring the use of guest/anonymous and temporary accounts;
Notification must be submitted to  account managers when temporary accounts are no longer required and when information system users are terminated, transferred, or information system usage or need-to-know/need-to-share changes
18F requires deactivation of temporary accounts that are no longer required, accounts of terminated or transferred users
All Access must be granted based on: (i) a valid access authorization; (ii) intended system usage; and (iii) other attributes as required by the 18F missions/business functions
All system account will be reviewed at a minimum on an annual basis with periodic reviews when necessary for auditing purposes.

Access Enforcement
18F must enforce approved authorizations for logical access to its information systems in accordance with all applicable Federal, and 18F policies.
18F must provide access enforcement through the use of access control lists, access control matrices, cryptography) to control access between users (or processes acting on behalf of users) and objects (e.g., devices, files, records, processes, programs, domains) in the information system.
18F must employ access enforcement mechanisms at the application level, when necessary, to provide increased information security for the organization

Information Flow enforcement
18F enforces approved authorizations for controlling the flow of information within its information systems and between interconnected systems in accordance with applicable federal laws and 18F policies and procedures.
18F shall use flow control restrictions to include: keeping export controlled information from being transmitted in the clear to the Internet, blocking outside traffic that claims to be from within the organization and not passing any web requests to the Internet that are not from the internal web proxy.  
18F shall use boundary protection devices (e.g., proxies, gateways, guards, encrypted tunnels, firewalls, and routers) that employ rule sets or establish configuration settings that restrict information system services, provide a packet-filtering capability based on header information, or message-filtering capability based on content (e.g., using key word searches or document characteristics.

Separation of Duties
18F separates duties of individuals as necessary, to prevent malevolent activity without collusion;
18F documents separation of duties; and  implements separation of duties through assigned information system access authorizations
18F shall use separation of duties to include:
Mission functions and distinct information system support functions are divided among different individuals/roles;
Different individuals perform information system support functions (e.g., system management, systems programming, configuration management, quality assurance and testing, network security);
Security personnel who administer access control functions do not administer audit functions; and
Different administrator accounts for different roles.
18F shall use automated mechanisms to assist in the control and auditing of separation of duties functions within its information systems.
When a conflict of separation of duties is identified, compensating controls shall be established and employed

Least Privilege
18F employs the concept of least privilege, allowing only authorized accesses for users (and processes acting on behalf of users) which are necessary to accomplish assigned tasks in accordance with organizational missions and business functions.
Approvals shall be granted by an appropriate approval process and be restricted to those authorized to access by state or federal laws.
18F requires that users of information system accounts, or roles, with administrator or root access to information systems, use non-privileged accounts, or roles, when accessing other system functions, and if feasible, audits any use of privileged accounts, or roles, for such functions.
18F shall control and restrict physical and logical access to diagnostic and configuration ports, restrict access to operating systems, restrict access the use of utility programs that might be capable of overriding system and application controls, restrict access and connection times to the minimum necessary to accomplish a task, and restrict access to program source code.

Unsuccessful Login attempts
18F enforces a limit of three (3) consecutive invalid login attempts by a user during a [Assignment: organization-defined time period]; and
18F information systems automatically locks the account/node until released by an administrator according to [Assignment: organization-defined delay algorithm] when the maximum number of unsuccessful attempts is exceeded.

System Use Notification
All 18F information system logins displays an approved system use notification message or banner before granting access to the system that provides privacy and security notices consistent with applicable federal laws, Executive Orders, directives, policies, regulations, standards, and guidance and states that: (i) users are accessing a U.S. Government information system; (ii) system usage may be monitored, recorded, and subject to audit; (iii) unauthorized use of the system is prohibited and subject to criminal and civil penalties; and (iv) use of the system indicates consent to monitoring and recording;
All 18F information systems must retains the notification message or banner on the screen until users take explicit actions to log on to or further access the information system; and

Session Lock
18F information systems prevents further access to the system by initiating a session lock after a period of 20 minutes or less of inactivity or upon receiving a request from a user
18F information systems retain the session lock until the user reestablishes access using established identification and authentication procedures.

Permitted Actions without Identification and Authorization
18F permits actions to be performed without identification and authentication only to the extent necessary to accomplish mission/business objectives. This would include when individuals access public websites or other publicly accessible federal information systems

Remote Access
18F shall define, document and enforce requirements, usage restrictions and implementation guidance for each allowed remote access method.
Remote and Virtual Private Network (VPN) access shall require multi-factor authentication.
Access shall be authorized before a connection may be established.
18F shall monitor for unauthorized remote access and shall take appropriate action if unauthorized access is discovered.
Remote access shall employ cryptography to protect session confidentiality and integrity.
Remote access shall be routed through a limited number of managed access control points.
Privileged commands and access to security-relevant information via remote access shall only be permitted as described in the System Security Plan (SSP).

Wireless Access
18F shall define, document and enforce requirements, usage restrictions and implementation guidance for wireless access.
Wireless access shall be authorized before a connection may be established.
18F shall monitor for unauthorized wireless access and shall take appropriate action if unauthorized access is discovered.
Wireless access shall employ cryptography to protect session confidentiality and integrity.

Use of External information systems
The organization establishes terms and conditions, consistent with any trust relationships established with other organizations owning, operating, and/or maintaining external information systems, allowing authorized individuals to:
Access the information system from the external information systems;
Process, store, and/or transmit organization-controlled information using the external information systems.

Publicly Accessible content
18F shall designate individuals authorized to post information onto an organizational information system that is publicly accessible
18F shall train authorized individuals to ensure that publicly accessible information does not contain nonpublic information
18F shall review the proposed content of publicly accessible information for nonpublic information prior to posting onto the information system
18F shall review the content on the publicly accessible organizational information system for nonpublic information at least quarterly
18F shall remove nonpublic information from the publicly accessible organizational information system, if discovered.

4 Roles and Responsibilities
Role
Responsibility
Security Operations
Development Operation
The safety and security of data on network and the equipment used to run the network infrastructure.
Table 1. Roles and Responsibilities
5 Document Control
Role
Name
Title
Date
Signature
Owner

Compliance Manager


QC Reviewer

Technical Writer


Approver

Senior Director, Security

Table 2. Document Control
6 Revision History
Revision
Date
Written/Updated by
Section(s)
Summary
1.0
June 04 2015

All
Initial version of document.
Table 3. Revision History
End of Document
