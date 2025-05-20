
package Paws::MedicalImaging::StartDICOMImportJobResponse;
  use Moose;
  has DatastoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'datastoreId', required => 1);
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId', required => 1);
  has JobStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobStatus', required => 1);
  has SubmittedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'submittedAt', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MedicalImaging::StartDICOMImportJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DatastoreId => Str

The data store identifier.


=head2 B<REQUIRED> JobId => Str

The import job identifier.


=head2 B<REQUIRED> JobStatus => Str

The import job status.

Valid values are: C<"SUBMITTED">, C<"IN_PROGRESS">, C<"COMPLETED">, C<"FAILED">
=head2 B<REQUIRED> SubmittedAt => Str

The timestamp when the import job was submitted.


=head2 _request_id => Str


=cut

