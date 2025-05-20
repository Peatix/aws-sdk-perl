package Paws::EC2::VerifiedAccessEndpoint;
  use Moose;
  has ApplicationDomain => (is => 'ro', isa => 'Str', request_name => 'applicationDomain', traits => ['NameInRequest']);
  has AttachmentType => (is => 'ro', isa => 'Str', request_name => 'attachmentType', traits => ['NameInRequest']);
  has CidrOptions => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessEndpointCidrOptions', request_name => 'cidrOptions', traits => ['NameInRequest']);
  has CreationTime => (is => 'ro', isa => 'Str', request_name => 'creationTime', traits => ['NameInRequest']);
  has DeletionTime => (is => 'ro', isa => 'Str', request_name => 'deletionTime', traits => ['NameInRequest']);
  has Description => (is => 'ro', isa => 'Str', request_name => 'description', traits => ['NameInRequest']);
  has DeviceValidationDomain => (is => 'ro', isa => 'Str', request_name => 'deviceValidationDomain', traits => ['NameInRequest']);
  has DomainCertificateArn => (is => 'ro', isa => 'Str', request_name => 'domainCertificateArn', traits => ['NameInRequest']);
  has EndpointDomain => (is => 'ro', isa => 'Str', request_name => 'endpointDomain', traits => ['NameInRequest']);
  has EndpointType => (is => 'ro', isa => 'Str', request_name => 'endpointType', traits => ['NameInRequest']);
  has LastUpdatedTime => (is => 'ro', isa => 'Str', request_name => 'lastUpdatedTime', traits => ['NameInRequest']);
  has LoadBalancerOptions => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessEndpointLoadBalancerOptions', request_name => 'loadBalancerOptions', traits => ['NameInRequest']);
  has NetworkInterfaceOptions => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessEndpointEniOptions', request_name => 'networkInterfaceOptions', traits => ['NameInRequest']);
  has RdsOptions => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessEndpointRdsOptions', request_name => 'rdsOptions', traits => ['NameInRequest']);
  has SecurityGroupIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]', request_name => 'securityGroupIdSet', traits => ['NameInRequest']);
  has SseSpecification => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessSseSpecificationResponse', request_name => 'sseSpecification', traits => ['NameInRequest']);
  has Status => (is => 'ro', isa => 'Paws::EC2::VerifiedAccessEndpointStatus', request_name => 'status', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has VerifiedAccessEndpointId => (is => 'ro', isa => 'Str', request_name => 'verifiedAccessEndpointId', traits => ['NameInRequest']);
  has VerifiedAccessGroupId => (is => 'ro', isa => 'Str', request_name => 'verifiedAccessGroupId', traits => ['NameInRequest']);
  has VerifiedAccessInstanceId => (is => 'ro', isa => 'Str', request_name => 'verifiedAccessInstanceId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VerifiedAccessEndpoint

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VerifiedAccessEndpoint object:

  $service_obj->Method(Att1 => { ApplicationDomain => $value, ..., VerifiedAccessInstanceId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VerifiedAccessEndpoint object:

  $result = $service_obj->Method(...);
  $result->Att1->ApplicationDomain

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ApplicationDomain => Str

The DNS name for users to reach your application.


=head2 AttachmentType => Str

The type of attachment used to provide connectivity between the Amazon
Web Services Verified Access endpoint and the application.


=head2 CidrOptions => L<Paws::EC2::VerifiedAccessEndpointCidrOptions>

The options for a CIDR endpoint.


=head2 CreationTime => Str

The creation time.


=head2 DeletionTime => Str

The deletion time.


=head2 Description => Str

A description for the Amazon Web Services Verified Access endpoint.


=head2 DeviceValidationDomain => Str

Returned if endpoint has a device trust provider attached.


=head2 DomainCertificateArn => Str

The ARN of a public TLS/SSL certificate imported into or created with
ACM.


=head2 EndpointDomain => Str

A DNS name that is generated for the endpoint.


=head2 EndpointType => Str

The type of Amazon Web Services Verified Access endpoint. Incoming
application requests will be sent to an IP address, load balancer or a
network interface depending on the endpoint type specified.


=head2 LastUpdatedTime => Str

The last updated time.


=head2 LoadBalancerOptions => L<Paws::EC2::VerifiedAccessEndpointLoadBalancerOptions>

The load balancer details if creating the Amazon Web Services Verified
Access endpoint as C<load-balancer>type.


=head2 NetworkInterfaceOptions => L<Paws::EC2::VerifiedAccessEndpointEniOptions>

The options for network-interface type endpoint.


=head2 RdsOptions => L<Paws::EC2::VerifiedAccessEndpointRdsOptions>

The options for an RDS endpoint.


=head2 SecurityGroupIds => ArrayRef[Str|Undef]

The IDs of the security groups for the endpoint.


=head2 SseSpecification => L<Paws::EC2::VerifiedAccessSseSpecificationResponse>

The options in use for server side encryption.


=head2 Status => L<Paws::EC2::VerifiedAccessEndpointStatus>

The endpoint status.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags.


=head2 VerifiedAccessEndpointId => Str

The ID of the Amazon Web Services Verified Access endpoint.


=head2 VerifiedAccessGroupId => Str

The ID of the Amazon Web Services Verified Access group.


=head2 VerifiedAccessInstanceId => Str

The ID of the Amazon Web Services Verified Access instance.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
