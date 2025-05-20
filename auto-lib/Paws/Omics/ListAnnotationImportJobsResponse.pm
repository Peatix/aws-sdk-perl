
package Paws::Omics::ListAnnotationImportJobsResponse;
  use Moose;
  has AnnotationImportJobs => (is => 'ro', isa => 'ArrayRef[Paws::Omics::AnnotationImportJobItem]', traits => ['NameInRequest'], request_name => 'annotationImportJobs');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::ListAnnotationImportJobsResponse

=head1 ATTRIBUTES


=head2 AnnotationImportJobs => ArrayRef[L<Paws::Omics::AnnotationImportJobItem>]

A list of jobs.


=head2 NextToken => Str

Specifies the pagination token from a previous request to retrieve the
next page of results.


=head2 _request_id => Str


=cut

