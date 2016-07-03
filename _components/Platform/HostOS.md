---
category: Component
name: Red Hat Enterprise Linux
description: Host Operating System

# For System Architure
id: Platform.HostOS
nodeType:
  - type: Root # Compute, SoftwareComponent, DBMS, Database, Webserver, WebApplication, BlockStorage, ObjectStorage, Load Balencer (Node type per OASIS TOSCA v1.0)
  - type: Compute
capabilities:
  - type: OperatingSystem # Endpoint, Endpoint.Admin, Endpoint.Public, Scalable, Endpoint.Database, Attachment, network.Linkable, network.Bindable, OperatingSystem, Container.Docker (Capablities type per OASIS TOSCA v1.0)
  - type: Endpoint.Admin
  - type: network.Linkable
  - type: network.Bindable
  - type: Scalable
relationships:
  - type: HostedOn # ConnectsTo, AttachesTo, RoutesTo, network.LinksTo, network.BindsTo
    id: Infrastructure.compute
  - type: network.BindsTo
    id: Infrastructure.compute
  - type: network.BindsTo
    id: Infrastructure.Jumpbox
  - type: network.BindsTo
    id: Infrastructure.VPC
  - type: ConnectsTo
    id: Platform.Kubernetes
  - type: network.BindsTo
    id: Platform.Docker
  - type: AttachesTo
    id: Infrastructure.storage
artifacts:
  - type: File # Implementation, Implementation.Bash, Implementation.Python, Deployment.Image.Container.Docker, Deployment.Image.VM.ISO, Deployment, Deployment.Image, Deployment.Image.VM,
    id: Infrastructure.ebs
policies:
  - type: Placement # Scaling, Update, Performance, Placement
    id: Infrastructure.AutoScaling
  - type: Scaling # Scaling, Update, Performance, Placement
    id: Infrastructure.AutoScaling
contacts:
  - role: Owner
    responsibilities:
implementation:
  - task:
    url:
    status:
references:
  - name: EC2 Diagram # Name of the reference
    path: diagrams/diagram-1.png # Relative path of local file or URL ie. diagrams/diagram-1.png
    type: Image # Type of reference ie. Image, URL
verifications:
  - key: test_verification_1 # Key of verification
    name: TEST 1 # Name of verification
    path: Script # Relative path of local file or URL ie.
    cmd: Image # Type of reference ie. Image, URL
controls:
  - control: CM-2
    implementation_status: doing # done = implemented, doing = partially implemented, todo = not implemented
        narrative: Text
