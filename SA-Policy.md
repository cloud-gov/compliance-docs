# System and services acquisition

See [CIO 2100.1L – GSA IT Security Policy](https://www.gsa.gov/cdnstatic/CIO_2100_1L_CHGE_1_CC040905_signed_PDF_version_7-15-2019.pdf) 

* Chapter 3, _Policy for Identify Function_, which covers:
  * SA-1, SA-2, SA-5, SA-9, SA-11, SA-12, SA-14
* Chapter 4, _Policy for Protect Function_, which covers:
  * SA-3, SA-4, SA-8, SA-9, SA-10, SA-11, SA-12, SA-14, SA-15, SA-16, SA-17, SA-21
* Chapter 5, _Policy for Detect Function_, which covers:
  * SA-4, SA-9, SA-18

The latest version can be found on the [GSA IT Security Policies](https://www.gsa.gov/about-us/organization/office-of-the-chief-information-officer/chief-information-security-officer-ciso/it-security-policies) page.

## Purpose

Continue forming teams of cross-functional skill sets that include security and privacy experts. Always keep a reserve of funding, time, and staff in order to provide for unexpected increases in the need for  architectural and security engineering assistance, at any phase in an information system development life cycle.

## Scope

See the **_Applicability_** section of the GSA IT Security Policy.

## Policy overlay

For information on roles and responsibilities, management commitment, coordination among organizational entities, compliance, reviews, and updates please see the [Technology Transformation Service's (TTS) Common Control Policy](https://github.com/cloud-gov/cg-compliance-docs/blob/master/TTS-Common-Control-Policy.md).

<!-- changequote(`{{', `}}') -->
include({{TTS-Common-Control-Policy.md}})
---
# Procedures

The cloud.gov program uses two-week planning sprints. Before each sprint, work is prioritized, inclusive of security needs. The cloud.gov CSP is part of the Technology Transformation Service (TTS) within GSA; cloud.gov coordinates with TTS and GSA leadership to appropriately plan for cloud.gov’s budget and staffing needs.

cloud.gov has also been filed and registered as a major IT investment through the Electronic Capital Planning Investment Control (eCPIC) process with the Office of Management and Budget. As such, it is required to file reports on spending/budget with OMB. These reports include a breakout of spending on cloud.gov’s security analysis.

See SA-2.

cloud.gov practices a Scrumban process when developing new features or fixing existing issues, including security fixes and enhancements for cloud.gov.  Each feature or issue is assigned to a card in the system, where it goes through a process of being identified, prioritized, explored, delivered, and finally demonstrated. Each card is reviewed by the team as a whole throughout its lifecycle to identify any security risks or concerns, which are recorded on the card as "acceptance criteria" that must be addressed before development is complete.

Once development is complete, a team member submits the code to the version control system as a "pull request", where at least one other team member further reviews it before merging it into the code base.  New features are deployed into our staging area where they undergo further security review and stakeholder acceptance testing, as well as automated acceptance tests.
The System Owner is responsible for ensuring appropriate staffing for security needs. The Cloud Operations team implements, configures, and maintains security controls.

GSA Information Security supports and monitors the cloud.gov team, including the ISSO who serves as a liaison between GSA Information Security and the cloud.gov team.

The cloud.gov 3PAO provides third-party verification and assessment of cloud.gov security.

As part of cloud.gov account management and access control, each service has a list of privileged accounts with the identities of the cloud.gov team members who have those privileges. See AC and IA control families for more details.

See SA-3.

The cloud.gov program utilizes agile development processes. Changes are made early, often, and iteratively. Functions, ports, and protocols are part of this process. All such configuration is captured in version control and deployed in a fully automated process. Due the complete virtualization of cloud.gov in the AWS GovCloud, and the almost complete automation of the system, these changes can be made immediately and safely as requirements evolve.

See SA-4 (9).

cloud.gov itself does not accept personal identity verification (PIV) cards. Customers may configure an enterprise identity provider that directly accepts PIV cards, either as a primary authenticator or a multi-factor authenticator (MFA).

See SA-4 (10).

Cloud Operations always obtains complete documentation, including administrator and user documentation, for any technology that is used within cloud.gov. The maintenance of administrator- and user- facing documentation, in the form of version-controlled changes in a code repository or our documentation repository, is an assumed requirement for all changes. Currently, cloud.gov only uses technology whose documentation can be shared publicly.
GSA TTS values transparency and collaboration. All documentation for technologies used by cloud.gov is either linked to directly from https://docs.cloud.gov, or is shared broadly within GSA via Google Apps for Government.

See SA-5.

cloud.gov applies security best practices, including but not limited to:

1.	Representing the entire system as “code”, so all changes and side effects can be quickly identified
2.	Deploying the system via automated scripts and pipelines, ensuring no mistakes are made in instantiation
3.	Minimizing the network surface area, applying security controls, isolating applications and data in containers, and encrypting connections.
4.	Implementing role-based access controls, applying and enforcing permissions to isolate user to their space.  Baseline configurations settings are reviewed on a continual basis to comply with federal mandates and compliance standards.
5.	Documenting changes to the baseline configuration in GitHub for review. Part of this process includes a thorough security analysis of the proposed change prior to the configuration change being implemented on the operational system.
6.	Deploying with every application a standard set of tools for security and monitoring of each application to identify security issues.
For more details please refer to the cloud.gov Configuration Management Policy and security controls CM-2, CM-3, and CM-6.

See SA-8.

The Authorizing Official is ultimately accountable for ensuring oversight and compliance in the use of external information systems, and reviews the addition of any external information system with the System Owner and GSA Information Security. The Authorizing Official also accepts the risk of operating any external information system that has not been assessed to a FedRAMP Security Controls Baseline.
The Authorizing Official, System Owner, and GSA Information Security work together to ensure external information systems meet this control where applicable. See the GSA IT Standards Profile and the GSA IT Information Security Policy for additional information.
cloud.gov uses its own monitoring program, or FedRAMP Continuous Monitoring program for external services.

See SA-9.

cloud.gov always conducts risk assessments for all technologies and services. See the risk assessment (RA) procedures for details. If a planned change includes integrating a new external service (a service outside the cloud.gov FedRAMP authorization boundary) or changing an external service configuration/usage in a way that may have a security/compliance impact, the cloud.gov Authorizing Official is advised and asked to approve the plan.

See SA-9 (1).

All configuration management (CM) on cloud.gov and AWS is performed by developers, so all information related to CM can be found in the CM policies, procedures, and control family documentation.

See SA-10.

Deployment artifacts are stored in AWS S3 and distributed by BOSH via the “blobstore”. SHA-1 hashes are checked to verify file integrity throughout the deployment process.

See SA-10 (1).

A security assessment plan is created by the FedRAMP Accredited Third Party Assessment Organization (3PAO). It is used for annual assessments conducted by the 3PAO for continuous monitoring of cloud.gov. cloud.gov performs unit and integration testing on the system upon each deployment. Security testing is done automatically and tracked using tools like Nessus, OWASP ZAP and Concourse. Remediations are made by implementing changes to the configuration on configuration management, redeploying and testing. Flaws identified by automated tools are remediated or marked as false as soon as possible.

See SA-11.


For code developed by GSA/TTS, Cloud Operations ensures that a
language-appropriate tool is scanning code for common errors before
our deployment system attempts to release code.  Cloud Operations
and any other relevant internal teams are also automatically notified
of any findings.

Most code managed by cloud.gov are yaml configurations that are not
well-suited to standard code analysis, 

All developer code must be scanned for potential secret leaks before any Git
commit. See IA-5 (7) for details.

All code is continuously scanned for potentially vulnerable depencides
using GitHub Dependabot

Where additional scanning for known vulnerabilities on code
dependencies is relevant, Cloud Operations is also working on
ensuring additional automated scanning tools will run. This work
is in progress and will complete in FY2022.

See SA-11 (1).

cloud.gov commonly incorporates open source code where the author cannot be held responsible for dynamic scanning. In such cases, cloud.gov takes on responsibility for dynamic scanning. Nessus is the primary tool used for performing dynamic analysis.

See SA-11 (8).


# Version history

Complete version history: https://github.com/cloud-gov/cg-compliance-docs/commits/master/SA-Policy.md

* 2016-10: Initial version for authorization
* 2017-09: Security policy link updates
* 2019-12: Update links to GSA security policy
* 2020-11: Update links to GitHub and GSA policies, split controls by CSF, add version history
* 2021-11: Clarify SA-11, code scanning, fix references to 18F
