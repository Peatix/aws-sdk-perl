
package Paws::DataZone::GetIamPortalLoginUrlOutput;
  use Moose;
  has AuthCodeUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'authCodeUrl');
  has UserProfileId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userProfileId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetIamPortalLoginUrlOutput

=head1 ATTRIBUTES


=head2 AuthCodeUrl => Str

The data portal URL of the specified Amazon DataZone domain.


=head2 B<REQUIRED> UserProfileId => Str

The ID of the user profile.


=head2 _request_id => Str


=cut

