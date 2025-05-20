
package Paws::CleanRoomsML::ListAudienceModelsResponse;
  use Moose;
  has AudienceModels => (is => 'ro', isa => 'ArrayRef[Paws::CleanRoomsML::AudienceModelSummary]', traits => ['NameInRequest'], request_name => 'audienceModels', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::ListAudienceModelsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AudienceModels => ArrayRef[L<Paws::CleanRoomsML::AudienceModelSummary>]

The audience models that match the request.


=head2 NextToken => Str

The token value used to access the next page of results.


=head2 _request_id => Str


=cut

