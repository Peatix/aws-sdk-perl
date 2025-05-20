
package Paws::Transfer::DescribeHostKeyResponse;
  use Moose;
  has HostKey => (is => 'ro', isa => 'Paws::Transfer::DescribedHostKey', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeHostKeyResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> HostKey => L<Paws::Transfer::DescribedHostKey>

Returns the details for the specified host key.


=head2 _request_id => Str


=cut

1;