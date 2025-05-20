
package Paws::MedicalImaging::ListDICOMImportJobsResponse;
  use Moose;
  has JobSummaries => (is => 'ro', isa => 'ArrayRef[Paws::MedicalImaging::DICOMImportJobSummary]', traits => ['NameInRequest'], request_name => 'jobSummaries', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::ListDICOMImportJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobSummaries => ArrayRef[L<Paws::MedicalImaging::DICOMImportJobSummary>]

A list of job summaries.


=head2 NextToken => Str

The pagination token used to retrieve the list of import jobs on the
next page.


=head2 _request_id => Str


=cut

