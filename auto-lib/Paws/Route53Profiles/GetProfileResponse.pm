
package Paws::Route53Profiles::GetProfileResponse;
  use Moose;
  has Profile => (is => 'ro', isa => 'Paws::Route53Profiles::Profile');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::GetProfileResponse

=head1 ATTRIBUTES


=head2 Profile => L<Paws::Route53Profiles::Profile>

Information about the Profile, including the status of the Profile.


=head2 _request_id => Str


=cut

