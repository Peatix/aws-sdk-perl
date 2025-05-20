
package Paws::IoTTwinMaker::ListMetadataTransferJobsResponse;
  use Moose;
  has MetadataTransferJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::IoTTwinMaker::MetadataTransferJobSummary]', traits => ['NameInRequest'], request_name => 'metadataTransferJobSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTTwinMaker::ListMetadataTransferJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> MetadataTransferJobSummaries => ArrayRef[L<Paws::IoTTwinMaker::MetadataTransferJobSummary>]

The metadata transfer job summaries.


=head2 NextToken => Str

The string that specifies the next page of results.


=head2 _request_id => Str


=cut

