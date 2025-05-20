
package Paws::FraudDetector::GetBatchImportJobsResult;
  use Moose;
  has BatchImports => (is => 'ro', isa => 'ArrayRef[Paws::FraudDetector::BatchImport]', traits => ['NameInRequest'], request_name => 'batchImports' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FraudDetector::GetBatchImportJobsResult

=head1 ATTRIBUTES


=head2 BatchImports => ArrayRef[L<Paws::FraudDetector::BatchImport>]

An array containing the details of each batch import job.


=head2 NextToken => Str

The next token for the subsequent resquest.


=head2 _request_id => Str


=cut

1;