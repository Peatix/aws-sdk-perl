
package Paws::IoTSiteWise::BatchGetAssetPropertyValueResponse;
  use Moose;
  has ErrorEntries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::BatchGetAssetPropertyValueErrorEntry]', traits => ['NameInRequest'], request_name => 'errorEntries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SkippedEntries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::BatchGetAssetPropertyValueSkippedEntry]', traits => ['NameInRequest'], request_name => 'skippedEntries', required => 1);
  has SuccessEntries => (is => 'ro', isa => 'ArrayRef[Paws::IoTSiteWise::BatchGetAssetPropertyValueSuccessEntry]', traits => ['NameInRequest'], request_name => 'successEntries', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTSiteWise::BatchGetAssetPropertyValueResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ErrorEntries => ArrayRef[L<Paws::IoTSiteWise::BatchGetAssetPropertyValueErrorEntry>]

A list of the errors (if any) associated with the batch request. Each
error entry contains the C<entryId> of the entry that failed.


=head2 NextToken => Str

The token for the next set of results, or null if there are no
additional results.


=head2 B<REQUIRED> SkippedEntries => ArrayRef[L<Paws::IoTSiteWise::BatchGetAssetPropertyValueSkippedEntry>]

A list of entries that were not processed by this batch request.
because these entries had been completely processed by previous
paginated requests. Each skipped entry contains the C<entryId> of the
entry that skipped.


=head2 B<REQUIRED> SuccessEntries => ArrayRef[L<Paws::IoTSiteWise::BatchGetAssetPropertyValueSuccessEntry>]

A list of entries that were processed successfully by this batch
request. Each success entry contains the C<entryId> of the entry that
succeeded and the latest query result.


=head2 _request_id => Str


=cut

