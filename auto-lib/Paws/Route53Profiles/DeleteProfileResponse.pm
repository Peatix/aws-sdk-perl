
package Paws::Route53Profiles::DeleteProfileResponse;
  use Moose;
  has Profile => (is => 'ro', isa => 'Paws::Route53Profiles::Profile');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53Profiles::DeleteProfileResponse

=head1 ATTRIBUTES


=head2 Profile => L<Paws::Route53Profiles::Profile>

Information about the C<DeleteProfile> request, including the status of
the request.


=head2 _request_id => Str


=cut

