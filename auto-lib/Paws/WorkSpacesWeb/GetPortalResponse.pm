
package Paws::WorkSpacesWeb::GetPortalResponse;
  use Moose;
  has Portal => (is => 'ro', isa => 'Paws::WorkSpacesWeb::Portal', traits => ['NameInRequest'], request_name => 'portal');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkSpacesWeb::GetPortalResponse

=head1 ATTRIBUTES


=head2 Portal => L<Paws::WorkSpacesWeb::Portal>

The web portal.


=head2 _request_id => Str


=cut

