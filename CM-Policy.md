# 18F Configuration Management Policy

## Purpose of Policy
Configuration Management (CM) comprises a collection of activities focused on establishing and maintaining the integrity of products and systems, through control of the processes for initializing, changing, and monitoring the configurations of those products and systems.  
The 18F program includes a library of security policies that address federal and commercial requirements. These policies guide and govern the actions of 18F employees and contractors in conducting any United States (U.S.) business.
This policy is written to include the following
Baseline Configuration
Configuration Change Control
Security Impact Analysis
Assess Restrictions for Change
Configuration Settings
Least Functionality
Information System Component Inventory
Configuration Management Plan

## Scope of Policy
This policy applies to all 18F employees and contractors working in or with the 18F for Public Sector organization. Failure to comply with this policy may result in disciplinary action, up to and including termination of employment and possible civil and/or criminal penalties under the applicable U.S. laws and regulations.
Please see POL-CS-0000.10, Governance Policy for further information on Management Commitment, Compliance and Enforcement, Review & Update processes, and Penalties.

## Policy
The access and use of Information Technology (IT) resources shall be in compliance with applicable Federal Information Processing Standards (FIPS) and National Institute of Standards and Technology (NIST) Special Publications, International Organization for Standards (ISO) and 18F policies and standards
Baseline Configuration
18F will develop and maintain documentation on the baseline configuration of the information system to include such things as, but not limited to:
Network topology;
System architecture;
Application, Web and Server components
Software standards
18F will review baseline configuration settings on a continual basis and provide annual updates as required due to federal mandates and compliance standards
18F will retain any and all necessary baseline configuration as deemed necessary to support rollback functions and incident response
18F will develop and maintain a list of software programs/applications that are not authorized to execute on the information system, and employs an allow-all, deny-by-exception authorization policy to identify software allowed to execute on the information system.

### Configuration Change Control
18F will document changes to the baseline configuration in the following manner:
1. Determines the types of changes to the information system that are configuration controlled
2. Changes require security impact analyses conducted on all configuration-controlled changes
3. Maintain documentation for approved configuration-controlled changes
4. Provides record retention for review of configuration-controlled changes at a minimum of 1 year
5. Coordinates and provides oversight for configuration change control activities through tracking and monitoring systems ,such as , GitHub and Slack that evaluates configuration changes  through a continuous development lifecycle
18F will test, validate, and document changes to the information system before implementing the changes on an operational system.

### Security Impact Analysis
18F will conduct a thorough security analysis of the proposed change prior to the configuration change being implemented within an operational system. Proposed and defined major changes may include :
an increase in the sensitivity or criticality of a system;
an increase in threat level;
policy change
a change in operating system (base platform);
a change to security relevant software;
installations and upgrades;
An increase in interconnection with other systems outside the accreditation boundary;
Significant changes in the security requirements that apply to the system.

### Access Restriction for Change
18F will ensure only pre-defined authorized users are allowed to make any changes to either the physical or logical environment that:
1. Defines and documents access roles;
2. Defines approval process for access; and
3. Retains records for express purpose for auditing purposes.

### Configuration Settings
18F will document the baseline configuration settings such that:
1. Mandatory configuration settings for information technology products utilized within the information system using best practices, federally approved configuration checklists,  hardening guides and standard compliance settings that reflect the most restrictive mode consistent with operational requirements
2. Implements the configuration setting within the information systems and components
3. Identifies, documents, and approves exceptions from the mandatory configuration setting
4. Monitors and controls changes to the configuration setting in accordance with 18F policies and procedures.
18F will incorporate a detection of unauthorized, security-relevant configuration changes into 18F incident response capability to ensure that such detected events are tracked, monitored, corrected, and available for historical purposes.

### Least Functionality
18F will only grant access to information in a manner that provides only essential capabilities and specifically or restricts the use of the following functions, ports, protocols, and/or services;
1. Functions
2. Ports
3. Protocols
4. Services
18F will conduct on-going and monthly reporting audit of information system which identifies and eliminates unnecessary functions, ports, protocols, and/or services.  

### Information System Component Inventory
18F will develop, document, and maintains inventory of information system components that:
1. Accurately reflect the current information system;
2. Is consistent with the authorization boundary of the information system;
3. Is at the level of granularity deemed necessary for tracking and reporting;
4. Includes [timeframe] archival of information system; and
5. Is available for review and audit by designated officials.
18F will update inventory of information system whenever installations, removals, and other changes are made.
18F will verify that all components within the authorized boundary of the information system are either inventoried as part of the system or recognized by another system as a component within that system.

### Configuration Management Plan
18F will develop a configuration management plan that:
1. Addresses roles, responsibilities, and configuration management processes and procedures;
2. Defines the configuration items for the information system and when in the system development life cycle the configuration items are placed under configuration management; and
3. Establishes the means for identifying configuration items throughout the system development life cycle and a process for managing the configuration of the configuration items.

#### 4 Roles and Responsibilities
Role
Responsibility
18 F Content Owner
In addition to drafting and finalizing policies revisions per Sections 1-3 above, the Content Owner is responsible for:
a) Reviewing his or her assigned Corporate Policy documents annually, in conjunction with any significant organizational changes that apply, or more frequently as needed.
b) Developing any additional documents required to communicate content changes to employees affected by the policy
Employee and Contractors

#### Table 1. Roles and Responsibilities
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


#### Table 2. Document Control
6 Revision History
Revision
Date
Written/Updated by
Section(s)
Summary
1.0
June 04 2015
Valiant Solutions
All
Initial version of document.

#### Table 3. Revision History
