
package Paws::QBusiness::BatchPutDocumentResponse;
  use Moose;
  has FailedDocuments => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::FailedDocument]', traits => ['NameInRequest'], request_name => 'failedDocuments');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::BatchPutDocumentResponse

=head1 ATTRIBUTES


=head2 FailedDocuments => ArrayRef[L<Paws::QBusiness::FailedDocument>]

A list of documents that were not added to the Amazon Q Business index
because the document failed a validation check. Each document contains
an error message that indicates why the document couldn't be added to
the index.


=head2 _request_id => Str


=cut

