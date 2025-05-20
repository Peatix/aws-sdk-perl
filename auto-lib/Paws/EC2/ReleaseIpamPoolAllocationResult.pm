
package Paws::EC2::ReleaseIpamPoolAllocationResult;
  use Moose;
  has Success => (is => 'ro', isa => 'Bool', request_name => 'success', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ReleaseIpamPoolAllocationResult

=head1 ATTRIBUTES


=head2 Success => Bool

Indicates if the release was successful.


=head2 _request_id => Str


=cut

