
package Paws::CleanRoomsML::GetTrainingDatasetResponse;
  use Moose;
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'roleArn', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::CleanRoomsML::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TrainingData => (is => 'ro', isa => 'ArrayRef[Paws::CleanRoomsML::Dataset]', traits => ['NameInRequest'], request_name => 'trainingData', required => 1);
  has TrainingDatasetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainingDatasetArn', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetTrainingDatasetResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreateTime => Str

The time at which the training dataset was created.


=head2 Description => Str

The description of the training dataset.


=head2 B<REQUIRED> Name => Str

The name of the training dataset.


=head2 B<REQUIRED> RoleArn => Str

The IAM role used to read the training data.


=head2 B<REQUIRED> Status => Str

The status of the training dataset.

Valid values are: C<"ACTIVE">
=head2 Tags => L<Paws::CleanRoomsML::TagMap>

The tags that are assigned to this training dataset.


=head2 B<REQUIRED> TrainingData => ArrayRef[L<Paws::CleanRoomsML::Dataset>]

Metadata about the requested training data.


=head2 B<REQUIRED> TrainingDatasetArn => Str

The Amazon Resource Name (ARN) of the training dataset.


=head2 B<REQUIRED> UpdateTime => Str

The most recent time at which the training dataset was updated.


=head2 _request_id => Str


=cut

