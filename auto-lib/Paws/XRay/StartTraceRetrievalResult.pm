
package Paws::XRay::StartTraceRetrievalResult;
  use Moose;
  has RetrievalToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::XRay::StartTraceRetrievalResult

=head1 ATTRIBUTES


=head2 RetrievalToken => Str

Retrieval token.


=head2 _request_id => Str


=cut

