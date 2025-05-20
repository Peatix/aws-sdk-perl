
package Paws::CleanRoomsML::ListConfiguredAudienceModelsResponse;
  use Moose;
  has ConfiguredAudienceModels => (is => 'ro', isa => 'ArrayRef[Paws::CleanRoomsML::ConfiguredAudienceModelSummary]', traits => ['NameInRequest'], request_name => 'configuredAudienceModels', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::ListConfiguredAudienceModelsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredAudienceModels => ArrayRef[L<Paws::CleanRoomsML::ConfiguredAudienceModelSummary>]

The configured audience models.


=head2 NextToken => Str

The token value used to access the next page of results.


=head2 _request_id => Str


=cut

