# Audit and accountability management policy

See [CIO P 2100.1J – GSA IT Security Policy](http://www.gsa.gov/portal/mediaId/129634/fileName/CIO_21001J_CHGE_1_GSA_Information_Technology_(IT)_Security_Policy_(Posted_Version_4-28-2016).action) Chapter 5, _Policy on Technical Controls_, which covers:

* Access Control (AC)
* Audit and Accountability (AU)
* Identification and Authentication (IA)
* System and Communications Protection (SC)

## Purpose

Ensure all actions taken on the information system are transparent, valid, and prevent repudiation. 

## Scope

See the **_Applicability_** section of the [GSA IT Security Policy](http://www.gsa.gov/portal/mediaId/129634/fileName/CIO_21001J_CHGE_1_GSA_Information_Technology_(IT)_Security_Policy_(Posted_Version_4-28-2016).action).

## Policy overlay

For information on roles and responsibilities, management commitment, coordination among organizational entities, compliance, reviews, and updates please see the [Technology Transformation Service's (TTS) Common Control Policy](https://github.com/18F/compliance-docs/blob/master/TTS-Common-Control-Policy.md).

## Procedures

### AWS

Cloud Operations has implemented CloudTrail and CloudWatch for its account and system monitoring of AWS virtual infrastructure. These tools provide visibility into user activity by recording API calls made on an AWS account and its cloud infrastructure. CloudTrail captures and records important information about each API call for the list of auditable events:  

1.	User – the IAM user name of the person who was interacting with the AWS account.
2.	IP Address – the IP Address where the interactions originated from.
3.	Event Name – the type of interaction that occurred. 
4.	Service – the AWS Service that was interacted with. 
5.	Time – the date and time that the event occurred.
6.	Region – the AWS Region(s) where the interactions occurred.
7.	Resource ID – the resource ID from the event.

### cloud.gov 

cloud.gov provides an audit trail through the BOSH tasks command. This command shows all actions that an operator has taken with the platform. Additionally, operators can redirect Cloud Foundry component logs to a Logstash syslog server using the syslog_daemon_config property in the metron_agent job of cf-release. For end users, cloud.gov records an audit trail of all relevant API invocations of an app. The CLI command cf events returns this information.

Loggregator, the Cloud Foundry component responsible for logging, provides a stream of log output from hosted applications and from cloud.gov system components that interact with applications during updates and execution. Loggregator allows users to:

1.	Tail their application logs.
2.	Dump a recent set of application logs (where recent is a configurable number of log packets).
3.	Continually drain their application logs to the ELK stack log archive and analysis services.
4.	The ELK stack includes Logstash, a centralized logging and parsing data pipeline that is used to process logs in different formats. Logstash uses different rules to format each log message into multiple fields, which are indexed by the Elasticsearch search engine used for deep searches and data analytics.  Kibana is a web interface that provides an overview of the collected data, so 18F can easily view and analyze the collected logs.
5.	cloud.gov scans code on the platform for malicious code elements. See SI procedures for more information.

All applications will partially inherit some of the ELK stack auditing functions and capabilities that reside on the cloud.gov PaaS.  Application System Owners must ensure their application’s activities are monitored and captured within audit logs.  

Audit logs will be made available to client organizations and for mutual support in response to security breaches, system and user access, incident reporting and continuous monitoring.  Cloud Operations will generate and distribute audit reports, provide dashboard access for audited events, and send audit log data to SIEM and log analysis systems as needed.
The cloud.gov Program Manager has established processes for regularly reviewing audit log information, and reporting security issues if discovered. Reviews will occur at a minimum of weekly and are integrated with processes for incident response, in order to ensure standardization and cross-functional collaboration. All alerts are investigated.

cloud.gov uses CloudTrail, CloudWatch, and Riemann to integrate audit monitoring, analysis and reporting into an overall process for investigation and response to suspicious activities. In addition, the cloud.gov team employs PagerDuty as an automated mechanism to immediately alert security personnel of inappropriate or unusual activities that have security implications.
As a result, all information within the system is available for audit and available for after the fact investigations.

### AWS

1.	Because CloudTrail logging is enabled, API calls made to EC2, EBS, and VPC actions are tracked in log files, along with any other AWS service records. Every log entry contains information about who generated the request. When looking at the full details of an event, the audit trail shows:
2.	User – the IAM user name of the person who was interacting with the AWS account.
3.	IP Address – the IP Address where the interactions originated from.
4.	Event Name – the type of interaction that occurred. 
5.	Service – the AWS Service that was interacted with. 
6.	Time – the date and time that the event occurred.
7.	Region – the AWS Region(s) where the interactions occurred.
8.	Resource ID – the resource ID from the event.

### cloud.gov

cloud.gov provides an audit trail through the BOSH tasks commands. This command shows all actions that an operator has taken with the platform. For users, cloud.gov records an audit trail of all relevant API invocations of an application using the `cf logs` or `cf logs --recent` command. The logs are fed to the Loggregator component which is responsible for logging and provides a stream of log output from cloud.gov applications and system components that interact with a hosted app during updates and execution.

The BOSH CLI captures audit events from several log types within the cloud.gov platform itself.  These logs consist of VM logs (Job logs, Errand logs, Monit logs, Agent logs, Log rotation and Syslog configuration) and Director task logs. See https://bosh.io/docs/job-logs.html#vm-logs for details.

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

Through the use of CloudTrail, CloudWatch, BOSH, Nessus, ClamAV, Snort, GitHub, and the ELK logging system, the Cloud Operations team monitors and reviews audit logs for unapproved and unusual activities on a continual basis. Details: 

1.	CloudTrail provides a detailed listing of all AWS events, with both users and system accounts, with a timestamp and the access ID used.
2.	CloudWatch aggregates all system logs from all cloud.gov servers.
3.	BOSH records all system logins and software deployments.
4.	Nessus continuously scans for security vulnerabilities and reports results.
5.	ClamAV continuous monitors each server for signature and behavior vulnerabilities and raises alerts based on defined rules.
6.	Snort continuously monitors network traffic, signatures and behaviors and raises alerts based on defined rules.
7.	GitHub provides a list of source code changes including the author and strong hashing to verify integrity of the code.
8.	ELK provides an aggregate of all cloud.gov tenant application logs.

We use reporting rulesets developed by the Snort, Nessus and ClamAV teams, which look for, identify, and report potentially inappropriate or unusual activity to be reviewed regularly. In all cases, these tools scan for deviations from historical traffic patterns either in type or quantity.
Security vulnerabilities and system inconsistencies are reviewed by the Cloud Operations team (notified by email, text message and voice phone call).  Security vulnerabilities which are not classified as high are reviewed weekly and resolved by Cloud Operations. Regular security reports are automatically generated by Nessus and sent to the System Owner, GSA’s Information Security team and other partner agencies as required. 
See SI procedures for more detail.

Customers can review their own application logs by accessing the ELK stack (which has a customer-facing web frontend at https://logs.fr.cloud.gov). Application System Owners are responsible for ensuring they review and analyze application logs.

### cloud.gov team
The Cloud Operations team acts on findings that result from its regular audit process according to its incident response guidelines (https://docs.cloud.gov/ops/security-ir), including notifying GSA Information Security, the System Owner, and the ISSO.

See AU-6.

cloud.gov uses the automated mechanisms CloudTrail, CloudWatch, and Riemann to integrate audit monitoring, analysis and reporting into an overall process for investigation and response to suspicious activities. Riemann receives data from multiple sources (see AU-6(a)) and makes that data available for regular auditing.

Cloud Operations employs automated CloudWatch logs to collect and track metrics to monitor in real time infrastructure log data and resources. Integration with CloudWatch Logs enables CloudTrail to send events containing API activity in the cloud.gov AWS account to a CloudWatch Logs group. Riemann amalgamates audit data from most other sources (e.g. Snort, ClamAV) and pushes alerts needing attention to PagerDuty. 

See AU-6(1).

Cloud Operations and GSA Information Security have set up comprehensive and automated systems, detailed in the sections under cloud.gov Security Domain Stack. Audit records are under constant analysis, and can be immediately correlated across any tool.

See AU-6(3).

### AWS
CloudWatch Logs provides on-demand audit review for any actions taken on or in the AWS environment. 

### cloud.gov
Riemann, InfluxDB, and Grafana provide the capability to evaluate any action taken on the cloud.gov layer. 

The ELK stack, which captures logs related to applications hosted on top of cloud.gov, has the capability to provide audit reduction, analysis, and report generation capability. Specifically, Kibana has the capacity to build search queries on numerous criteria regarding application logs, and produce reports and exports.
CloudWatch Logs, Riemann, InfluxDB, Grafana, and ELK do not alter the original content or time ordering of audit records. All audit files can be viewed in their raw and JSON standard formats.

See AU-7.

### AWS

Cloud Operations uses CloudTrail to monitor AWS deployments in the cloud by getting a history of AWS API calls of the cloud.gov account, including API calls made via the AWS Management Console, the command line tools, and higher-level AWS services. Cloud Operations is able to identify which users and accounts called AWS APIs for services that supports CloudTrail, the source IP address the calls were made from, and when the calls occurred. 

### cloud.gov 
cloud.gov BOSH audit logs display a table listing the following for all currently running tasks: ID number, state, timestamp, user, description, and result. 
For BOSH events within the cloud.gov platform, the event details captured include: cloud config update, runtime config update, deployment create/update/delete, VM create/delete, disk create/delete, and BOSH SSH events.

Customers can review their own application logs by accessing the ELK stack (which has a customer-facing web frontend at https://logs.fr.cloud.gov).

See AU-7 (1).

Cloud.gov pulls from multiple NTP sources including http://tf.nist.gov/tf-cgi/servers.cgi for all the cloud.gov servers to generate time stamps for audit records. All the cloud.gov NTP servers are synchronized with Amazon’s NTP canonical server.  Systems poll the NTP servers at least hourly to synchronize. 
The cloud.gov timestamps are kept in synchrony by the NTP daemon, which ensures that times are accurate to at least within one minute, more accurately to within tens of milliseconds.  These timestamps can be mapped to Coordinated Universal Time (UTC) or Greenwich Mean Time (GMT).

See AU-8.

cloud.gov compares the internal information system clocks at least hourly with the servers in AU-8.
All the cloud.gov NTP servers are synchronized with the servers in AU-8. cloud.gov's NTP servers synchronize the time once per second for time offsets greater than 1 minute (and up to one hour). 

### Planned

The cloud.gov NTP server configuration will ensure that geographically separate NTP servers are used to synchronize the time.

See AU-8 (1).

To maintain the integrity of log data, Cloud Operations carefully manages access around the generation and storage of audit log files. The ability to view or modify log data is restricted to Cloud Operations authorized users. Audit logs from CloudTrail are stored and protected in specified S3 buckets for cloud.gov, which are limited to read-only access and multifactor authentication by Cloud Operations staff.  This ensures the logs cannot be modified without proper authorization. 

Audit logs from the cloud.gov platform are only accessible to Cloud Operations personnel and can only be viewed via the ELK stack. Any backend access to the EC2 hosts supporting the ELK stack in violation of policy triggers an alert to the entire Cloud Operations team.

Further, the ElasticSearch component of ELK has been proxied such that our implementation filters and prevents modifications to existing logs via the HTTP PUT method, and only accepts the creation of new log entries via the HTTP POST method.

See AU-9.

The cloud.gov team plans to implement a backup strategy to send all cloud.gov audit logs to encrypted S3 buckets where data is redundantly stored across multiple facilities and multiple devices in each facility. All S3 buckets will only be accessible to authorized cloud.gov staff using role-based-access-controls and CloudTrail auditing implemented for logging and monitoring purposes. Cloud Operations will set up weekly backups of all cloud.gov audit logs to the S3 buckets being audited.

See AU-9 (2).

The System Owner authorizes access to management of audit functionality to only designated Cloud Operations staff. The System Owner uses IAM policies to restrict access to EC2 instances and S3 bucket logs. BOSH audit logs are only accessible to those Cloud Operations administrators who have access to the BOSH director. The ELK stack uses role based auditing controls to ensure audits are secured.   

See AU-9 (4).

Audit logs are kept according to NARA and GSA retention standards to provide support for after-the-fact investigations of security incidents and to meet regulatory and organizational information retention requirements. Our logging systems referenced above retain logs for 180 days online, with sufficient capacity as to mitigate the risk of exceeding storage space. This information helps the System Owner, GSA Information Security, and Cloud Operations track changes made to its resources and to troubleshoot operational issues. Logs are retained for an additional year in an offline system.

See AU-11.

Cloud.gov provides comprehensive audit record generation capability for all components: CloudWatch Logs for AWS, metrics.fr.cloud.gov for cloud.gov metrics, logs.fr.cloud.gov for applications on cloud.gov. 

The list of auditable events defined in AU-2 are: successful and unsuccessful account logon events, account management events, object access, policy change, privilege functions, process tracking, and system events. For web applications: all administrator activity, authentication checks, authorization checks, data deletions, data access, data changes, and permission changes. Cloud Operations are responsible for maintaining the configuration that enforces the audit settings. 
Cloud Operations team members select which auditable events are to be audited by specific components of cloud.gov where audit capability is deployed.
Cloud Operations has developed secure configurations that itemize the settings required to provide an audit record generation capability for the list of audited events defined in AU-2, with the content as defined in AU-3 on cloud.gov components and AWS virtual infrastructure operating systems where audit capability is deployed. The content as defined in AU-3 is sufficient information to, at a minimum, establish: 

1.	type of event
2.	date and time 
3.	where the event occurred, 
4.	the source of the event, 
5.	the outcome (success or failure) of the event, and 
6.	the identity of any user/subject associated with the event. 

Cloud Operations team members are responsible for maintaining the configuration that enforces the audit settings. 

See AU-12.
