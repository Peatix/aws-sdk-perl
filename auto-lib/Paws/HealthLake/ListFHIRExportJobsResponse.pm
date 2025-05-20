
package Paws::HealthLake::ListFHIRExportJobsResponse;
  use Moose;
  has ExportJobPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::HealthLake::ExportJobProperties]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::ListFHIRExportJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportJobPropertiesList => ArrayRef[L<Paws::HealthLake::ExportJobProperties>]

The properties of listed FHIR export jobs, including the ID, ARN, name,
and the status of the job.


=head2 NextToken => Str

A pagination token used to identify the next page of results to return
for a ListFHIRExportJobs query.


=head2 _request_id => Str


=cut

1;