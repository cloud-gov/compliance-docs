# Access control policy

See [CIO 2100.1K – GSA IT Security Policy](https://gsa.gov/portal/getMediaData?mediaId=164806) Chapter 5, _Policy on Technical Controls_, which covers:

* Access Control (AC)
* Audit and Accountability (AU)
* Identification and Authentication (IA)
* System and Communications Protection (SC)

## Purpose

Limit information system access to authorized users or processes acting on behalf of authorized users. Enforce "least privilege" methodologies for all system actions.

## Scope

See the **_Applicability_** section of the GSA IT Security Policy.

## Policy overlay

For information on roles and responsibilities, management commitment, coordination among organizational entities, compliance, reviews, and updates please see the [Technology Transformation Service's (TTS) Common Control Policy](https://github.com/18F/compliance-docs/blob/master/TTS-Common-Control-Policy.md). 

## Procedures

cloud.gov's access control procedures starts with an offer letter to an individual from the GSA Office of Human Resources Management (OHRM). As the individual is on-boarded to the federal government, their personal information is recorded, biometrics are taken, preexisting identification is validated, and finally a personal identity verification (PIV) card is issued in full accordance with  Homeland Security Presidential Directive 12 (HSPD-12). 

Successfully issuing a PIV card allows internal users to obtain credentials for GSA SecureAuth, GSA's enterprise identity system. GSA SecureAuth is used to gate access control to cloud.gov's Operations User Account and Authentication (UAA) Server, which is integrated with GSA SecureAuth. A GSA SecureAuth account also kicks off the On-boarding Checklist (https://github.com/18F/cg-product/blob/master/OnboardingChecklist.md) which ensures the internal user gains proper access and permissions to any systems or tools they need, inclusive of access to Amazon Web Services (AWS). Access to AWS is strictly limited to the System Owner and Cloud Operations. 

See AC-2, AC-2(1), AC-2(2), AC-2(3), AC-2(4), AC-2(5), AC-2(7), AC-2(9), AC-2(10), AC-2(12), AC-3, AC-7, AC-8, AC-11, AC-11(1), AC-12, AC-14, AC-17, AC-17(1), AC-17(2), AC-17(4).

cloud.gov's customers gain access to the system in a similar fashion. The Client UAA Server can integrate with any enterprise identity system that supports the Security Assertion Markup Language (SAML) standard. Cloud Operations and the customer follow a simple procedure (https://docs.cloud.gov/ops/federated-identity/) in order to complete the integration.

See AC-2(9), AC-2(10), AC-21.

Within cloud.gov, both the permissions of users (whether internal or external) and the logical flow of data through the system is tightly controlled and regulated. Manual movements of data are strictly prohibited. Everything is subject to the virtual network, application, and container restrictions that are instantiated through cloud.gov's adherence to immutable "infrastructure as code."

See AC-4, AC-4(21), AC-17(3), AC-17(9), AC-19, AC-20 (2), and the CM controls.

GSA systems always adhere to the principle of role segmentation and least privilege wherever possible. 

See AC-5, AC-6, AC-6(1), AC-6(2), AC-6(5), AC-6(9).