# Incident response

See [CIO P 2100.1J – GSA IT Security Policy](http://www.gsa.gov/portal/mediaId/129634/fileName/CIO_21001J_CHGE_1_GSA_Information_Technology_(IT)_Security_Policy_(Posted_Version_4-28-2016).action) Chapter 4, _Policy on Operational Controls_, which covers:

* Awareness and Training (AT)
* Configuration Management (CM)
* Contingency Planning (CP)
* Incident Response (IR)
* Maintenance (MA)
* Media Protection (MP)
* Physical and Environmental Protection (PE)
* Personnel Security (PS)
* System and Information Integrity (SI)

## Purpose

Iteratively reduce both the number of incidents as a proportion of our total information system inventory, and reduce the mean time to recover from incidents.

## Scope

See the **_Applicability_** section of the [GSA IT Security Policy](http://www.gsa.gov/portal/mediaId/129634/fileName/CIO_21001J_CHGE_1_GSA_Information_Technology_(IT)_Security_Policy_(Posted_Version_4-28-2016).action).

## Policy overlay

For information on roles and responsibilities, management commitment, coordination among organizational entities, compliance, reviews, and updates please see the [Technology Transformation Service's (TTS) Common Control Policy](https://github.com/18F/compliance-docs/blob/master/TTS-Common-Control-Policy.md).

## Procedures

The cloud.gov Program Manager organizes incident response training sessions, offered to the whole cloud.gov team at least annually, and requires that all Cloud Operations team members take the training. The training may be led by the Program Manager, a Cloud Operations team member, or another security specialist at 18F.

The cloud.gov team onboarding checklist (https://github.com/18F/cg-product/blob/master/OnboardingChecklist.md) also requires that all team members take incident response training within 60 days of joining the team.

This training is a meeting reviewing and explaining the cloud.gov IR Guide (https://docs.cloud.gov/ops/security-ir/) and discussing questions and examples. The team takes notes on the training, stored in a Google Doc in the cloud.gov team Google Drive folder. The team records attendance in that document.

If the cloud.gov system changes in a radical way, the Program Manager adapts the incident response training to meet the needs of the new system. The Program Manager then requires Cloud Operations team members to take the training again.
The Program Manager requires all Cloud Operations team members to take the incident response training at least once a year.

See IR-2.

The cloud.gov team, as directed by the Program Manager, creates test plans and exercises in accordance to NIST 800-61, and presents these to the cloud.gov Authorizing Official for their approval. 

cloud.gov tests its incident response capabilities with an annual table top exercise. The test takes the form of a teleconference (GSA Google Hangout) meeting where a security specialist (such as the Program Manager, a Cloud Operations team member, or another security specialist from 18F) guides the Cloud Operations team through a role-playing exercise with a simulated potential security incident. The team takes notes throughout the test, and afterward the team discusses the test and identifies weaknesses to fix with additional training or process improvements. The team files and tracks improvements with GitHub issues.

See IR-3.

The cloud.gov team conducts incident response tabletop exercises to test our incident response plan, organized in coordination with Infrastructure and GSA Information Security. cloud.gov coordinates evaluates if coordination is required with other organizational elements as incident response plans change.

See IR-3 (2).

cloud.gov implements automated processes to detect and analyze malicious activity within the platform, as described in SI-3 and other SI controls.  If these processes detect malicious activity, they automatically report the activity to the Cloud Operations team. cloud.gov has an Incident Response Guide (https://docs.cloud.gov/ops/security-ir/) that documents the procedures that staff should take in the case of an incident, as required by the 18F and GSA Incident Response Policy.

As part of that documented Incident Response process, the Cloud Operations team can use automated tools to eradicate the threat and recover to a known state.  cloud.gov uses a service-oriented architecture that allows natural containment and separation.

If the system needs to be restored to a prior state, the team first reviews recent commits.  If a defect is found in the configuration, the team initiates a Github rollback and a Concourse redeploy.  This cycle will terminate the Virtual Machines and create new machines with known good configurations.  Further details are included in SI controls.
Some cloud.gov incident response and contingency planning activities are inherently coordinated due to overlapping subject areas. The cloud.gov team plans to further improve this coordination by documenting how to coordinate incident handling activities with contingency planning activities.

After the conclusion of each event response, the cloud.gov team schedules a retrospective (as documented at https://docs.cloud.gov/ops/security-ir/#retrospective ) and captures the output of the session in a document posted to a non-public GitHub repository, or (if appropriate) publicly at https://github.com/18F/cg-postmortems/wiki.

As part of the retrospective discussion process, the team proposes, discusses and prioritizes ways to incrementally improve our systems, and to test these improvements. The team also discusses how to improve our incident response procedures, training, and exercises based on what we learned. This step is part of the postmortem process as documented here: https://github.com/18F/cg-postmortems/blob/master/README.md 

All cloud.gov team members have been cleared according to at least tier 1 non-sensitive federal security or an equivalent for contractors.

See IR-4.

The Cloud Operations team implements automated processes such as ClamAV and Tripwire to detect anomalies. When these processes detect an anomaly, they escalate an alert to Cloud Operations team members using PagerDuty.  See SI controls for details.

See IR-4 (1).

The overall cloud.gov incident response process is guided by our IR guide (https://docs.cloud.gov/ops/security-ir/), which explains more details about how we track and document incidents. Summary of relevant information:

There are two ways incidents get reported to the team:
a)	Automated: PagerDuty sends automated alerts from our monitoring system. (These are tracked with an automatic log within PagerDuty.)
b)	Manual: A team member, customer, or other person reports a potential security incident to a team member.

In either case, the cloud.gov team member who first heard of the problem (who becomes the Incident Commander) then follows our IR guide. They send email reports to the GSA IT team and the 18F Infrastructure team, and they file an issue in the 18F Security Incidents GitHub repository, and they notify other cloud.gov team members. The IR Guide explains that throughout the incident process, the Incident Commander needs to track and update the progress of identifying and remediating the incident, with timestamps.

After an incident is resolved, the team does a retrospective about the incident and documents it in appropriate detail (including a timeline of events) in the cloud.gov postmortem wiki: https://github.com/18F/cg-postmortems/wiki

If the team decides that an appropriate action related to the incident is to notify customers, the team also posts information and updates to StatusPage (which helps track the incident for customers).

See IR-5.

GSA requires all staff to report suspected security incidents to Infrastructure and GSA Information Security within the one hour of detecting a possible incident. This is documented in the cloud.gov incident response guide (https://docs.cloud.gov/ops/security-ir/) and in the GSA IT Information Security Policy.
All information pertaining to incidents is reported to 18F Infrastructure and GSA Information Security according to the cloud.gov incident response guide (https://docs.cloud.gov/ops/security-ir/) and according to the FedRAMP Incident Communications Procedure (https://www.fedramp.gov/resources/documents-2016/). 

See IR-6.

cloud.gov uses PagerDuty to automatically notify Cloud Operations staff in the case of a potential incident, based on automated alerts from cloud.gov’s several continuously-running automated security monitoring tools.

Further, cloud.gov automatically stores logs in ElasticSearch and metrics in InfluxDB, so that Cloud Operations and GSA Information Security can access relevant information when investigating a potential incident. AWS level logs are automatically stored in CloudWatch Logs.

See IR-6 (1).

As described in the cloud.gov security incident response guide and contingency plan, Cloud Operations can notify customers about incidents and potential incidents using StatusPage (https://cloudgov.statuspage.io/), when this is appropriate for the incident. StatusPage allows customers to subscribe to updates by email or text message.

Customers can report potential incidents (and request support) via Slack or email, as documented at https://docs.cloud.gov/help/. The Security Incident Response guide explains to customers that they should email the cloud.gov support address if they encounter potential security problems (https://docs.cloud.gov/ops/security-ir/).

See IR-7.

cloud.gov customers can subscribe to StatusPage to automatically receive alerts about the availability of cloud.gov services.

See IR-7 (1).

As part of 18F, the cloud.gov team has direct and cooperative relationships with the Infrastructure team and the GSA Information Security team.
Within GSA Information Security, the cloud.gov team also works directly with its assigned ISSO, whose responsibility during incident response events facilitates cooperative relationships between cloud.gov’s incident response capability and external providers of information system protection capability.

GSA Information Security has direct relationships with other providers of federal incident response capability, inclusive of US-CERT.

See IR-7 (2).

The cloud.gov team has developed an Incident Response Guide (https://docs.cloud.gov/ops/security-ir/) to implement incident response capabilities.  Given the small size of the cloud.gov team, the structure of the incident response process is clear and concise; it assigns the first responder to the event the role of Incident Commander.

The Incident Response Guide provides clear guidance on what steps to take on each situation and how reporting should be handled.  The Incident Response Guide empowers the Incident Commander to leverage as many resources from GSA and 18F as needed during the response process.  The Incident Response Guide is continually reviewed and updated by the cloud.gov team and approved annually by the Authorizing Official.
The Incident Response Guide is distributed to the whole of the cloud.gov team, including Cloud Operations staff. When a new team member joins, their onboarding checklist (viewable publicly in template form at https://github.com/18F/cg-product/blob/master/OnboardingChecklist.md ) includes a checklist item for learning about cloud.gov’s Incident Response Policy and going through Incident Response Training within 60 days.

The Incident Response Guide is publicly available on the web as part of the cloud.gov documentation: https://docs.cloud.gov/ops/security-ir/

The Incident Response Checklist (which accompanies the Guide) is also publicly available: https://docs.cloud.gov/ops/security-ir-checklist/ 

The Incident Response Guide is continually reviewed and updated by the cloud.gov team. In addition, the cloud.gov team updates the IR Guide after it tests the guide, which happens at least annually, so it gets at least annual review and updates.
The Incident Response Guide is continually reviewed and updated by the cloud.gov team in response to system and organizational updates. In addition, the cloud.gov team updates the IR Guide after it tests the guide, which happens after any major system/organizational changes.

The cloud.gov team distributes changes to the Incident Response Guide to the whole cloud.gov team. The cloud.gov team works collaboratively over Slack and GitHub, with frequent meetings about product progress and changes, and changes to the Incident Response Guide are part of that collaborative process. This includes a biweekly sprint review meeting where the whole cloud.gov team presents and learns about all major completed work from the past two weeks.
The Incident Response Guide is stored in GitHub as a public open source file ( https://github.com/18F/cg-docs/blob/master/content/ops/security-ir.md ). The branch from which the document is generated is a protected branch forbidding the unauthorized deletion of revision history. Moreover, the cloud.gov team has both configured the repository and provided team policies to ensure strict controls on who has authority to approve changes to this guide.

See IR-8.

The cloud.gov Incident Response directs cloud.gov team members to watch out for and immediately report any potential security incident, which includes reporting suspected information spills (such as sensitive or classified information in the wrong places).
### Customer responsibility
cloud.gov treats all information in customer applications at the same level of potential impact, if cloud.gov is at fault for an information leakage. It is the customer application system owner is responsible for handling information spills within their applications.
In the event of a suspected information spill, cloud.gov team members follow the reporting process in the cloud.gov Incident Response Guide. The first step is to use GSA Gmail to email the GSA Information Security team.

The 18F Open Source Policy practices guide (which cloud.gov follows as part of 18F) at https://github.com/18F/open-source-policy/blob/master/practice.md#protecting-sensitive-information includes a reminder that spilled classified information must be reported via the response process.

### Customer responsibility
The application system owner is responsible for handling information spills within their customer applications.
Information spills are a type of security incident that cloud.gov team members (specifically Cloud Operations team members) handle according to the cloud.gov Incident Response Guide, including isolating compromised or contaminated components.

### Customer responsibility
The application system owner is responsible for handling information spills within their customer applications.
Information spills are a type of security incident that cloud.gov team members (specifically Cloud Operations team members) handle according to the cloud.gov Incident Response Guide. In the event of security incidents, Cloud Operations coordinates with Infrastructure and GSA Information Security to identify and implement the appropriate ways to fix the incident. In the case of an information spill, Cloud Operations, Infrastructure, and GSA Information Security would work together to appropriately eradicate the information. The method would depend on the affected system component.


### Customer responsibility:
The application system owner is responsible for handling information spills within their customer applications.
In the event of an information spill, Cloud Operations coordinates with Infrastructure and GSA Information Security to identify any other affected components or systems and handle them.

### Customer responsibility 
The application system owner is responsible for handling information spills within their customer applications.

The last step in the cloud.gov IR process, after the incident is resolved, is to conduct a retrospective (also called a postmortem) where the team discusses what they learned and identifies ways to prevent the problem in the future. This is part of the response to an information spill.

### Customer responsibility
The Application System Owner is responsible for handling information spills within their customer applications.

See IR-9.

According to the cloud.gov Incident Response Guide (which covers incidents such as information spills), the first cloud.gov team member who reports an incident or responds to a non-team-member’s report of an incident is responsible for coordinating the team’s response to the incident. The first responder (called an Incident Commander in the guide) can hand this responsibility to another cloud.gov team member when appropriate.

The System Owner, Program Manager, and Cloud Operations team members have primary responsibility for implementing the actual response to security incidents, including technical measures.

GSA Information Security is responsible for assisting the cloud.gov team in responding to security incidents.

See IR-9 (1).

The cloud.gov team treats information spills as a security incident, and the team provides security incident response training at least annually.

See IR-9 (2).

The cloud.gov team treats information spills as a security incident, and the cloud.gov Incident Response Guide includes directions to identify the severity of an incident and isolate affected systems to the appropriate degree during corrective actions.

For example, if an incident is low-severity: “Responders should avoid service degradation unless stakeholders agree”, but if an incident is high-severity, “Responders are empowered to take any step needed to contain the issue, up to and including complete service degradation.”

This procedure of identifying severity helps the team avoid unnecessary disruption.

See IR-9 (3).

The cloud.gov Incident Response Guide identifies notification to parties exposed to unauthorized information of their obligations for handling that information among the long-term remediation steps to be recorded by the Incident Commander.

See IR-9 (4).
