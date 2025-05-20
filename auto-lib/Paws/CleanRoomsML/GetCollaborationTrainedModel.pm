
package Paws::CleanRoomsML::GetCollaborationTrainedModel;
  use Moose;
  has CollaborationIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'collaborationIdentifier', required => 1);
  has TrainedModelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'trainedModelArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCollaborationTrainedModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/collaborations/{collaborationIdentifier}/trained-models/{trainedModelArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::GetCollaborationTrainedModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetCollaborationTrainedModel - Arguments for method GetCollaborationTrainedModel on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCollaborationTrainedModel on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method GetCollaborationTrainedModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCollaborationTrainedModel.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $GetCollaborationTrainedModelResponse =
      $cleanrooms -ml->GetCollaborationTrainedModel(
      CollaborationIdentifier => 'MyUUID',
      TrainedModelArn         => 'MyTrainedModelArn',

      );

    # Results:
    my $CollaborationIdentifier =
      $GetCollaborationTrainedModelResponse->CollaborationIdentifier;
    my $ConfiguredModelAlgorithmAssociationArn =
      $GetCollaborationTrainedModelResponse
      ->ConfiguredModelAlgorithmAssociationArn;
    my $CreateTime = $GetCollaborationTrainedModelResponse->CreateTime;
    my $CreatorAccountId =
      $GetCollaborationTrainedModelResponse->CreatorAccountId;
    my $Description = $GetCollaborationTrainedModelResponse->Description;
    my $LogsStatus  = $GetCollaborationTrainedModelResponse->LogsStatus;
    my $LogsStatusDetails =
      $GetCollaborationTrainedModelResponse->LogsStatusDetails;
    my $MembershipIdentifier =
      $GetCollaborationTrainedModelResponse->MembershipIdentifier;
    my $MetricsStatus = $GetCollaborationTrainedModelResponse->MetricsStatus;
    my $MetricsStatusDetails =
      $GetCollaborationTrainedModelResponse->MetricsStatusDetails;
    my $Name           = $GetCollaborationTrainedModelResponse->Name;
    my $ResourceConfig = $GetCollaborationTrainedModelResponse->ResourceConfig;
    my $Status         = $GetCollaborationTrainedModelResponse->Status;
    my $StatusDetails  = $GetCollaborationTrainedModelResponse->StatusDetails;
    my $StoppingCondition =
      $GetCollaborationTrainedModelResponse->StoppingCondition;
    my $TrainedModelArn =
      $GetCollaborationTrainedModelResponse->TrainedModelArn;
    my $TrainingContainerImageDigest =
      $GetCollaborationTrainedModelResponse->TrainingContainerImageDigest;
    my $UpdateTime = $GetCollaborationTrainedModelResponse->UpdateTime;

 # Returns a L<Paws::CleanRoomsML::GetCollaborationTrainedModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/GetCollaborationTrainedModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollaborationIdentifier => Str

The collaboration ID that contains the trained model that you want to
return information about.



=head2 B<REQUIRED> TrainedModelArn => Str

The Amazon Resource Name (ARN) of the trained model that you want to
return information about.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCollaborationTrainedModel in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

