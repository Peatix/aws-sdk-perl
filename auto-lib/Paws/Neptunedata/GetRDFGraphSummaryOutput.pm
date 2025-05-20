
package Paws::Neptunedata::GetRDFGraphSummaryOutput;
  use Moose;
  has Payload => (is => 'ro', isa => 'Paws::Neptunedata::RDFGraphSummaryValueMap', traits => ['NameInRequest'], request_name => 'payload');
  has StatusCode => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'statusCode');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::GetRDFGraphSummaryOutput

=head1 ATTRIBUTES


=head2 Payload => L<Paws::Neptunedata::RDFGraphSummaryValueMap>

Payload for an RDF graph summary response


=head2 StatusCode => Int

The HTTP return code of the request. If the request succeeded, the code
is 200.


=head2 _request_id => Str


=cut

