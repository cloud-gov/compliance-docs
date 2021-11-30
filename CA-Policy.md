# Security assessment and authorization

See [CIO 2100.1L – GSA IT Security Policy](https://www.gsa.gov/cdnstatic/CIO_2100_1L_CHGE_1_CC040905_signed_PDF_version_7-15-2019.pdf) 

* Chapter 3, _Policy for Identify Function_, which covers:
  * CA-1 policy control, CA-2, CA-3, CA-7, CA-8, CA-9
* Chapter 4, _Policy for Protect Function_, which covers:
  * CA-2, CA-7
* Chapter 5, _Policy for Detect Function_, which covers:
  * CA-2, CA-3, CA-7
* Chapter 6, _Policy for Respond Function_, which covers:
  * CA-2, CA-7

The latest version can be found on the [GSA IT Security Policies](https://www.gsa.gov/about-us/organization/office-of-the-chief-information-officer/chief-information-security-officer-ciso/it-security-policies) page.

## Purpose

Implement the [NIST Risk Management Framework](http://csrc.nist.gov/groups/SMA/fisma/framework.html), and ensure compliance with all relevant laws, regulations, policies, and Executive Orders.

## Scope

See the **_Applicability_** section of the GSA IT Security Policy.

## Policy overlay

For information on roles and responsibilities, management commitment, coordination among organizational entities, compliance, reviews, and updates please see the [Technology Transformation Service's (TTS) Common Control Policy](https://github.com/cloud-gov/cg-compliance-docs/blob/master/TTS-Common-Control-Policy.md).

## Procedures

As a cloud service provider that is also part of the General Services Agency (GSA), a federal agency, 18F ensures cloud.gov invests in comprehensive risk management assessments.

The main assessment procedures used are the [Federal Risk and Authorization Management Program (FedRAMP)](https://www.fedramp.gov/). Further, 18F engages an [accredited third-party assessment organization](https://www.a2la.org/accreditation/fedramp) (3PAO) to provide an independent review of the cloud.gov system and organizational operations.

Assessments of 18F operations are performed in tandem with vulnerability scanning, malicious user testing, insider threat assessments, and other tests regularly conducted by the following teams: the cloud.gov team, TTS Technology Portfolio, GSA Information Security, and a 3PAO. The system is also under continuous monitoring from cloud.gov's Cloud Operations team.

18F takes any results seriously, and it remediates issues as soon as possible. Plans of action and milestones (POA&Ms) are maintained to ensure any findings are resolved, compensated for, or accepted as an operational requirement.

See CA-2, CA-2(1), CA-2(2), CA-2(3), CA-5, CA-7, CA-7(1), CA-8, CA-8(1).

The cloud.gov system does not establish any direct connections to external system. Network connections are on a deny-all, permit-by-exception basis. 

See CA-3, CA-3(3), CA-3(5)

The FedRAMP JAB through the program management office (PMO) is the Authorizing Official (AO) for cloud.gov.

See CA-6

# Version history

Complete version history: https://github.com/cloud-gov/cg-compliance-docs/commits/master/CA-Policy.md

* 2016-10: Initial version for authorization
* 2017-09: Security policy link updates
* 2019-12: Update links to GSA security policy
* 2020-11: Update links to GitHub and GSA policies, split controls by CSF, add version history
* 2021-11: Fix "remediations", clarify no direct connect, permit-by-exception
