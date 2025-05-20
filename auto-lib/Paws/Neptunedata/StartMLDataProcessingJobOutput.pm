
package Paws::Neptunedata::StartMLDataProcessingJobOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreationTimeInMillis => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'creationTimeInMillis');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::StartMLDataProcessingJobOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the data processing job.


=head2 CreationTimeInMillis => Int

The time it took to create the new processing job, in milliseconds.


=head2 Id => Str

The unique ID of the new data processing job.


=head2 _request_id => Str


=cut

