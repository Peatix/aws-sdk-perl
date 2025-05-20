
package Paws::Omics::ListReferenceImportJobsResponse;
  use Moose;
  has ImportJobs => (is => 'ro', isa => 'ArrayRef[Paws::Omics::ImportReferenceJobItem]', traits => ['NameInRequest'], request_name => 'importJobs');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListReferenceImportJobsResponse

=head1 ATTRIBUTES


=head2 ImportJobs => ArrayRef[L<Paws::Omics::ImportReferenceJobItem>]

A lis of jobs.


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 _request_id => Str


=cut

