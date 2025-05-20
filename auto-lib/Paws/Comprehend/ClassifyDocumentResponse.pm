
package Paws::Comprehend::ClassifyDocumentResponse;
  use Moose;
  has Classes => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::DocumentClass]');
  has DocumentMetadata => (is => 'ro', isa => 'Paws::Comprehend::DocumentMetadata');
  has DocumentType => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::DocumentTypeListItem]');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::ErrorsListItem]');
  has Labels => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::DocumentLabel]');
  has Warnings => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::WarningsListItem]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::ClassifyDocumentResponse

=head1 ATTRIBUTES


=head2 Classes => ArrayRef[L<Paws::Comprehend::DocumentClass>]

The classes used by the document being analyzed. These are used for
models trained in multi-class mode. Individual classes are mutually
exclusive and each document is expected to have only a single class
assigned to it. For example, an animal can be a dog or a cat, but not
both at the same time.

For prompt safety classification, the response includes only two
classes (SAFE_PROMPT and UNSAFE_PROMPT), along with a confidence score
for each class. The value range of the score is zero to one, where one
is the highest confidence.


=head2 DocumentMetadata => L<Paws::Comprehend::DocumentMetadata>

Extraction information about the document. This field is present in the
response only if your request includes the C<Byte> parameter.


=head2 DocumentType => ArrayRef[L<Paws::Comprehend::DocumentTypeListItem>]

The document type for each page in the input document. This field is
present in the response only if your request includes the C<Byte>
parameter.


=head2 Errors => ArrayRef[L<Paws::Comprehend::ErrorsListItem>]

Page-level errors that the system detected while processing the input
document. The field is empty if the system encountered no errors.


=head2 Labels => ArrayRef[L<Paws::Comprehend::DocumentLabel>]

The labels used in the document being analyzed. These are used for
multi-label trained models. Individual labels represent different
categories that are related in some manner and are not mutually
exclusive. For example, a movie can be just an action movie, or it can
be an action movie, a science fiction movie, and a comedy, all at the
same time.


=head2 Warnings => ArrayRef[L<Paws::Comprehend::WarningsListItem>]

Warnings detected while processing the input document. The response
includes a warning if there is a mismatch between the input document
type and the model type associated with the endpoint that you
specified. The response can also include warnings for individual pages
that have a mismatch.

The field is empty if the system generated no warnings.


=head2 _request_id => Str


=cut

1;