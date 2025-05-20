
package Paws::Route53Profiles::CreateProfileResponse;
  use Moose;
  has Profile => (is => 'ro', isa => 'Paws::Route53Profiles::Profile');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::CreateProfileResponse

=head1 ATTRIBUTES


=head2 Profile => L<Paws::Route53Profiles::Profile>

The Profile that you just created.


=head2 _request_id => Str


=cut

