# Personnel security

See [CIO 2100.1L – GSA IT Security Policy](https://www.gsa.gov/cdnstatic/CIO_2100_1L_CHGE_1_CC040905_signed_PDF_version_7-15-2019.pdf) 

* Chapter 3, _Policy for Identify Function_, which covers:
  * PS-1, PS-7
* Chapter 4, _Policy for Protect Function_, which covers:
  * PS-1, PS-2, PS-3, PS-4, PS-5, PS-6, PS-7, PS-8 PS-9
* Chapter 5, _Policy for Detect Function_, which covers:
  * PS-7

The latest version can be found on the [GSA IT Security Policies](https://www.gsa.gov/about-us/organization/office-of-the-chief-information-officer/chief-information-security-officer-ciso/it-security-policies) page..

## Purpose

Reduce the risk of insider threats or internal conspiracies to circumvent the confidentiality, integrity, or availability of information systems. Sanction individuals found violating GSA policies, procedures, or taking any other action that knowingly violates the confidentiality, integrity, or availability of information systems.

## Scope

See the **_Applicability_** section of the GSA IT Security Policy.

## Policy overlay

For information on roles and responsibilities, management commitment, coordination among organizational entities, compliance, reviews, and updates please see the [Technology Transformation Service's (TTS) Common Control Policy](https://github.com/cloud-gov/cg-compliance-docs/blob/master/TTS-Common-Control-Policy.md).

<!-- x
changequote(`{{', `}}') 
include({{bq_tts.md}})
x -->

# Procedures

For personnel categorization, position risk designation is assigned by the GSA Office of Human Resources Management (OHRM), GSA TTS Talent, and GSA TTS Supervisors. We follow the methodology prescribed in the Office of Personnel Management’s (OPM) Federal Investigations Notice, No. 10-06. Risk designations are re-categorized whenever responsibilities change, the impact level of the system or the information in it changes, or at least once every three years.

See PS-2.

For personnel screening, we use the OPM process.

See PS-3.

Review of ongoing operational need for current logical and physical access by individuals are initiated and facilitated by the System Owner and Program Manager. The cloud.gov System Owner or Program Manager modifies permissions granted to individuals to correspond any changes in the individual requirements. GSA TTS notifies the cloud.gov System Owner or Program Manager within 5 days of a formal transfer action. The cloud.gov System Owner or Program Manager initiates the revoking process within the same day of an individual being transferred outside of the team.

Retrieval of all information system-related property which includes HDPS-12 cards, authentication tokens, mobile devices, laptops, etc. is a common control provided by GSA. cloud.gov revokes privileged access if an individual is reassigned or transferred outside of the team.

See PS-5.

Since cloud.gov is provided by a federal agency to other agencies, GSA TTS signs standard US Treasury forms (7600A and 7600B) to create inter-agency agreements (IAAs) that allow other agencies to access and use cloud.gov. The GSA TTS Agreements team develops agreement text with the GSA Office of General Counsel (OGC) to ensure the boilerplate of all cloud.gov access agreements meet all legal, regulatory, policy, and Executive Order requirements.

The System Owner reviews all access agreements at least yearly, or upon request from GSA TTS Agreements, GSA Information Security, or OGC. GSA TTS requires that all agencies have an active, signed, and fully-funded agreement to maintain access and use of the system.

See PS-6.

GSA enforces the same requirements on contractors that it does on staff, and contractors follow all normal procedures for onboarding and gaining access to cloud.gov systems.

See PS-7.


Whenever Cloud Operations, or any other team or individual, discovers that any GSA, TTS or cloud.gov information security policies or procedures have been violated, they must immediately follow the [cloud.gov incident notification procedures (which also notifies GSA Information Security teams)](https://docs.cloud.gov/ops/security-ir/) and notify the System Owner, information system Authorizing Official, and the individual's direct supervisor via GSA email, separately. All notifications must occur within 24 hours of detecting a policy or procedure violation.

The System Owner is responsible for immediately terminating the individual's access to the information system. The System Owner is also responsible for coordinating a cross-divisional ["incident retrospective"](https://drive.google.com/drive/folders/0B58iDAWKmw_BSEtqcUFFQ041MHc) exercise and report within 5 business days of the incident. All post-mortem reports should include remediations to reduce the chance of, or prevent, similar incidents in the future. The report is sent to the information system's Authorizing Official.

The Authorizing Official is responsible for reviewing the report and is solely responsible for recommending actions to the individual's direct supervisor. If the Authorizing Official is satisfied by the remediations purposed, and the time-lines for implementing the remediations, the Authorizing Official may allow the System Owner to re-enable the individual's access to the information system. Regardless if access is re-enabled, the Authorizing Official must provide a recommendation on further sanctions or action.

Recommendations on sanctions or actions may include one, or many of the below:

* Written warning
* Required coaching or re-training
* Improvement plans
* Re-assignment
* Formal sanction in the employee's Electronic Official Personnel Folder (eOPF)
* Termination

The individual's direct supervisor is responsible for concurring or dissenting on any recommendations, and is responsible for implementation and deadlines for ultimate completion of concurred actions. If applicable, the direct supervisor is also responsible for coordinating with GSA's Office of Human Resources Management (OHRM) or GSA's Office of General Counsel. All actions and sanctions will be conducted in accordance with [9751.1 CPO _Maintaining Discipline_](https://insite.gsa.gov/portal/content/523318).

The individual's direct supervisor is also accountable to issue a report to the Authorizing Official on the completion of any actions. If the Authorizing Official is not satisfied by completed actions, either in their quality or the timeliness of their completion, the Authorizing Official can instruct the System Owner to re-terminate the individual's account.

If the individual in question is part of a professional services or support contract, and not a federal employee, the same procedure is to be followed, with the exception that the Contracting Officer's Representative is informed in the place of the non-existent supervisor.

See PS-8 and PS-4.

# Version history

Complete version history: https://github.com/cloud-gov/cg-compliance-docs/commits/master/PS-Policy.md

* 2016-10: Initial version for authorization
* 2017-09: Security policy link updates
* 2019-12: Update links to GSA security policy
* 2020-11: Update links to GitHub and GSA policies, split controls by CSF, add version history
* 2021-11: Rename post-mortem to inc. retro, and link to Google Drive, Fix org name
