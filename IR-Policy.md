# 18F Incident Response Policy

## 1. Purpose of Policy
Incident Response (IR) is an organized approach to addressing and managing the aftermath of a security breach or attack (also known as an incident). The goal is to handle the situation in a way that limits damage and reduces recovery time and costs.
This Policy establishes the basis for implementing an incident response policy and practices for protecting information systems and data within 18F systems, products and networks.

The 18F program includes a library of security policies that address federal and non-federal requirements. These policies guide and govern the actions of 18F employees and contractors in conducting any United States (U.S.) business.

This policy is written and includes the following:
* Incident Response Training
* Incident Response Testing
* Incident Handling
* Incident Monitoring
* Incident Reporting
* Incident Response Assistance
* Incident Response Plan
* Information spillage response

## 2. Scope of Policy
This policy applies to all users, systems, networks, components, services and processes in or accessing the 18F Production environment, and all services, applications and products in General Availability.  This includes cloud infrastructure components, leveraged services and other elements used to deliver 18F products and services.

Please see the 18F Governance Policy for further information on Management Commitment, Compliance and Enforcement, Review & Update processes, and Penalties.

## 3. Policy
The access and use of Information Technology (IT) resources shall be in compliance with applicable Federal Information Processing Standards (FIPS) and National Institute of Standards and Technology (NIST) Special Publications, International Organization for Standards (ISO) and 18F policies and standards.

### Incident Response Training
* 18F must provide incident response training to information system users consistent with assigned roles and responsibilities: Within 60 * days of assuming an incident response role or responsibility; when required by information system changes; and annually thereafter.
* 18F will incorporates simulated events into incident response training to facilitate effective response by personnel in crisis situations.
* 18F will employ automated mechanisms to provide a more thorough and realistic incident response training environment.

### Incident Response Testing
* 18F must test the incident response capability for its information systems annually using (i.e. walk-through or tabletop exercises, simulations (parallel/full interrupt), and comprehensive exercises) to determine the incident response effectiveness and documents the results.

### Incident Handling
* 18F must implement incident handling capability for security incidents that includes preparation, detection and analysis, containment, eradication, and recovery;
* Coordinate incident handling activities with contingency planning activities
* Incorporate lessons learned from ongoing incident handling activities into incident response procedures, training, and testing, and implements the resulting changes accordingly.

### Incident Monitoring
* 18F must track and document information system security incidents maintaining records about each incident, the status of the incident, and other pertinent information necessary for forensics, evaluating incident details, trends, and handling.
* 18F must employ automated mechanisms to assist in the tracking of security incidents and in the collection and analysis of incident information.

### Incident Reporting
* 18F requires personnel to report suspected security incidents to the organizational incident response capability within [Assignment: organization-defined time period]; and
* Report security incident information to United States Computer Emergency Readiness Team (US-CERT) and other federal agencies as required.

### Incident Response Assistance
* 18F must provide the capability of an incident response support resource, integral to the organizational incident response capability that offers advice and assistance to users of the information system for the handling and reporting of security incidents.
* Incident response support resources provided by 18F can include, for example, help desks, assistance groups, and access to forensics services, when required.

### Incident Response Plan
* 18F must develop an incident response plan that:
 * Provides the organization with a roadmap for implementing its incident response capability;
 * Describes the structure and organization of the incident response capability;
 * Provides a high-level approach for how the incident response capability fits into the overall organization;
 * Meets the unique requirements of the organization, which relate to mission, size, structure, and functions;
 * Defines reportable incidents;
 * Provides metrics for measuring the incident response capability within the organization;
 * Defines the resources and management support needed to effectively maintain and mature an incident response capability
 * Reviewed and approved by the 18F Infrastructure Manager and ISSM;
* Distribute copies of the incident response plan to all designated incident response POCs, 18F managers and system owners
* Review the incident response plan at least on an annual basis and update the incident response plan to address system/organizational changes or problems encountered during plan implementation, execution, or testing
* Communicate incident response plan changes to all designated incident response POCs  and 18F managers and system owners
Protects the incident response plan from unauthorized disclosure and modification

### Information Spillage Response
* 18F responds to information spills by:
 * Identifying the specific  information involved in the information system contamination
 * Alerting designated incident response  personnel,  system owners , Information system security officers  and other POCs  of the information spill  using methods of communication not associated with the spill
 * Isolating the contaminated information system or system component
 * Eradicating the information from the contaminated information system or component
 * Identifying other information systems or system components that may have been subsequently contaminated

## 4. Roles and Responsibilities
|Roles                  | Responsibilities|
|-----------------------|-----------------------------------------------------------------------------------------------------|
|Development Operations | The safety and security of data on network and the equipment used to run the network infrastructure.|
|Security Operations    | Monitor security posture of the information systems and reports any suspicious activities within the network to the appropriates POCs|
|Incident Response Team | Designated incident response personal will activate the IPR plan and follow the IR procedures|
|Senior Director        | Ensuring the Policy is approved, implemented and communicated.|
|Director of Compliance | Owner of the Policy. Ensuring the Policy meets the compliance requirements.|
