
package Paws::DataZone::GetJobRunOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CreatedBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdBy');
  has Details => (is => 'ro', isa => 'Paws::DataZone::JobRunDetails', traits => ['NameInRequest'], request_name => 'details');
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId');
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has Error => (is => 'ro', isa => 'Paws::DataZone::JobRunError', traits => ['NameInRequest'], request_name => 'error');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId');
  has JobType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobType');
  has RunMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'runMode');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetJobRunOutput

=head1 ATTRIBUTES


=head2 CreatedAt => Str

The timestamp of when the job run was created.


=head2 CreatedBy => Str

The user who created the job run.


=head2 Details => L<Paws::DataZone::JobRunDetails>

The details of the job run.


=head2 DomainId => Str

The ID of the domain.


=head2 EndTime => Str

The timestamp of when the job run ended.


=head2 Error => L<Paws::DataZone::JobRunError>

The error generated if the action is not completed successfully.


=head2 Id => Str

The ID of the job run.


=head2 JobId => Str

The ID of the job run.


=head2 JobType => Str

The type of the job run.

Valid values are: C<"LINEAGE">
=head2 RunMode => Str

The mode of the job run.

Valid values are: C<"SCHEDULED">, C<"ON_DEMAND">
=head2 StartTime => Str

The timestamp of when the job run started.


=head2 Status => Str

The status of the job run.

Valid values are: C<"SCHEDULED">, C<"IN_PROGRESS">, C<"SUCCESS">, C<"PARTIALLY_SUCCEEDED">, C<"FAILED">, C<"ABORTED">, C<"TIMED_OUT">, C<"CANCELED">
=head2 _request_id => Str


=cut

