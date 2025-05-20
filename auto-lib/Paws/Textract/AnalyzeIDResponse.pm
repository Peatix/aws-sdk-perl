
package Paws::Textract::AnalyzeIDResponse;
  use Moose;
  has AnalyzeIDModelVersion => (is => 'ro', isa => 'Str');
  has DocumentMetadata => (is => 'ro', isa => 'Paws::Textract::DocumentMetadata');
  has IdentityDocuments => (is => 'ro', isa => 'ArrayRef[Paws::Textract::IdentityDocument]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Textract::AnalyzeIDResponse

=head1 ATTRIBUTES


=head2 AnalyzeIDModelVersion => Str

The version of the AnalyzeIdentity API being used to process documents.


=head2 DocumentMetadata => L<Paws::Textract::DocumentMetadata>




=head2 IdentityDocuments => ArrayRef[L<Paws::Textract::IdentityDocument>]

The list of documents processed by AnalyzeID. Includes a number
denoting their place in the list and the response structure for the
document.


=head2 _request_id => Str


=cut

1;