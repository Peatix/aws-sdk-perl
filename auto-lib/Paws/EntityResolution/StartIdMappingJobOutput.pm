
package Paws::EntityResolution::StartIdMappingJobOutput;
  use Moose;
  has JobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobId', required => 1);
  has OutputSourceConfig => (is => 'ro', isa => 'ArrayRef[Paws::EntityResolution::IdMappingJobOutputSource]', traits => ['NameInRequest'], request_name => 'outputSourceConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EntityResolution::StartIdMappingJobOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobId => Str

The ID of the job.


=head2 OutputSourceConfig => ArrayRef[L<Paws::EntityResolution::IdMappingJobOutputSource>]

A list of C<OutputSource> objects.


=head2 _request_id => Str


=cut

