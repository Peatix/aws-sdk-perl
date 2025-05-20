
package Paws::CleanRoomsML::GetAudienceModelResponse;
  use Moose;
  has AudienceModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'audienceModelArn', required => 1);
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has KmsKeyArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyArn');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusDetails => (is => 'ro', isa => 'Paws::CleanRoomsML::StatusDetails', traits => ['NameInRequest'], request_name => 'statusDetails');
  has Tags => (is => 'ro', isa => 'Paws::CleanRoomsML::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has TrainingDataEndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainingDataEndTime');
  has TrainingDatasetArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainingDatasetArn', required => 1);
  has TrainingDataStartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainingDataStartTime');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetAudienceModelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AudienceModelArn => Str

The Amazon Resource Name (ARN) of the audience model.


=head2 B<REQUIRED> CreateTime => Str

The time at which the audience model was created.


=head2 Description => Str

The description of the audience model.


=head2 KmsKeyArn => Str

The KMS key ARN used for the audience model.


=head2 B<REQUIRED> Name => Str

The name of the audience model.


=head2 B<REQUIRED> Status => Str

The status of the audience model.

Valid values are: C<"CREATE_PENDING">, C<"CREATE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"ACTIVE">, C<"DELETE_PENDING">, C<"DELETE_IN_PROGRESS">, C<"DELETE_FAILED">
=head2 StatusDetails => L<Paws::CleanRoomsML::StatusDetails>

Details about the status of the audience model.


=head2 Tags => L<Paws::CleanRoomsML::TagMap>

The tags that are assigned to the audience model.


=head2 TrainingDataEndTime => Str

The end date specified for the training window.


=head2 B<REQUIRED> TrainingDatasetArn => Str

The Amazon Resource Name (ARN) of the training dataset that was used
for this audience model.


=head2 TrainingDataStartTime => Str

The start date specified for the training window.


=head2 B<REQUIRED> UpdateTime => Str

The most recent time at which the audience model was updated.


=head2 _request_id => Str


=cut

