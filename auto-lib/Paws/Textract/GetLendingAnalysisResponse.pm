
package Paws::Textract::GetLendingAnalysisResponse;
  use Moose;
  has AnalyzeLendingModelVersion => (is => 'ro', isa => 'Str');
  has DocumentMetadata => (is => 'ro', isa => 'Paws::Textract::DocumentMetadata');
  has JobStatus => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::Textract::LendingResult]');
  has StatusMessage => (is => 'ro', isa => 'Str');
  has Warnings => (is => 'ro', isa => 'ArrayRef[Paws::Textract::Warning]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Textract::GetLendingAnalysisResponse

=head1 ATTRIBUTES


=head2 AnalyzeLendingModelVersion => Str

The current model version of the Analyze Lending API.


=head2 DocumentMetadata => L<Paws::Textract::DocumentMetadata>




=head2 JobStatus => Str

The current status of the lending analysis job.

Valid values are: C<"IN_PROGRESS">, C<"SUCCEEDED">, C<"FAILED">, C<"PARTIAL_SUCCESS">
=head2 NextToken => Str

If the response is truncated, Amazon Textract returns this token. You
can use this token in the subsequent request to retrieve the next set
of lending results.


=head2 Results => ArrayRef[L<Paws::Textract::LendingResult>]

Holds the information returned by one of AmazonTextract's document
analysis operations for the pinstripe.


=head2 StatusMessage => Str

Returns if the lending analysis job could not be completed. Contains
explanation for what error occurred.


=head2 Warnings => ArrayRef[L<Paws::Textract::Warning>]

A list of warnings that occurred during the lending analysis operation.


=head2 _request_id => Str


=cut

1;