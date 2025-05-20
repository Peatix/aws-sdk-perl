
package Paws::HealthLake::ListFHIRImportJobsResponse;
  use Moose;
  has ImportJobPropertiesList => (is => 'ro', isa => 'ArrayRef[Paws::HealthLake::ImportJobProperties]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::HealthLake::ListFHIRImportJobsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportJobPropertiesList => ArrayRef[L<Paws::HealthLake::ImportJobProperties>]

The properties of a listed FHIR import jobs, including the ID, ARN,
name, the status of the job, and the progress report of the job.


=head2 NextToken => Str

A pagination token used to identify the next page of results to return
for a ListFHIRImportJobs query.


=head2 _request_id => Str


=cut

1;