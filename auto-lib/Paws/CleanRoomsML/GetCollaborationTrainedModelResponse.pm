
package Paws::CleanRoomsML::GetCollaborationTrainedModelResponse;
  use Moose;
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'collaborationIdentifier', required => 1);
  has ConfiguredModelAlgorithmAssociationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'configuredModelAlgorithmAssociationArn', required => 1);
  has CreateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createTime', required => 1);
  has CreatorAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creatorAccountId', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has LogsStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logsStatus');
  has LogsStatusDetails => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'logsStatusDetails');
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'membershipIdentifier', required => 1);
  has MetricsStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricsStatus');
  has MetricsStatusDetails => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'metricsStatusDetails');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ResourceConfig => (is => 'ro', isa => 'Paws::CleanRoomsML::ResourceConfig', traits => ['NameInRequest'], request_name => 'resourceConfig');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusDetails => (is => 'ro', isa => 'Paws::CleanRoomsML::StatusDetails', traits => ['NameInRequest'], request_name => 'statusDetails');
  has StoppingCondition => (is => 'ro', isa => 'Paws::CleanRoomsML::StoppingCondition', traits => ['NameInRequest'], request_name => 'stoppingCondition');
  has TrainedModelArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainedModelArn', required => 1);
  has TrainingContainerImageDigest => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'trainingContainerImageDigest');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetCollaborationTrainedModelResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationIdentifier => Str

The collaboration ID of the collaboration that contains the trained
model.


=head2 B<REQUIRED> ConfiguredModelAlgorithmAssociationArn => Str

The Amazon Resource Name (ARN) of the configured model algorithm
association that was used to create this trained model.


=head2 B<REQUIRED> CreateTime => Str

The time at which the trained model was created.


=head2 B<REQUIRED> CreatorAccountId => Str

The account ID of the member that created the trained model.


=head2 Description => Str

The description of the trained model.


=head2 LogsStatus => Str

Status information for the logs.

Valid values are: C<"PUBLISH_SUCCEEDED">, C<"PUBLISH_FAILED">
=head2 LogsStatusDetails => Str

Details about the status information for the logs.


=head2 B<REQUIRED> MembershipIdentifier => Str

The membership ID of the member that created the trained model.


=head2 MetricsStatus => Str

The status of the model metrics.

Valid values are: C<"PUBLISH_SUCCEEDED">, C<"PUBLISH_FAILED">
=head2 MetricsStatusDetails => Str

Details about the status information for the model metrics.


=head2 B<REQUIRED> Name => Str

The name of the trained model.


=head2 ResourceConfig => L<Paws::CleanRoomsML::ResourceConfig>

The EC2 resource configuration that was used to train this model.


=head2 B<REQUIRED> Status => Str

The status of the trained model.

Valid values are: C<"CREATE_PENDING">, C<"CREATE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"ACTIVE">, C<"DELETE_PENDING">, C<"DELETE_IN_PROGRESS">, C<"DELETE_FAILED">, C<"INACTIVE">, C<"CANCEL_PENDING">, C<"CANCEL_IN_PROGRESS">, C<"CANCEL_FAILED">
=head2 StatusDetails => L<Paws::CleanRoomsML::StatusDetails>




=head2 StoppingCondition => L<Paws::CleanRoomsML::StoppingCondition>

The stopping condition that determined when model training ended.


=head2 B<REQUIRED> TrainedModelArn => Str

The Amazon Resource Name (ARN) of the trained model.


=head2 TrainingContainerImageDigest => Str

Information about the training container image.


=head2 B<REQUIRED> UpdateTime => Str

The most recent time at which the trained model was updated.


=head2 _request_id => Str


=cut

