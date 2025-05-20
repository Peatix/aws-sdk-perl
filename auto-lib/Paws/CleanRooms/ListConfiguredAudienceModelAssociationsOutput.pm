
package Paws::CleanRooms::ListConfiguredAudienceModelAssociationsOutput;
  use Moose;
  has ConfiguredAudienceModelAssociationSummaries => (is => 'ro', isa => 'ArrayRef[Paws::CleanRooms::ConfiguredAudienceModelAssociationSummary]', traits => ['NameInRequest'], request_name => 'configuredAudienceModelAssociationSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::ListConfiguredAudienceModelAssociationsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfiguredAudienceModelAssociationSummaries => ArrayRef[L<Paws::CleanRooms::ConfiguredAudienceModelAssociationSummary>]

Summaries of the configured audience model associations that you
requested.


=head2 NextToken => Str

The token value provided to access the next page of results.


=head2 _request_id => Str


=cut

