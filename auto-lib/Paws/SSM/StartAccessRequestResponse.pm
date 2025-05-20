
package Paws::SSM::StartAccessRequestResponse;
  use Moose;
  has AccessRequestId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSM::StartAccessRequestResponse

=head1 ATTRIBUTES


=head2 AccessRequestId => Str

The ID of the access request.


=head2 _request_id => Str


=cut

1;