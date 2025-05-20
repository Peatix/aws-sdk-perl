
package Paws::IVSRealTime::ListIngestConfigurationsResponse;
  use Moose;
  has IngestConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::IVSRealTime::IngestConfigurationSummary]', traits => ['NameInRequest'], request_name => 'ingestConfigurations', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::ListIngestConfigurationsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> IngestConfigurations => ArrayRef[L<Paws::IVSRealTime::IngestConfigurationSummary>]

List of the matching ingest configurations (summary information only).


=head2 NextToken => Str

If there are more IngestConfigurations than C<maxResults>, use
C<nextToken> in the request to get the next set.


=head2 _request_id => Str


=cut

