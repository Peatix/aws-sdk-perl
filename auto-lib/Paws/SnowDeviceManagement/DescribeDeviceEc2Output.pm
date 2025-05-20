
package Paws::SnowDeviceManagement::DescribeDeviceEc2Output;
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::SnowDeviceManagement::InstanceSummary]', traits => ['NameInRequest'], request_name => 'instances');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SnowDeviceManagement::DescribeDeviceEc2Output

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[L<Paws::SnowDeviceManagement::InstanceSummary>]

A list of structures containing information about each instance.


=head2 _request_id => Str


=cut

