
package Paws::EntityResolution::GetIdMappingJobOutput;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime');
  has ErrorDetails => (is => 'ro', isa => 'Paws::EntityResolution::ErrorDetails', traits => ['NameInRequest'], request_name => 'errorDetails');
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId', required => 1);
  has Metrics => (is => 'ro', isa => 'Paws::EntityResolution::IdMappingJobMetrics', traits => ['NameInRequest'], request_name => 'metrics');
  has OutputSourceConfig => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::IdMappingJobOutputSource]', traits => ['NameInRequest'], request_name => 'outputSourceConfig');
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::GetIdMappingJobOutput

=head1 ATTRIBUTES


=head2 EndTime => Str

The time at which the job has finished.


=head2 ErrorDetails => L<Paws::EntityResolution::ErrorDetails>




=head2 B<REQUIRED> JobId => Str

The ID of the job.


=head2 Metrics => L<Paws::EntityResolution::IdMappingJobMetrics>

Metrics associated with the execution, specifically total records
processed, unique IDs generated, and records the execution skipped.


=head2 OutputSourceConfig => ArrayRef[L<Paws::EntityResolution::IdMappingJobOutputSource>]

A list of C<OutputSource> objects.


=head2 B<REQUIRED> StartTime => Str

The time at which the job was started.


=head2 B<REQUIRED> Status => Str

The current status of the job.

Valid values are: C<"RUNNING">, C<"SUCCEEDED">, C<"FAILED">, C<"QUEUED">
=head2 _request_id => Str


=cut

