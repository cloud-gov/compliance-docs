# Identification and authentication policy

See [CIO 2100.1L – GSA IT Security Policy](https://www.gsa.gov/cdnstatic/CIO_2100_1L_CHGE_1_CC040905_signed_PDF_version_7-15-2019.pdf) 

* Chapter 3, _Policy for Identify Function_, which covers:
  * IA-1 policy control
* Chapter 4, _Policy for Protect Function_, which covers:
  * IA family

The latest version can be found on the [GSA IT Security Policies](https://www.gsa.gov/about-us/organization/office-of-the-chief-information-officer/chief-information-security-officer-ciso/it-security-policies) page.

## Purpose

Balance restrictions designed to prevent unauthorized access against the need to provide unhindered access to informational assets.

## Scope

See the **_Applicability_** section of the GSA IT Security Policy.

## Policy overlay

For information on roles and responsibilities, management commitment, coordination among organizational entities, compliance, reviews, and updates please see the [Technology Transformation Service's (TTS) Common Control Policy](https://github.com/cloud-gov/cg-compliance-docs/blob/master/TTS-Common-Control-Policy.md).

<!-- changequote(`{{', `}}') -->
include({{TTS-Common-Control-Policy.md}})
---
## Procedures

Identity and authentication in cloud.gov is entirely gated by cloud.gov's User Account and Authentication (UAA) Servers and their integration with GSA SecureAuth. Authentication to the underlying Amazon Web Service (AWS) is through the AWS Identity and Access Management (IAM).

For both UAA and IAM endpoints, user accounts are coupled to their federal government identities, represented by their personal identity verification (PIV) card, and all of the verification that process entails. UAA and IAM require multi-factor authentication (MFA) across the board. MFA devices are segmented between the two services, helping to ensure security through diversity. Further, cloud.gov adopts a "zero-trust" network posture - no networks are trusted, unless valid credentials (inclusive of MFA) are authenticated.

See IA-2, IA-2(1), IA-2(2), IA-2(3), IA-2(5), IA-2(8), IA-2(11), IA-2(12), IA-3, IA-4, IA-4(4), IA-5, IA-5(1), IA-5(2), IA-5(3), IA-5(4), IA-5(6), IA-5(7), IA-5(11), IA-6.

As a result of implementing easy integration with customer enterprise identity systems, cloud.gov helps agencies centrally manage identities and supports the use of PIV-card enabled systems, if applicable.

IA-8, IA-8(1), IA-8(2), IA-8(3), IA-8(4).

IA-5(7): cloud.gov ensures that unencrypted static authenticators are not embedded in applications or access scripts or stored on function keys by requiring all team members who use Git to managed code to:

  a. install [caulking](https://github.com/cloud-gov/caulking) during their onboarding process
  b. demonstrate compliance during their onboarding
  c. demonstrate compliance quarterly during biweekly architecture review

# Version history

Complete version history: https://github.com/cloud-gov/cg-compliance-docs/commits/master/IA-Policy.md

* 2016-10: Initial version for authorization
* 2017-09: Security policy link updates
* 2019-12: Update links to GSA security policy
* 2020-11: Update links to GitHub and GSA policies, split controls by CSF, add version history
* 2021-11: Add IA-5(7) caulking procedure
