
package Paws::Transfer::ListProfilesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Profiles => (is => 'ro', isa => 'ArrayRef[Paws::Transfer::ListedProfile]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Transfer::ListProfilesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Returns a token that you can use to call C<ListProfiles> again and
receive additional results, if there are any.


=head2 B<REQUIRED> Profiles => ArrayRef[L<Paws::Transfer::ListedProfile>]

Returns an array, where each item contains the details of a profile.


=head2 _request_id => Str


=cut

1;