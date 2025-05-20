
package Paws::Neptunedata::GetPropertygraphSummaryOutput;
  use Moose;
  has Payload => (is => 'ro', isa => 'Paws::Neptunedata::PropertygraphSummaryValueMap', traits => ['NameInRequest'], request_name => 'payload');
  has StatusCode => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'statusCode');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::GetPropertygraphSummaryOutput

=head1 ATTRIBUTES


=head2 Payload => L<Paws::Neptunedata::PropertygraphSummaryValueMap>

Payload containing the property graph summary response.


=head2 StatusCode => Int

The HTTP return code of the request. If the request succeeded, the code
is 200.


=head2 _request_id => Str


=cut

