# System and information integrity policy

See [CIO 2100.1K – GSA IT Security Policy](https://gsa.gov/portal/getMediaData?mediaId=164806) Chapter 4, _Policy on Operational Controls_, which covers:

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

Ensures information systems have not been compromised through system errors, malicious attacks, or unauthorized access during operation and transmission.

## Scope

See the **_Applicability_** section of the GSA IT Security Policy.

## Policy overlay

For information on roles and responsibilities, management commitment, coordination among organizational entities, compliance, reviews, and updates please see the [Technology Transformation Service's (TTS) Common Control Policy](https://github.com/18F/compliance-docs/blob/master/TTS-Common-Control-Policy.md). 

## Procedures

The cloud.gov team identifies cloud.gov system flaws, tracks and reports them, and corrects them.

The Cloud Operations team monitors upstream projects (including Cloud Foundry) for new releases, implements the new releases (including promptly installing newly-released security-relevant patches), and tests patches for effectiveness and potential side effects on information systems before installation. The testing takes place in development and test environments.

Flaws discovered during security assessments, continuous monitoring, incident response activities, and information system error handling are addressed through the cloud.gov configuration management process.

The Cloud Operations team uses automated mechanisms, including automated monthly scans, to determine the state of flaw remediation in information system components.  cloud.gov management and security staff track the status of flaws identified with automated vulnerability scan tools using the monthly scan results.

High-risk vulnerabilities are mitigated within thirty days (30); moderate risk vulnerabilities mitigated within ninety days (90). All findings that are not remediated immediately are tracked in the cloud.gov Plan of Action and Milestones (POAM).

cloud.gov keeps all flaw identifications and remediations stored in machine readable data within its issue tracker. Time between identifications and remediations is always tracked, and is also reflected in the Plan of Actions and Milestones (POAM).

See SI-2, SI-2 (2), SI-2 (3).

cloud.gov employs tools at information system entry and exit points to detect and eradicate malicious code with real-time scans, with virus definitions updated hourly. These send alerts to the Cloud Operations team if malicious code is detected. The Cloud Operations team follows the [Security Incident Response Guide](https://cloud.gov/docs/ops/security-ir/) upon detection of any potential security incident.

All 18F-developed open source code that is used in the cloud.gov system is scanned using static analysis tools. When anyone proposes a change to the code (a pull request), the static analysis tool automatically runs and displays results.

See SI-3, SI-3 (1), SC-3 (2), SC-3 (7).

The Cloud Operations team monitors the cloud.gov virtual infrastructure to detect potential attacks and intrusions from internal and external sources, including using automated monitoring tools. Cloud Operations monitors for attacks, indicators of potential attacks, and unauthorized connections, as well as monitoring inbound and outbound communications traffic for unusual or unauthorized activities or conditions.

All potential incidents identified by these tools are automatically processed through a centralized system that sends the information to a database and a centralized notification system.
The cloud.gov Program Manager and System Owner ensure intrusion and monitoring tools are protected from unauthorized access by only granting access to certain members from the Cloud Operations team. All monitoring and intrusion information data is protected by limiting accounts to authorized privileged users only and is maintained in secured repositories for review by those members.
The cloud.gov team uses additional sources such as Pivotal, US-CERT Advisories, OMB Mandates, commercial and open source security communities, and other sources to provide indication of increased risk to organizational operations and assets, individuals, other organizations.
See SI-4, SI-4 (1), SI-4 (2), SI-4 (4), SI-4 (5), SI-4 (14), SI-4 (16), SI-4 (23).
When the cloud.gov team receives security directives from GSA Information Security, Cloud Operations implements the directives in accordance with the requested time frames, or notifies the issuing organization of the degree of noncompliance.
See SI-5.
cloud.gov verifies the correct operation of services that detect malicious code, viruses, file integrity, network traffic, and security compliance of the OS using a continuous integration tool (Concourse) and automated monitoring tools. The Cloud Operations team is notified of a failure in security verification via PagerDuty.See SI-6, SI-7, SI-7 (1), SI-7 (7).

All inputs passed to CLI interpreters are pre-screened to prevent the content from being unintentionally interpreted as commands.
All user input submitted via web forms is sanitized to prevent it being interpreted as a system command.
See SI-10.
PagerDuty sends cloud.gov alerts only to a limited set of cloud.gov team members who have privileged access to cloud.gov components (System Owner, Program Manager, Cloud Operations team members). This PagerDuty configuration is the responsibility of the Program Manager, who may delegate this to Cloud Operations team members.
See SI-11.