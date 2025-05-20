
package Paws::Omics::ListVariantImportJobsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has VariantImportJobs => (is => 'ro', isa => 'ArrayRef[Paws::Omics::VariantImportJobItem]', traits => ['NameInRequest'], request_name => 'variantImportJobs');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListVariantImportJobsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A pagination token that's included if more results are available.


=head2 VariantImportJobs => ArrayRef[L<Paws::Omics::VariantImportJobItem>]

A list of jobs.


=head2 _request_id => Str


=cut

