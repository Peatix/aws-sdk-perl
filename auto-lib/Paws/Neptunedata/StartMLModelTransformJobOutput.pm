
package Paws::Neptunedata::StartMLModelTransformJobOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreationTimeInMillis => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'creationTimeInMillis');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::StartMLModelTransformJobOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the model transform job.


=head2 CreationTimeInMillis => Int

The creation time of the model transform job, in milliseconds.


=head2 Id => Str

The unique ID of the new model transform job.


=head2 _request_id => Str


=cut

