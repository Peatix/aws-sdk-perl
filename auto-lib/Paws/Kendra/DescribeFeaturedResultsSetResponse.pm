
package Paws::Kendra::DescribeFeaturedResultsSetResponse;
  use Moose;
  has CreationTimestamp => (is => 'ro', isa => 'Int');
  has Description => (is => 'ro', isa => 'Str');
  has FeaturedDocumentsMissing => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::FeaturedDocumentMissing]');
  has FeaturedDocumentsWithMetadata => (is => 'ro', isa => 'ArrayRef[Paws::Kendra::FeaturedDocumentWithMetadata]');
  has FeaturedResultsSetId => (is => 'ro', isa => 'Str');
  has FeaturedResultsSetName => (is => 'ro', isa => 'Str');
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Int');
  has QueryTexts => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::DescribeFeaturedResultsSetResponse

=head1 ATTRIBUTES


=head2 CreationTimestamp => Int

The Unix timestamp when the set of the featured results was created.


=head2 Description => Str

The description for the set of featured results.


=head2 FeaturedDocumentsMissing => ArrayRef[L<Paws::Kendra::FeaturedDocumentMissing>]

The list of document IDs that don't exist but you have specified as
featured documents. Amazon Kendra cannot feature these documents if
they don't exist in the index. You can check the status of a document
and its ID or check for documents with status errors using the
BatchGetDocumentStatus
(https://docs.aws.amazon.com/kendra/latest/dg/API_BatchGetDocumentStatus.html)
API.


=head2 FeaturedDocumentsWithMetadata => ArrayRef[L<Paws::Kendra::FeaturedDocumentWithMetadata>]

The list of document IDs for the documents you want to feature with
their metadata information. For more information on the list of
featured documents, see FeaturedResultsSet
(https://docs.aws.amazon.com/kendra/latest/dg/API_FeaturedResultsSet.html).


=head2 FeaturedResultsSetId => Str

The identifier of the set of featured results.


=head2 FeaturedResultsSetName => Str

The name for the set of featured results.


=head2 LastUpdatedTimestamp => Int

The timestamp when the set of featured results was last updated.


=head2 QueryTexts => ArrayRef[Str|Undef]

The list of queries for featuring results. For more information on the
list of queries, see FeaturedResultsSet
(https://docs.aws.amazon.com/kendra/latest/dg/API_FeaturedResultsSet.html).


=head2 Status => Str

The current status of the set of featured results. When the value is
C<ACTIVE>, featured results are ready for use. You can still configure
your settings before setting the status to C<ACTIVE>. You can set the
status to C<ACTIVE> or C<INACTIVE> using the UpdateFeaturedResultsSet
(https://docs.aws.amazon.com/kendra/latest/dg/API_UpdateFeaturedResultsSet.html)
API. The queries you specify for featured results must be unique per
featured results set for each index, whether the status is C<ACTIVE> or
C<INACTIVE>.

Valid values are: C<"ACTIVE">, C<"INACTIVE">
=head2 _request_id => Str


=cut

1;