package Paws::EC2::IpamAddressHistoryRecord;
  use Moose;
  has ResourceCidr => (is => 'ro', isa => 'Str', request_name => 'resourceCidr', traits => ['NameInRequest']);
  has ResourceComplianceStatus => (is => 'ro', isa => 'Str', request_name => 'resourceComplianceStatus', traits => ['NameInRequest']);
  has ResourceId => (is => 'ro', isa => 'Str', request_name => 'resourceId', traits => ['NameInRequest']);
  has ResourceName => (is => 'ro', isa => 'Str', request_name => 'resourceName', traits => ['NameInRequest']);
  has ResourceOverlapStatus => (is => 'ro', isa => 'Str', request_name => 'resourceOverlapStatus', traits => ['NameInRequest']);
  has ResourceOwnerId => (is => 'ro', isa => 'Str', request_name => 'resourceOwnerId', traits => ['NameInRequest']);
  has ResourceRegion => (is => 'ro', isa => 'Str', request_name => 'resourceRegion', traits => ['NameInRequest']);
  has ResourceType => (is => 'ro', isa => 'Str', request_name => 'resourceType', traits => ['NameInRequest']);
  has SampledEndTime => (is => 'ro', isa => 'Str', request_name => 'sampledEndTime', traits => ['NameInRequest']);
  has SampledStartTime => (is => 'ro', isa => 'Str', request_name => 'sampledStartTime', traits => ['NameInRequest']);
  has VpcId => (is => 'ro', isa => 'Str', request_name => 'vpcId', traits => ['NameInRequest']);
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::IpamAddressHistoryRecord

=head1 USAGE

This class represents one of two things:

=head3 Arguments in a call to a service

Use the attributes of this class as arguments to methods. You shouldn't make instances of this class. 
Each attribute should be used as a named argument in the calls that expect this type of object.

As an example, if Att1 is expected to be a Paws::EC2::IpamAddressHistoryRecord object:

  $service_obj->Method(Att1 => { ResourceCidr => $value, ..., VpcId => $value  });

=head3 Results returned from an API call

Use accessors for each attribute. If Att1 is expected to be an Paws::EC2::IpamAddressHistoryRecord object:

  $result = $service_obj->Method(...);
  $result->Att1->ResourceCidr

=head1 DESCRIPTION

This class has no description

=head1 ATTRIBUTES


=head2 ResourceCidr => Str

The CIDR of the resource.


=head2 ResourceComplianceStatus => Str

The compliance status of a resource. For more information on compliance
statuses, see Monitor CIDR usage by resource
(https://docs.aws.amazon.com/vpc/latest/ipam/monitor-cidr-compliance-ipam.html)
in the I<Amazon VPC IPAM User Guide>.


=head2 ResourceId => Str

The ID of the resource.


=head2 ResourceName => Str

The name of the resource.


=head2 ResourceOverlapStatus => Str

The overlap status of an IPAM resource. The overlap status tells you if
the CIDR for a resource overlaps with another CIDR in the scope. For
more information on overlap statuses, see Monitor CIDR usage by
resource
(https://docs.aws.amazon.com/vpc/latest/ipam/monitor-cidr-compliance-ipam.html)
in the I<Amazon VPC IPAM User Guide>.


=head2 ResourceOwnerId => Str

The ID of the resource owner.


=head2 ResourceRegion => Str

The Amazon Web Services Region of the resource.


=head2 ResourceType => Str

The type of the resource.


=head2 SampledEndTime => Str

Sampled end time of the resource-to-CIDR association within the IPAM
scope. Changes are picked up in periodic snapshots, so the end time may
have occurred before this specific time.


=head2 SampledStartTime => Str

Sampled start time of the resource-to-CIDR association within the IPAM
scope. Changes are picked up in periodic snapshots, so the start time
may have occurred before this specific time.


=head2 VpcId => Str

The VPC ID of the resource.



=head1 SEE ALSO

This class forms part of L<Paws>, describing an object used in L<Paws::EC2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut
