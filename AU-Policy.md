# Audit and accountability management policy

See [CIO 2100.1L – GSA IT Security Policy](https://www.gsa.gov/cdnstatic/CIO_2100_1L_CHGE_1_CC040905_signed_PDF_version_7-15-2019.pdf) Chapter 5, _Policy on Technical Controls_, which covers:

* Access Control (AC)
* Audit and Accountability (AU)
* Identification and Authentication (IA)
* System and Communications Protection (SC)

The latest version can be found on the [GSA IT Security Policies](https://www.gsa.gov/about-us/organization/office-of-the-chief-information-officer/chief-information-security-officer-ciso/it-security-policies) page.

## Purpose

Ensure all actions taken on the information system are transparent, valid, and prevent repudiation.

## Scope

See the **_Applicability_** section of the GSA IT Security Policy.

## Policy overlay

For information on roles and responsibilities, management commitment, coordination among organizational entities, compliance, reviews, and updates please see the [Technology Transformation Service's (TTS) Common Control Policy](https://github.com/18F/compliance-docs/blob/master/TTS-Common-Control-Policy.md).

## Procedures

Cloud Operations has implemented CloudTrail and CloudWatch for its account and system monitoring of AWS virtual infrastructure. These tools provide visibility into user activity by recording API calls made on an AWS account and its cloud infrastructure. CloudTrail captures and records important information about each API call for the list of auditable events.

cloud.gov provides an audit trail through the BOSH tasks command. This command shows all actions that an operator has taken with the platform. Additionally, operators can redirect Cloud Foundry component logs to a Logstash syslog server using the syslog_daemon_config property in the metron_agent job of cf-release. For end users, cloud.gov records an audit trail of all relevant API invocations of an app. The CLI command cf events returns this information.

Loggregator, the Cloud Foundry component responsible for logging, provides a stream of log output from hosted applications and from cloud.gov system components that interact with applications during updates and execution.

All applications will partially inherit some of the ELK stack auditing functions and capabilities that reside on the cloud.gov PaaS.  Application System Owners must ensure their application’s activities are monitored and captured within audit logs.

Audit logs will be made available to client organizations and for mutual support in response to security breaches, system and user access, incident reporting and continuous monitoring.  Cloud Operations will generate and distribute audit reports, provide dashboard access for audited events, and send audit log data to SIEM and log analysis systems as needed.
The cloud.gov Program Manager has established processes for regularly reviewing audit log information, and reporting security issues if discovered. Reviews will occur at a minimum of weekly and are integrated with processes for incident response, in order to ensure standardization and cross-functional collaboration. All alerts are investigated.

cloud.gov uses CloudTrail, CloudWatch, and Riemann to integrate audit monitoring, analysis and reporting into an overall process for investigation and response to suspicious activities. In addition, the cloud.gov team employs PagerDuty as an automated mechanism to immediately alert security personnel of inappropriate or unusual activities that have security implications.
As a result, all information within the system is available for audit and available for after the fact investigations.

cloud.gov provides an audit trail that shows all actions that an operator has taken with the platform. For users, cloud.gov records an audit trail of all relevant API invocations of an application.

Application System owners are responsible for making sure audit events are captured based on AU-2(d) parameter requirements for their web applications.

See AU-2.

Cloud Operations updates the defined auditable events on a quarterly basis or when changes in the threat environment occur or are identified by risk assessment. This quarterly Security Policy and Account Review meeting is on the cloud.gov team’s GSA Google Apps calendar as a recurring event.  The meeting is conducted with a quorum of the Cloud Operations team present and reviews incidents, alerts, logs, metrics, postmortems and events for the prior period.  Once reviewed, alerting policy and procedures are updated to reflect identified issues.  All updates and changes in the threat environment will be included in updates provided to the FedRAMP Joint Authorization Board (JAB).

See AU-2(3).

CloudTrail, CloudWatch, Snort, Tripwire, Clam AV, and Riemann collect, monitor, and maintain audit logs for both AWS and cloud.gov.

The events monitored include but are not limited to successful and unsuccessful account logon events, account management events, object access, policy change, privilege functions, process tracking, and system events for both AWS and cloud.gov. These events are tracked for all administrator activity, authentication checks, authorization checks, data deletions, data access, data changes, and permission changes.

cloud.gov information system generates audit records for **everything**. All events are timestamped, and are comprehensive enough to answer the who, what, and where of any event. Due to the complete virtualization of the environment, and the comprehensiveness of our tooling, all information representing the state of the system, and any action taken on it is captured.

See AU-3, AU-3(1).

Cloud Operations defines the amount of storage dedicated to audit logs records on their EC2 instances and S3 buckets. cloud.gov uses elastic file storage that allows the information system to grow storage capacity as required. The use of elastic file storage reduces the likelihood of such capacity being exceeded within the information system. Cloud Operations team members are responsible for maintaining the configuration that enforces the audit settings.

The log management framework provides the capability to retain logs for 180 days online, with sufficient capacity as to mitigate the risk of exceeding storage space. In the event the threshold is exceeded, administrators can add additional storage capacity without impacting the system.

See AU-4.

cloud.gov has the ability to elastically grow the audit storage capacity, which reduces the likelihood of such capacity being exceeded within the information system. Cloud Operations has implemented alerting to notify of insufficient audit storage capacity or if no new logs have been written to the ELK stack or CloudWatch Logs within a five-minute timeframe.
In the event that the audit storage capacity has been reached, cloud.gov will stop the Loggregator from streaming logs to any third-party tools and alert Cloud Operations of any processing failures.

See AU-5.

Through the use of CloudTrail, CloudWatch, BOSH, Nessus, ClamAV, Snort, GitHub, and the ELK logging system, the Cloud Operations team monitors and reviews audit logs for unapproved and unusual activities on a continual basis.

We use reporting rulesets developed by the Snort, Nessus and ClamAV teams, which look for, identify, and report potentially inappropriate or unusual activity to be reviewed regularly. In all cases, these tools scan for deviations from historical traffic patterns either in type or quantity.
Security vulnerabilities and system inconsistencies are reviewed by the Cloud Operations team (notified by email, text message and voice phone call).  Security vulnerabilities which are not classified as high are reviewed weekly and resolved by Cloud Operations. Regular security reports are automatically generated by Nessus and sent to the System Owner, GSA’s Information Security team and other partner agencies as required.
See SI procedures for more detail.

The Cloud Operations team acts on findings that result from its regular audit process according to its incident response guidelines (https://docs.cloud.gov/ops/security-ir), including notifying GSA Information Security, the System Owner, and the ISSO.

See AU-6.

cloud.gov uses the automated mechanisms CloudTrail, CloudWatch, and Riemann to integrate audit monitoring, analysis and reporting into an overall process for investigation and response to suspicious activities. Riemann receives data from multiple sources and makes that data available for regular auditing.

Cloud Operations employs automated CloudWatch logs to collect and track metrics to monitor in real time infrastructure log data and resources.

See AU-6(1).

Cloud Operations and GSA Information Security have set up comprehensive and automated systems, detailed in the sections under cloud.gov Security Domain Stack. Audit records are under constant analysis, and can be immediately correlated across any tool.

See AU-6(3).

CloudWatch Logs provides on-demand audit review for any actions taken on or in the AWS environment.

Riemann, InfluxDB, and Grafana provide the capability to evaluate any action taken on the cloud.gov layer.

The ELK stack, which captures logs related to applications hosted on top of cloud.gov, has the capability to provide audit reduction, analysis, and report generation capability. Specifically, Kibana has the capacity to build search queries on numerous criteria regarding application logs, and produce reports and exports.
CloudWatch Logs, Riemann, InfluxDB, Grafana, and ELK do not alter the original content or time ordering of audit records. All audit files can be viewed in their raw and JSON standard formats.

See AU-7.

Cloud Operations uses CloudTrail to monitor AWS deployments in the cloud by getting a history of AWS API calls of the cloud.gov account, including API calls made via the AWS Management Console, the command line tools, and higher-level AWS services.

See AU-7 (1).

cloud.gov pulls from multiple NTP sources including http://tf.nist.gov/tf-cgi/servers.cgi for all the cloud.gov servers to generate timestamps for audit records. All the cloud.gov NTP servers are synchronized with Amazon’s NTP canonical server.  These timestamps can be mapped to Coordinated Universal Time (UTC) or Greenwich Mean Time (GMT).

See AU-8 and AU-8 (1).

To maintain the integrity of log data, Cloud Operations carefully manages access around the generation and storage of audit log files. The ability to view or modify log data is restricted to Cloud Operations authorized users. Audit logs from CloudTrail are stored and protected in specified S3 buckets for cloud.gov, which are limited to read-only access and multifactor authentication by Cloud Operations staff.  This ensures the logs cannot be modified without proper authorization.

Audit logs from the cloud.gov platform are only accessible to Cloud Operations personnel and can only be viewed via the ELK stack. Any backend access to the EC2 hosts supporting the ELK stack in violation of policy triggers an alert to the entire Cloud Operations team.

Further, the ElasticSearch component of ELK has been proxied such that our implementation filters and prevents modifications to existing logs via the HTTP PUT method, and only accepts the creation of new log entries via the HTTP POST method.

See AU-9.

The cloud.gov team implements a backup strategy to send all cloud.gov audit logs to encrypted S3 buckets where data is redundantly stored across multiple facilities and multiple devices in each facility. All S3 buckets are only accessible to authorized cloud.gov staff for logging and monitoring purposes. Cloud Operations performs weekly backups of all cloud.gov audit logs to the S3 buckets.

See AU-9 (2).

The System Owner authorizes access to management of audit functionality to only designated Cloud Operations staff.

See AU-9 (4).

Audit logs are kept according to NARA and GSA retention standards to provide support for after-the-fact investigations of security incidents and to meet regulatory and organizational information retention requirements. Our logging systems referenced above retain logs for 180 days online, and for an additional year in an offline system.

See AU-11.

cloud.gov provides comprehensive audit record generation capability for all components: CloudWatch Logs for AWS, metrics.fr.cloud.gov for cloud.gov metrics, and logs.fr.cloud.gov for applications on cloud.gov.

Cloud Operations are responsible for maintaining the configuration that enforces the audit settings.
Cloud Operations team members select which auditable events are to be audited by specific components of cloud.gov where audit capability is deployed.

See AU-12.
