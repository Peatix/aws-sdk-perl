
package Paws::EMRServerless::UpdateApplicationResponse;
  use Moose;
  has Application => (is => 'ro', isa => 'Paws::EMRServerless::Application', traits => ['NameInRequest'], request_name => 'application', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRServerless::UpdateApplicationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Application => L<Paws::EMRServerless::Application>

Information about the updated application.


=head2 _request_id => Str


=cut

