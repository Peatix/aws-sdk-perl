package Paws::EC2::VpcEndpointAssociation;
  use Moose;
  has AssociatedResourceAccessibility => (is => 'ro', isa => 'Str', request_name => 'associatedResourceAccessibility', traits => ['NameInRequest']);
  has AssociatedResourceArn => (is => 'ro', isa => 'Str', request_name => 'associatedResourceArn', traits => ['NameInRequest']);
  has DnsEntry => (is => 'ro', isa => 'Paws::EC2::DnsEntry', request_name => 'dnsEntry', traits => ['NameInRequest']);
  has FailureCode => (is => 'ro', isa => 'Str', request_name => 'failureCode', traits => ['NameInRequest']);
  has FailureReason => (is => 'ro', isa => 'Str', request_name => 'failureReason', traits => ['NameInRequest']);
  has Id => (is => 'ro', isa => 'Str', request_name => 'id', traits => ['NameInRequest']);
  has PrivateDnsEntry => (is => 'ro', isa => 'Paws::EC2::DnsEntry', request_name => 'privateDnsEntry', traits => ['NameInRequest']);
  has ResourceConfigurationGroupArn => (is => 'ro', isa => 'Str', request_name => 'resourceConfigurationGroupArn', traits => ['NameInRequest']);
  has ServiceNetworkArn => (is => 'ro', isa => 'Str', request_name => 'serviceNetworkArn', traits => ['NameInRequest']);
  has ServiceNetworkName => (is => 'ro', isa => 'Str', request_name => 'serviceNetworkName', traits => ['NameInRequest']);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::EC2::Tag]', request_name => 'tagSet', traits => ['NameInRequest']);
  has VpcEndpointId => (is => 'ro', isa => 'Str', request_name => 'vpcEndpointId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::VpcEndpointAssociation

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::VpcEndpointAssociation object:

  $service_obj->Method(Att1 => { AssociatedResourceAccessibility => $value, ..., VpcEndpointId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::VpcEndpointAssociation object:

  $result = $service_obj->Method(...);
  $result->Att1->AssociatedResourceAccessibility

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 AssociatedResourceAccessibility => Str

The connectivity status of the resources associated to a VPC endpoint.
The resource is accessible if the associated resource configuration is
C<AVAILABLE>, otherwise the resource is inaccessible.


=head2 AssociatedResourceArn => Str

The Amazon Resource Name (ARN) of the associated resource.


=head2 DnsEntry => L<Paws::EC2::DnsEntry>

The DNS entry of the VPC endpoint association.


=head2 FailureCode => Str

An error code related to why an VPC endpoint association failed.


=head2 FailureReason => Str

A message related to why an VPC endpoint association failed.


=head2 Id => Str

The ID of the VPC endpoint association.


=head2 PrivateDnsEntry => L<Paws::EC2::DnsEntry>

The private DNS entry of the VPC endpoint association.


=head2 ResourceConfigurationGroupArn => Str

The Amazon Resource Name (ARN) of the resource configuration group.


=head2 ServiceNetworkArn => Str

The Amazon Resource Name (ARN) of the service network.


=head2 ServiceNetworkName => Str

The name of the service network.


=head2 Tags => ArrayRef[L<Paws::EC2::Tag>]

The tags to apply to the VPC endpoint association.


=head2 VpcEndpointId => Str

The ID of the VPC endpoint.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
