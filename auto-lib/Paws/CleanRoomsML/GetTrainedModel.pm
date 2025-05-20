
package Paws::CleanRoomsML::GetTrainedModel;
  use Moose;
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has TrainedModelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'trainedModelArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTrainedModel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/trained-models/{trainedModelArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::GetTrainedModelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetTrainedModel - Arguments for method GetTrainedModel on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTrainedModel on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method GetTrainedModel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTrainedModel.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $GetTrainedModelResponse = $cleanrooms -ml->GetTrainedModel(
      MembershipIdentifier => 'MyUUID',
      TrainedModelArn      => 'MyTrainedModelArn',

    );

    # Results:
    my $CollaborationIdentifier =
      $GetTrainedModelResponse->CollaborationIdentifier;
    my $ConfiguredModelAlgorithmAssociationArn =
      $GetTrainedModelResponse->ConfiguredModelAlgorithmAssociationArn;
    my $CreateTime           = $GetTrainedModelResponse->CreateTime;
    my $DataChannels         = $GetTrainedModelResponse->DataChannels;
    my $Description          = $GetTrainedModelResponse->Description;
    my $Environment          = $GetTrainedModelResponse->Environment;
    my $Hyperparameters      = $GetTrainedModelResponse->Hyperparameters;
    my $KmsKeyArn            = $GetTrainedModelResponse->KmsKeyArn;
    my $LogsStatus           = $GetTrainedModelResponse->LogsStatus;
    my $LogsStatusDetails    = $GetTrainedModelResponse->LogsStatusDetails;
    my $MembershipIdentifier = $GetTrainedModelResponse->MembershipIdentifier;
    my $MetricsStatus        = $GetTrainedModelResponse->MetricsStatus;
    my $MetricsStatusDetails = $GetTrainedModelResponse->MetricsStatusDetails;
    my $Name                 = $GetTrainedModelResponse->Name;
    my $ResourceConfig       = $GetTrainedModelResponse->ResourceConfig;
    my $Status               = $GetTrainedModelResponse->Status;
    my $StatusDetails        = $GetTrainedModelResponse->StatusDetails;
    my $StoppingCondition    = $GetTrainedModelResponse->StoppingCondition;
    my $Tags                 = $GetTrainedModelResponse->Tags;
    my $TrainedModelArn      = $GetTrainedModelResponse->TrainedModelArn;
    my $TrainingContainerImageDigest =
      $GetTrainedModelResponse->TrainingContainerImageDigest;
    my $UpdateTime = $GetTrainedModelResponse->UpdateTime;

    # Returns a L<Paws::CleanRoomsML::GetTrainedModelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/GetTrainedModel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MembershipIdentifier => Str

The membership ID of the member that created the trained model that you
are interested in.



=head2 B<REQUIRED> TrainedModelArn => Str

The Amazon Resource Name (ARN) of the trained model that you are
interested in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTrainedModel in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

