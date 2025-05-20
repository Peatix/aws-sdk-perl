
package Paws::Transfer::UpdateProfileResponse;
  use Moose;
  has ProfileId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::UpdateProfileResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfileId => Str

Returns the identifier for the profile that's being updated.


=head2 _request_id => Str


=cut

1;