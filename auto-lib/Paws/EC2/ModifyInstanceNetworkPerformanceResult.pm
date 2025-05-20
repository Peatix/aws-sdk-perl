
package Paws::EC2::ModifyInstanceNetworkPerformanceResult;
  use Moose;
  has BandwidthWeighting => (is => 'ro', isa => 'Str', request_name => 'bandwidthWeighting', traits => ['NameInRequest',]);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceNetworkPerformanceResult

=head1 ATTRIBUTES


=head2 BandwidthWeighting => Str

Contains the updated configuration for bandwidth weighting on the
specified instance.

Valid values are: C<"default">, C<"vpc-1">, C<"ebs-1">
=head2 InstanceId => Str

The instance ID that was updated.


=head2 _request_id => Str


=cut

