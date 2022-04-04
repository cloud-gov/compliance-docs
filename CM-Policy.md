# Configuration management

See [CIO 2100.1L – GSA IT Security Policy](https://www.gsa.gov/cdnstatic/CIO_2100_1L_CHGE_1_CC040905_signed_PDF_version_7-15-2019.pdf) 

* Chapter 3, _Policy for Identify Function_, which covers:
  * CM-1, CM-8
* Chapter 4, _Policy for Protect Function_, which covers:
  * CM-2, CM-3, CM-4, CM-5, CM-6, CM-7, CM-8, CM-9, 
* Chapter 5, _Policy for Detect Function_, which covers:
  * CM-2, CM-3, CM-8, CM-10, CM-11

The latest version can be found on the [GSA IT Security Policies](https://www.gsa.gov/about-us/organization/office-of-the-chief-information-officer/chief-information-security-officer-ciso/it-security-policies) page.

## Purpose

Always deploy information systems into a known state before instantiation, and to maintain information systems in an immutable state as much as feasible. To the greatest degree possible, the configuration of systems should not be altered after they are deployed — they should be rebuilt and replaced from a known and secure baseline state.

## Scope

See the **_Applicability_** section of the GSA IT Security Policy.

## Policy overlay

For information on roles and responsibilities, management commitment, coordination among organizational entities, compliance, reviews, and updates please see the [Technology Transformation Service's (TTS) Common Control Policy](https://github.com/cloud-gov/cg-compliance-docs/blob/master/TTS-Common-Control-Policy.md).

<!-- changequote(`{{', `}}') -->
include({{TTS-Common-Control-Policy.md}})
---
# Procedures

cloud.gov's specific configuration management procedures are packaged with the actual code of the cloud.gov system. Below is an overview of our procedures along with citations to controls and relevant GitHub repositories.

###

The cloud.gov team maintains a [Configuration Management Plan](https://github.com/cloud-gov/cg-site/blob/master/_docs/ops/configuration-management.md) that governs configuration changes. The plan outlines the procedure for to make any and all changes impacting the configuration of the system.

See CM-9.

Cloud Operations first provisions the initial infrastructure tool, Concourse (a continuous integration pipelining tool), into the desired "infrastructure as a service" account, using this [procedure](https://github.com/cloud-gov/cg-provision). Concourse then ensures that all configurations of further automated deployments are controlled, whether they are the result of running Terraform or BOSH.

Cloud Operations encodes cloud.gov's infrastructure into a set of [Terraform](https://www.terraform.io) configuration files. Terraform files are checked into the [cloud.gov GitHub repositories](https://github.com/cloud-gov), and local git repositories, in order to ensure distributed version control and availability of the code.

See CM-2, CM-2(2), CM-2(3), CM-6(1).

Cloud Operations works with relevant stakeholders, decision-makers, and GSA Information Security to determine any necessary changes, and their impacts, to the configuration of the system. All changes to the configuration of the system are tracked both in GitHub and AWS CloudTrail. Only the System Owner and Cloud Operations are allowed to make configuration changes, and all changes are made to reasonably ensure the configurations require the least amount of functionality necessary.

See CM-3, CM-4, CM-5, CM-5(1), CM-5(5), CM-7, CM-8, CM-8(1)

# Version history

Complete version history: https://github.com/cloud-gov/cg-compliance-docs/commits/master/CM-Policy.md

* 2016-10: Initial version for authorization
* 2017-09: Security policy link updates
* 2019-12: Update links to GSA security policy
* 2020-11: Update links to GitHub and GSA policies, split controls by CSF, add version history
* 2021-11: Correct GitHub to link to cloud-gov org
