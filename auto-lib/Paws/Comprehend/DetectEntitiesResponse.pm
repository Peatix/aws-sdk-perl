
package Paws::Comprehend::DetectEntitiesResponse;
  use Moose;
  has Blocks => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::Block]');
  has DocumentMetadata => (is => 'ro', isa => 'Paws::Comprehend::DocumentMetadata');
  has DocumentType => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::DocumentTypeListItem]');
  has Entities => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::Entity]');
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Comprehend::ErrorsListItem]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Comprehend::DetectEntitiesResponse

=head1 ATTRIBUTES


=head2 Blocks => ArrayRef[L<Paws::Comprehend::Block>]

Information about each block of text in the input document. Blocks are
nested. A page block contains a block for each line of text, which
contains a block for each word.

The C<Block> content for a Word input document does not include a
C<Geometry> field.

The C<Block> field is not present in the response for plain-text
inputs.


=head2 DocumentMetadata => L<Paws::Comprehend::DocumentMetadata>

Information about the document, discovered during text extraction. This
field is present in the response only if your request used the C<Byte>
parameter.


=head2 DocumentType => ArrayRef[L<Paws::Comprehend::DocumentTypeListItem>]

The document type for each page in the input document. This field is
present in the response only if your request used the C<Byte>
parameter.


=head2 Entities => ArrayRef[L<Paws::Comprehend::Entity>]

A collection of entities identified in the input text. For each entity,
the response provides the entity text, entity type, where the entity
text begins and ends, and the level of confidence that Amazon
Comprehend has in the detection.

If your request uses a custom entity recognition model, Amazon
Comprehend detects the entities that the model is trained to recognize.
Otherwise, it detects the default entity types. For a list of default
entity types, see Entities
(https://docs.aws.amazon.com/comprehend/latest/dg/how-entities.html) in
the Comprehend Developer Guide.


=head2 Errors => ArrayRef[L<Paws::Comprehend::ErrorsListItem>]

Page-level errors that the system detected while processing the input
document. The field is empty if the system encountered no errors.


=head2 _request_id => Str


=cut

1;