
package Paws::SSM::DescribeInstancePropertiesResult;
  use Moose;
  has InstanceProperties => (is => 'ro', isa => 'ArrayRef[Paws::SSM::InstanceProperty]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::DescribeInstancePropertiesResult

=head1 ATTRIBUTES


=head2 InstanceProperties => ArrayRef[L<Paws::SSM::InstanceProperty>]

Properties for the managed instances.


=head2 NextToken => Str

The token for the next set of properties to return. Use this token to
get the next set of results.


=head2 _request_id => Str


=cut

1;