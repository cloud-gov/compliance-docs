# Security planning

See [CIO 2100.1L – GSA IT Security Policy](https://www.gsa.gov/cdnstatic/CIO_2100_1L_CHGE_1_CC040905_signed_PDF_version_7-15-2019.pdf) Chapter 3, _Policy on Management Controls_, which covers:

* Certification, Accreditation, and Security Assessments (CA)
* Planning (PL)
* Program Management (PM)
* Risk Assessment (RA)
* System and Services Acquisition (SA)

The latest version can be found on the [GSA IT Security Policies](https://www.gsa.gov/about-us/organization/office-of-the-chief-information-officer/chief-information-security-officer-ciso/it-security-policies) page.

## Purpose

Create system security plans, diagrams, rules, privacy impact assessments, and operational procedures that are easy to understand, enforce, implement, and that reduce complexity wherever it can be found.

## Scope

See the **_Applicability_** section of the GSA IT Security Policy.

## Policy overlay

For information on roles and responsibilities, management commitment, coordination among organizational entities, compliance, reviews, and updates please see the [Technology Transformation Service's (TTS) Common Control Policy](https://github.com/18F/compliance-docs/blob/master/TTS-Common-Control-Policy.md).

## Procedures

Using the most current FedRAMP SSP template, 18F developed a system security plan which includes the cloud.gov PaaS and encompasses the cloud.gov applications. The security plan is developed in accordance with NIST Special Publication 800-18 R1 Guide of Developing Federal Information System Security Plans, as well as FedRAMP guidance. The System Security Plan:

1.	Is consistent with 18F enterprise cloud.gov architecture;
2.	Explicitly defines the authorization boundary for cloud.gov PaaS;
3.	Describes the operational context of cloud.gov PaaS in terms of missions and business processes;
4.	Provides the security category and impact level of cloud.gov including supporting rationale;
5.	Describes the operational network for cloud.gov;
6.	Describes relationships with or connections to other information systems;
7.	Provides an overview of the security requirements for cloud.gov; and
8.	Describes the security controls in place or planned for meeting those requirements including a rationale for the tailoring and supplementation decisions.

18F distributes copies of the cloud.gov security plan and communicates subsequent changes to the plan to the cloud.gov System Owner, ISSO, ISSM, AO and other designated members within the 18F staff and agency.
The Information Security Officer, in conjunction with key 18F management officials, reviews the cloud.gov SSP at least annually or whenever there is a significant change to the information system.
The Information Security Officer updates the cloud.gov SSP to address changes to the platform and its network of operation or problems identified during plan implementation or security control assessments, and thereafter whenever a significant change occurs.
The Information Security Officer protects the security plan from unauthorized modification by maintaining it as a write-access-controlled Google Doc or alternatively in a version-controlled documentation repository (https://github.com/18F/cg-compliance ) that can only be modified by designated members from 18F and the agency.

The cloud.gov team intentionally makes most of the system security plan publicly available as open source documents in 18F repositories (including https://github.com/18F/cg-compliance and https://github.com/18F/compliance-docs ). We follow 18F’s Open Source Policy (https://github.com/18F/open-source-policy/blob/master/policy.md ): our non-sensitive work should be public and open source whenever possible. The cloud.gov team does not share sensitive information (such as PII that may be in the SSP) publicly, and follows 18F guidance around this point: https://github.com/18F/open-source-policy/blob/master/practice.md#protecting-sensitive-information

See PL-2.

The Cloud Operations team plans and coordinates security-related activities affecting the platform with the Authorizing Official, System Owner, ISSM, and ISSO before conducting such activities in order to reduce the impact on other entities.

See PL-2 (3).

All 18F staff members are required to sign an acknowledgment indicating that they have read, understand, and agree to abide by the GSA Rules of Behavior, before authorizing access to information and the information system.

cloud.gov documentation provides a public list of Rules of Behavior for all cloud.gov account holders, available under “Using your account responsibly” on this page: https://docs.cloud.gov/getting-started/accounts/

When logging into the cloud.gov system, all cloud.gov account holders (internal and external users) are required to agree to the cloud.gov account holder Rules of Behavior. The website (as seen at https://login.fr.cloud.gov/login ) provides a warning with a “Read more details” link, and the detailed description of requirements includes a link to the rules at https://docs.cloud.gov/getting-started/accounts/ ). This is a public page that anyone can view. Users must click “Agree and Continue” before they can log in.

See PL-4 and PL-4 (1).

The system implements a centralized security stack that can support multiple applications; ensuring adherence to NIST 800-53 controls and FISMA, as well as 18F and GSA Information Technology (IT) Security Policies. Information security architecture is integrated into the information system by addressing information system requirements throughout the SDLC process. The FedRAMP JAB provides feedback to the Cloud Operations team on the security architecture and the Cloud Operations team receives regular guidance from the JAB board.

cloud.gov uses industry best practices and applies hardening security benchmarks to all virtual machine instances.  For perimeter protection, each subnet is assigned individual elastic network interface (ENI), so security groups can be applied to each of the interfaces; firewall rules are applied for isolated traffic between subnets.  This adds an additional layer of protection.

The determining factors of Confidentiality, Integrity, and Availability of the cloud.gov system are its FIPS 199 information types, which are listed in Section 2 of its SSP. The resulting Security Categorization, FIPS 199 Moderate Impact, governs the cloud.gov security architecture, which NIST SP 800-27A defines as “A description of security principles and an overall approach for architecture complying with the principles that drive the system design.” The information security architectural approach is documented in the cloud.gov System Security Plan, which describes implementation of said principles.

The cloud.gov platform leverages IaaS via Amazon Web Services, which received a FedRAMP ATO in June 21, 2016.  This allows the cloud.gov platform to inherit some security controls such as physical security and share responsibility of other controls such as media protection. For web applications the 18F Cloud Operations team ensures that a web vulnerability scanner (OWASP Zap) is run on a monthly basis. 18F web applications use industry best practices and federal hardening guidelines for web servers and application services like Java.

The cloud.gov ISSO, cloud.gov System Owner, and FedRAMP JAB review applicable security architectures prior to major implementations or security assessments. The cloud.gov ISSO(s) reviews and updates the information security architecture within the System Security Plan on an annual basis or when a significant change takes place to reflect updates in the enterprise architecture. Due to the dynamic and elastic nature of cloud computing, the operations team monitors real-time updates of its information security architecture using the AWS Management Console and other management tools.
The cloud.gov operations team follows the risk management framework (RMF) which includes conducting annual risk assessments for its information systems and infrastructure. Any changes are then updated in systems security plans, plan of actions and milestones POAMs, security assessment reports (SAR).

All changes to the cloud.gov platform are routed through the 18F Change Control process using the GitHub ticketing and tracking system which monitors changes including, but not limited to, ensuring that information security architecture changes are appropriately reflected in updates to system security plans (SSP), Cloud Operations team documentation and other security architecture-related documentation.


The cloud.gov Program Manager ensures that planned aspects of the cloud.gov security architecture are reflected in organization procurements/acquisitions and captured within the appropriate controls of this System Security Plan (SSP). Planned architectural changes, once approved, are incorporated into the annual SSP update cycle.


See PL-8.
