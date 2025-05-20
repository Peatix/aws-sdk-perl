
package Paws::GameLift::DescribeComputeOutput;
  use Moose;
  has Compute => (is => 'ro', isa => 'Paws::GameLift::Compute');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::DescribeComputeOutput

=head1 ATTRIBUTES


=head2 Compute => L<Paws::GameLift::Compute>

The set of properties for the requested compute resource.


=head2 _request_id => Str


=cut

1;