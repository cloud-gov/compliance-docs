# Systems and communications protection

See [CIO 2100.1L – GSA IT Security Policy](https://www.gsa.gov/cdnstatic/CIO_2100_1L_CHGE_1_CC040905_signed_PDF_version_7-15-2019.pdf) Chapter 5, _Policy on Technical Controls_, which covers:

* Access Control (AC)
* Audit and Accountability (AU)
* Identification and Authentication (IA)
* System and Communications Protection (SC)

The latest version can be found on the [GSA IT Security Policies](https://www.gsa.gov/about-us/organization/office-of-the-chief-information-officer/chief-information-security-officer-ciso/it-security-policies) page.

## Purpose

Create information systems with the most sophisticated, strongest, and reasonable cryptographic methodologies available. Structure networks with the lowest amount of access and trust possible, achieving "zero trust" network systems and designs wherever possible. Ensure communication channels fail into "closed states" if the confidentiality or integrity of the communication channel is disrupted.

## Scope

See the **_Applicability_** section of the GSA IT Security Policy.

## Policy overlay

For information on roles and responsibilities, management commitment, coordination among organizational entities, compliance, reviews, and updates please see the [Technology Transformation Service's (TTS) Common Control Policy](https://github.com/18F/compliance-docs/blob/master/TTS-Common-Control-Policy.md).

## Procedures

Only privileged cloud.gov team roles (such as System Owner and Cloud Operations) have privileged Cloud Foundry API access, granted via User Account and Authentication (UAA) Server group membership. The cloud.gov team manages information system functionality surrounding and supporting the Cloud Foundry components via AWS, GitHub, and Concourse. Users do not get access to these facilities.

Cloud Operations uses AWS multi-factor authentication to access AWS.

See SC-2, SC-7 (7), SC-7 (8).

The cloud.gov team uses AWS S3 to store non-public information.

cloud.gov generates customer-specific least-privilege credentials which are restricted to reading and writing only data in shared resources belonging to that customer. cloud.gov advises customers to not share cloud.gov-generated customer-specific credentials for S3 with others.

See SC-4.

cloud.gov uses well-formed Virtual Private Cloud (VPC) firewall rules to reduce the attack surface of hosted components.

To maintain service resiliency, cloud.gov uses AWS Availability Zones and Elastic Load Balancing, along with real-time resource monitoring and alerting.

See SC-5, SC-6.

Cloud Operations team members configure cloud.gov boundary protections. Cloud Operations team members monitor and control communications at the external boundary of the system and at key internal boundaries within the system. cloud.gov limits the number of external network connections; the only access points visible on a public network are AWS load balancers.

See SC-7, SC-7 (3), SC-7 (18).

The Cloud Operations team establishes a traffic flow policy for each managed interface. These deny network traffic by default and only allow defined exceptions.

The Cloud Operations team protects the confidentiality and integrity of the information being transmitted across each interface by enforcing TLS for HTTP based connections and SSH system access. This includes all public interfaces and applications. All traffic handled by cloud.gov is routed through an AWS ELB where the HTTPS connection is terminated.

If the team needs an exception to these traffic flow policies, the team reviews exceptions to the traffic flow policy at least annually and removes exceptions that are no longer supported by an explicit mission/business need.

See SC-7 (4), SC-7 (5), SC-8, SC-8 (1), SC-13, SC-23.

Essential management facilities for operations, monitoring, deploying changes, alerting, and other administrative needs are isolated from customer-facing components via use of a separate Tooling VPC in AWS and a security group policy which prevents traversal from the production VPC to the Tooling VPC.

See SC-7 (13).

cloud.gov terminates all network connections when sessions end. AWS ELBs are configured to terminate idle connections after 60 seconds of inactivity.

See SC-10.
Cloud Operations obtains certificates from two approved providers, COMODO (through SSLmate) and Let's Encrypt, to encrypt and verify public connections. The certificates are only stored in the AWS Identity and Access Management server certificate store to be used on Elastic Load Balancers.

Cloud Operations generates internal encryption keys and cryptographic certificates using the latest generally available version of OpenSSL. Cloud Operations encrypts and uploads server certificates and keys as secrets to AWS S3. Local copies of these certificates are deleted permanently. Concourse loads all secrets from S3, decrypts them, and uploads them to BOSH over an encrypted internal connection. BOSH in turn installs the certificates and keys into the hosts based on each service’s needs.

None of the keys and certificates generated by Cloud Operations are distributed to other team members. Only automated systems have access to any cryptographic material.

Cryptographic keys and certificates are rotated at least yearly. Once a new key/certificate pair is generated, the previous one is removed from S3 by overwriting the encrypted file.

See SC-12, SC-12 (2), SC-12 (3), SC-17.

By using and configuring AWS Route 53, cloud.gov combines DNS management with our HTTP Strict Transport Security (HSTS) endpoints to achieve data origin authentication and integrity verification along with the authoritative name resolution data the system returns in response to external name/address resolution queries.

Internally cloud.gov implements PowerDNS and Consul to resolve the names of internal Cloud Foundry components.
See SC-20, SC-21, SC-22.
EBS volumes, RDS, and S3 buckets are encrypted at rest. All system information is in these components.

See SC-28, SC-28 (1).
cloud.gov maintains a separate execution domain for each executing process by running within its own self-contained environment (a Garden container).
See SC-39.