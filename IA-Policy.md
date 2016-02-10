# 18F Identification and Authentication Policy

## 1. Purpose of Policy
Access to 18F computing resources is granted in a manner that carefully balances restrictions designed to prevent unauthorized access against the need to provide unhindered access to informational assets.

This Policy establishes the basis for implementing Identification and Authentication control practices for protecting information systems and data within 18F systems, products and network.

The 18F program includes a library of policies that address federal and commercial requirements. These policies guide and govern the actions of 18F employees and contractors in conducting any United States (U.S.) business.

This policy is written to include the following:
* Identification and Authentication (Organizational Users)
* Device Identification and Authentication
* Identifier Management
* Authenticator Management
* Authenticator Feedback
* Cryptographic Module Authentication
* Identification and Authentication (Non-organizational Users)

## 2. Scope of Policy
This policy applies to all users, systems, networks, components, services and processes in or accessing the 18F Production environment, and all services, applications and products in General Availability.  This includes cloud infrastructure components, leveraged services and other elements used to deliver 18F products and services.

Please see the 18F Governance Policy for further information on Management Commitment, Compliance and Enforcement, Review & Update processes, and Penalties.

## 3. Policy
The access and use of Information Technology (IT) resources shall be in compliance with applicable Federal Information Processing Standards (FIPS) and National Institute of Standards and Technology (NIST) Special Publications, International Organization for Standards (ISO) and 18F policies and standards.

### Identification and Authentication (Organizational Users)
* All users are required to have unique system accounts created for use on 18F information systems including individual, group, system, application accounts
* 18F will establish conditions for group membership based on business needs and roles
* 18F must identify authorized users of the information system and specify access privileges
* All Access must be granted based on: (i) a valid access authorization; (ii) intended system usage; and (iii) other attributes as required by the 18F missions/business functions
* All system account will be reviewed at a minimum on an annual basis with periodic reviews when necessary for auditing purposes.

### Device Identification and Authentication
* 18F defines the specific and/or types of devices for which identification and authentication is required before establishing a connection to the information system
* 18F information systems uniquely identify and authenticate the organization-defined devices before establishing a connection to the information system.
* 18F shall use either shared known information (e.g., Media Access Control [MAC] or Transmission Control Protocol/Internet Protocol [TCP/IP] addresses) for identification or an organizational authentication solution (e.g., IEEE 802.1x and Extensible Authentication Protocol [EAP], Kerberos, Secure Shell (SSH) to identify and authenticate devices on local and/or wide area networks.

### Identifier Management
* 18F manages information system identifiers for users and devices by:
 * Receiving authorization from a designated organizational official to assign a user or device identifier.
 * Selecting an identifier that uniquely identifies an individual or device.
 * Assigning the user identifier to the intended party or the device identifier to the intended device.
 * Preventing reuse of user or device identifiers.
 * Disabling the user identifier after ninety (90) days of inactivity for general user accounts and thirty (30) days for administrator level accounts.

### Authenticator Management
* 18F manages information system authenticators (e.g., tokens, PKI certificates, biometrics, passwords, and key cards) by:
* Verifying, as part of the initial authenticator distribution, the identity of the individual, group, role, or device receiving the authenticator
* Establishing initial authenticator content for authenticators defined by the 18F
 * Minimum length 20 characters
 * At least  1 upper case character
 * At least  1 lower case character
 * At least  1 digit
 * At least  1 special character
* Ensuring that authenticators have sufficient strength of mechanism for their intended use
* Establishing and implementing administrative procedures for initial authenticator distribution, for lost/compromised or damaged authenticators, and for revoking authenticators
* Changing default content of authenticators prior to information system installation
* Establishing minimum and maximum lifetime restrictions and reuse conditions for authenticators
* Changing/refreshing authenticators every sixty (60) days for user accounts every ninety (90) days for administrative accounts
* Protecting authenticator content from unauthorized disclosure and modification
* Requiring individuals to take, and having devices implement, specific security safeguards to protect authenticators
* Changing authenticators for group/role accounts when membership to those accounts changes

### Authenticator Feedback
* 18F information systems ensure to provide feedback to a user during an attempted authentication and that feedback does not compromise the authentication mechanism.

### Cryptographic Module Authentication
* 18F ensures information systems implements mechanisms for authentication to a cryptographic module that meet the requirements of applicable federal laws, Executive Orders, directives, policies, regulations, standards, and guidance for such authentication

### Identifier Lockout
* 18F enforces a limit of five (5) consecutive invalid login attempts by a user during a sixty minute (60) time period
* 18F information systems automatically locks the account/node until released by an administrator; delays next login prompt according to five (5) minutes when the maximum number of unsuccessful attempts is exceeded

### Identification and Authentication (Non-Organizational Users)
* 18F information system shall uniquely identify and authenticate non-organizational users (or processes acting on behalf of non-organizational users).
* Non-organizational users shall include all information system users other than 18F users explicitly covered by IA-2. Users are uniquely identified and authenticated for all accesses other than those accesses explicitly identified and documented by 18F.

## 4. Roles and Responsibilities
|Roles                           | Responsibilities|
|--------------------------------|--------------------------------------|
|Development Operations          | Implement and ensure the security of identity and authentication for 18F information systems.|
|Security Operations             | Monitor and ensure all identity and authentication mechanisms implemented within the 18F environment meet security requirements|
|18F Information Security Office | Provide recommendations, guidance on the identity and authentication management within the 18F organization|
|Senior Director        | Ensuring the Policy is approved, implemented and communicated.|
|Director of Compliance | Owner of the Policy. Ensuring the Policy meets the compliance requirements.|
