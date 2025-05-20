
package Paws::Transfer::DescribeProfileResponse;
  use Moose;
  has Profile => (is => 'ro', isa => 'Paws::Transfer::DescribedProfile', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::DescribeProfileResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Profile => L<Paws::Transfer::DescribedProfile>

The details of the specified profile, returned as an object.


=head2 _request_id => Str


=cut

1;