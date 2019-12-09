# Risk assessment policy

See [CIO 2100.1L – GSA IT Security Policy](https://www.gsa.gov/cdnstatic/CIO_2100_1L_CHGE_1_CC040905_signed_PDF_version_7-15-2019.pdf) Chapter 3, _Policy on Management Controls_, which covers:

* Certification, Accreditation, and Security Assessments (CA)
* Planning (PL)
* Program Management (PM)
* Risk Assessment (RA)
* System and Services Acquisition (SA)

The latest version can be found on the [GSA IT Security Policies](https://www.gsa.gov/about-us/organization/office-of-the-chief-information-officer/chief-information-security-officer-ciso/it-security-policies) page.

## Purpose

Provide governance over a formal, documented risk assessment structure that addresses purpose, scope, controls, roles, responsibilities, management commitment, coordination and compliance.

## Scope

See the **_Applicability_** section of the GSA IT Security Policy.

## Policy overlay

For information on roles and responsibilities, management commitment, coordination among organizational entities, compliance, reviews, and updates please see the [Technology Transformation Service's (TTS) Common Control Policy](https://github.com/18F/compliance-docs/blob/master/TTS-Common-Control-Policy.md).

## Procedures

All GSA teams, being part of a federal agency, follow the risk assessment and management process outlined in [NIST Special Publication (SP) 800-37](http://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-37r1.pdf), _Guide for Applying the Risk Management Framework to Federal Information Systems_.

Initial security categorization is a collaborative and inter-disciplinary activity, with all final decisions made by the Authorizing Official. Risk assessment is similarly cross-functional, with the Cloud Operations team being primarily responsible, as directed by the Program Manager. GSA Information Security teams are consulted throughout, and the Authorizing Official seeks concurrence from the GSA Chief Information Security Officer whenever possible. The Authorizing Official seeks to minimize any need to issue waivers or risk acceptances from GSA IT Security policy (see Chapter 1, Section 5) that do not have concurrence from the GSA Chief Information Security Officer.

See RA-2, RA-3.

Cloud Operations and GSA Information Security work together to scan all of relevant portions of the cloud.gov stack. This includes dynamic scanning of any controls the cloud.gov team is responsible for inside of AWS GovCloud, the operating system baseline of AWS EC2 instances, Cloud Foundry modules, 18F built modules, or any other open source software the team has instantiated within the environment to support cloud.gov. Static code analysis is also performed on the 18F built modules.

Note that _customers_ of cloud.gov are responsible for conducting static code analysis on the baseline of the applications they are deploying into cloud.gov containers.

Access to scanning tools, scan results, and logs is broadly shared amongst the cloud.gov team to ensure a rapid response to any findings. Similarly, on-demand access is granted to the Authorizing Official to aide in any systemic understanding of the system's risk posture.

See RA-5, RA-5(1), RA-5(2), RA-5(3), RA-5(5), RA-5(6), RA-5(8).
