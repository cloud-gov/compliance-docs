# Identification and authentication policy

See [CIO P 2100.1J – GSA IT Security Policy](http://www.gsa.gov/portal/mediaId/129634/fileName/CIO_21001J_CHGE_1_GSA_Information_Technology_(IT)_Security_Policy_(Posted_Version_4-28-2016).action) Chapter 5, _Policy on Technical Controls_, which covers:

* Access Control (AC)
* Audit and Accountability (AU)
* Identification and Authentication (IA)
* System and Communications Protection (SC)

## Purpose

Balance restrictions designed to prevent unauthorized access against the need to provide unhindered access to informational assets.

## Scope

See the **_Applicability_** section of the [GSA IT Security Policy](http://www.gsa.gov/portal/mediaId/129634/fileName/CIO_21001J_CHGE_1_GSA_Information_Technology_(IT)_Security_Policy_(Posted_Version_4-28-2016).action).

## Policy overlay

For information on roles and responsibilities, management commitment, coordination among organizational entities, compliance, reviews, and updates please see the [Technology Transformation Service's (TTS) Common Control Policy](https://github.com/18F/compliance-docs/blob/master/TTS-Common-Control-Policy.md).

## Procedures

Identity and authentication in cloud.gov, and its underlying Amazon Web Service (AWS) account, is entirely gated by either cloud.gov's User Account and Authentication (UAA) Servers and their integration with GSA SecureAuth or by Amazon Web Service (AWS) Identity and Access Management (IAM).

For both UAA and IAM endpoints, user accounts are coupled to their federal government identities, represented by their personal identity verification (PIV) card, and all of the verification that process entails. UAA and IAM require multi-factor authentication (MFA) across the board. MFA devices are segmented between the two services, helping to ensure security through diversity. Further, cloud.gov adopts a "zero-trust" network posture - no networks are trusted, unless valid credentials (inclusive of MFA) are authenticated.

See IA-2, IA-2(1), IA-2(2), IA-2(3), IA-2(5), IA-2(8), IA-2(11), IA-2(12), IA-3, IA-4, IA-4(4), IA-5, IA-5(1), IA-5(2), IA-5(3), IA-5(4), IA-5(6), IA-5(7), IA-5(11), IA-6.

As a result of implementing easy integration with customer enterprise identity systems, cloud.gov helps agencies centrally manage identities and supports the use of PIV-card enabled systems, if applicable.

IA-8, IA-8(1), IA-8(2), IA-8(3), IA-8(4).