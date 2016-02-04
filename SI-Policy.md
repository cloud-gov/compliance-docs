18F System and Information Integrity Policy

1 Purpose of Policy
Systems and information integrity is the assurance that data and information systems being accessed,  have neither been tampered with altered or compromised through system errors, malicious attacks and unauthorized access during operation and transmission.

The purpose of this policy is to ensure that 18F establishes requirements for a comprehensive program for developing, implementing and maintaining relevant information to support system and information integrity objectives and security posture of the organization.

The 18F program includes a library of security policies that address federal and non-federal requirements. These policies guide and govern the actions of 18F employees and contractors in conducting any United States (U.S.) business.
This policy is written to include the following:
Flaw Remediation
Malicious Code Protection
Information system monitoring
Security Alerts and Advisories
Security Function Verification
Software, Firmware and Information Integrity
Spam Protection
Information Input Validation
Error Handling
Information Handling and Retention
Memory Protection

2 Scope of Policy
This policy applies to all users, systems, networks, components, services and processes in or accessing the 18F Production environment, and all services, applications and products in General Availability.  This includes cloud infrastructure components, leveraged services and other elements used to deliver 18F products and services.

Please see POL-CS-0000.10, Governance Policy for further information on Management Commitment, Compliance and Enforcement, Review & Update processes, and Penalties.

3 Policy
The access and use of Information Technology (IT) resources shall be in compliance with applicable Federal Information Processing Standards (FIPS) and National Institute of Standards and Technology (NIST) Special Publications, International Organization for Standards (ISO) and 18F policies and standards.

Flaw Remediation
18F shall identify information systems containing software affected by recently announced software flaws and reports this information to designated organizational officials with information security responsibilities (e.g., senior information security officers, information system security managers, information systems security officers).
18F shall promptly install security-relevant software updates (e.g., patches, service packs, and hot fixes)  discovered during security assessments, continuous monitoring, incident response activities, or information system error handling, are also addressed expeditiously.
18F must use resources such as the Common Weakness Enumeration (CWE) or Common Vulnerabilities and Exposures (CVE) databases in remediating flaws discovered within its information systems.
Flaw remediation shall be incorporated into the configuration management process, with the intention of tracking and verifying of required/anticipated remediation actions.

Malicious Code Protection
18F shall employ malicious code protection mechanisms at information system entry and exit points on the network to detect and eradicate malicious code that is:
Transported by electronic mail, electronic mail attachments, web accesses, removable media, or other common means or inserted through the exploitation of information system vulnerabilities.
Update malicious code protection mechanisms (including signature definitions) whenever new releases are available in accordance with organizational configuration management policy and procedures.
Implement secure coding practices, configuration management and control, trusted procurement processes, and monitoring practices for additional malicious code protection
All malicious code protection mechanisms must be configured to:
Perform periodic scans of information systems and real-time scans of files from external sources as the files are downloaded, opened, or executed in accordance with organizational security policy
Block malicious code, quarantine malicious code, and send alerts to administrator in response to malicious code detection
Address the receipt of false positives during malicious code detection and eradication and the resulting potential impact on the availability of the information system.
18F shall centrally manage virus protection mechanisms that automatically update malicious code protection mechanisms (including signature definitions) and prevent non-privileged users from circumventing malicious code protection capabilities.

Information System Monitoring
18F must monitor information systems to detect attacks and indicators of potential attacks of unauthorized local, network, and remote connections in accordance with continuous monitoring and incident response requirements
Identify unauthorized use of the information system through deployed intrusion detection systems, intrusion prevention systems, malicious code protection software, scanning tools, audit record monitoring software and network monitoring software
Deploy monitoring devices strategically within the information system to collect organization-determined essential information and at ad hoc locations within the system to track specific types of transactions of interest to the organization
Protects information obtained from intrusion-monitoring tools from unauthorized access, modification, and deletion
Heighten the level of information system monitoring activity whenever there is an indication of increased risk to organizational operations and assets, individuals, other organizations, or the Nation based on law enforcement information, intelligence information, or other credible sources of information
Obtains legal opinion with regard to information system monitoring activities in accordance with applicable federal laws, Executive Orders, directives, policies, or regulations; and
Provides all information system monitoring information to senior information security officers, information system security managers, and information systems security officers as needed and on a continual basis.

Security Alerts, Advisories and Directives
18F shall receive information system security alerts/advisories on a regular basis from the US-Cert and other sources such as the National Vulnerability database (NVD)
Generate internal security alerts, advisories, and directives as deemed necessary and disseminate to senior information security officers, information system security managers, and information systems security officers, systems owners, incident response teams and external agencies including Department of Homeland Security (DHS), and OPM
Implements an appropriate action in response to security directives in accordance with established time frames, or notifies the issuing organization of the degree of noncompliance.
18F shall employ automated mechanisms to make security alert and advisory information available throughout the organization as appropriate.

Security Function Verification
All information systems must verify the correct operation of transitional states which include system startup, restart, shutdown, and abort functions
Performs verification of system startup, restart, shutdown, and abort functions upon command by approved users with appropriate privileges in real time
Notifies senior information security officers, information system security managers, and information systems security officers of failed security verification tests and shuts down or restarts the information system when anomalies are discovered.

Software, Firmware and Information integrity
18F will employ integrity verification applications on its information systems to look for evidence of information tampering, errors, and omissions.
18F must employ good software engineering practices with regard to commercial off-the-shelf integrity mechanisms (e.g., parity checks, cyclical redundancy checks, cryptographic hashes).
18F shall use tools to automatically monitor the integrity of the information systems it hosts and incorporate the detection of unauthorized access, system changes, communications or elevation of information system privileges into the organizational incident response capability.

Spam Protection
18F shall employ spam protection mechanisms at information system entry and exit points on the network to detect and take action on unsolicited messages transported by electronic mail, electronic mail attachments, web accesses, or other common means.
18F should provide the capability to automatically updates spam protection mechanisms (including signature definitions) when new releases are available in accordance with organizational configuration management policy and procedures.

Information Input Validation
18F shall restrict the information input to the information system to authorized personnel only and check information system inputs (e.g., character set, length, numerical range, acceptable values) for accuracy, completeness and validity.

Error Handling
All information systems must provide the capability to generate error messages that provide information necessary for corrective actions without revealing sensitive or potentially harmful information in error logs and administrative messages that could be exploited by adversaries.

Information Handling and Retention
18F shall handle and retains both information within and output from its information systems in accordance with organizational policy and operational requirements.

Memory Protection
All information systems must implement forms of data execution prevention and address space layout randomization to protect its memory from unauthorized code execution.
4 Roles and Responsibilities
Role
Responsibility


Table 1. Roles and Responsibilities
5 Document Control
Role
Name
Title
Date
Signature
Owner

Director, Compliance and Risk


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
June 04, 2015
Valiant Solutions
All
Initial version of document.
Table 3. Revision History
