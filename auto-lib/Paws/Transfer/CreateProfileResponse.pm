
package Paws::Transfer::CreateProfileResponse;
  use Moose;
  has ProfileId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::CreateProfileResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ProfileId => Str

The unique identifier for the AS2 profile, returned after the API call
succeeds.


=head2 _request_id => Str


=cut

1;