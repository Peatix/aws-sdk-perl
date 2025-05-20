
package Paws::Textract::AnalyzeExpenseResponse;
  use Moose;
  has DocumentMetadata => (is => 'ro', isa => 'Paws::Textract::DocumentMetadata');
  has ExpenseDocuments => (is => 'ro', isa => 'ArrayRef[Paws::Textract::ExpenseDocument]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Textract::AnalyzeExpenseResponse

=head1 ATTRIBUTES


=head2 DocumentMetadata => L<Paws::Textract::DocumentMetadata>




=head2 ExpenseDocuments => ArrayRef[L<Paws::Textract::ExpenseDocument>]

The expenses detected by Amazon Textract.


=head2 _request_id => Str


=cut

1;