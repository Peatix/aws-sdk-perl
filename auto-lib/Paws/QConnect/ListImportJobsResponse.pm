
package Paws::QConnect::ListImportJobsResponse;
  use Moose;
  has ImportJobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::ImportJobSummary]', traits => ['NameInRequest'], request_name => 'importJobSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::ListImportJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportJobSummaries => ArrayRef[L<Paws::QConnect::ImportJobSummary>]

Summary information about the import jobs.


=head2 NextToken => Str

The token for the next set of results. Use the value returned in the
previous response in the next request to retrieve the next set of
results.


=head2 _request_id => Str


=cut

