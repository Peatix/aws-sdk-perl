
package Paws::IVS::GetStreamSessionResponse;
  use Moose;
  has StreamSession => (is => 'ro', isa => 'Paws::IVS::StreamSession', traits => ['NameInRequest'], request_name => 'streamSession');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVS::GetStreamSessionResponse

=head1 ATTRIBUTES


=head2 StreamSession => L<Paws::IVS::StreamSession>

List of stream details.


=head2 _request_id => Str


=cut

