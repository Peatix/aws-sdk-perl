
package Paws::CleanRoomsML::GetTrainedModelInferenceJob;
  use Moose;
  has MembershipIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'membershipIdentifier', required => 1);
  has TrainedModelInferenceJobArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'trainedModelInferenceJobArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetTrainedModelInferenceJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/memberships/{membershipIdentifier}/trained-model-inference-jobs/{trainedModelInferenceJobArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRoomsML::GetTrainedModelInferenceJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRoomsML::GetTrainedModelInferenceJob - Arguments for method GetTrainedModelInferenceJob on L<Paws::CleanRoomsML>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetTrainedModelInferenceJob on the
L<AWS Clean Rooms ML|Paws::CleanRoomsML> service. Use the attributes of this class
as arguments to method GetTrainedModelInferenceJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetTrainedModelInferenceJob.

=head1 SYNOPSIS

    my $cleanrooms-ml = Paws->service('CleanRoomsML');
    my $GetTrainedModelInferenceJobResponse =
      $cleanrooms -ml->GetTrainedModelInferenceJob(
      MembershipIdentifier        => 'MyUUID',
      TrainedModelInferenceJobArn => 'MyTrainedModelInferenceJobArn',

      );

    # Results:
    my $ConfiguredModelAlgorithmAssociationArn =
      $GetTrainedModelInferenceJobResponse
      ->ConfiguredModelAlgorithmAssociationArn;
    my $ContainerExecutionParameters =
      $GetTrainedModelInferenceJobResponse->ContainerExecutionParameters;
    my $CreateTime  = $GetTrainedModelInferenceJobResponse->CreateTime;
    my $DataSource  = $GetTrainedModelInferenceJobResponse->DataSource;
    my $Description = $GetTrainedModelInferenceJobResponse->Description;
    my $Environment = $GetTrainedModelInferenceJobResponse->Environment;
    my $InferenceContainerImageDigest =
      $GetTrainedModelInferenceJobResponse->InferenceContainerImageDigest;
    my $KmsKeyArn  = $GetTrainedModelInferenceJobResponse->KmsKeyArn;
    my $LogsStatus = $GetTrainedModelInferenceJobResponse->LogsStatus;
    my $LogsStatusDetails =
      $GetTrainedModelInferenceJobResponse->LogsStatusDetails;
    my $MembershipIdentifier =
      $GetTrainedModelInferenceJobResponse->MembershipIdentifier;
    my $MetricsStatus = $GetTrainedModelInferenceJobResponse->MetricsStatus;
    my $MetricsStatusDetails =
      $GetTrainedModelInferenceJobResponse->MetricsStatusDetails;
    my $Name = $GetTrainedModelInferenceJobResponse->Name;
    my $OutputConfiguration =
      $GetTrainedModelInferenceJobResponse->OutputConfiguration;
    my $ResourceConfig  = $GetTrainedModelInferenceJobResponse->ResourceConfig;
    my $Status          = $GetTrainedModelInferenceJobResponse->Status;
    my $StatusDetails   = $GetTrainedModelInferenceJobResponse->StatusDetails;
    my $Tags            = $GetTrainedModelInferenceJobResponse->Tags;
    my $TrainedModelArn = $GetTrainedModelInferenceJobResponse->TrainedModelArn;
    my $TrainedModelInferenceJobArn =
      $GetTrainedModelInferenceJobResponse->TrainedModelInferenceJobArn;
    my $UpdateTime = $GetTrainedModelInferenceJobResponse->UpdateTime;

  # Returns a L<Paws::CleanRoomsML::GetTrainedModelInferenceJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms-ml/GetTrainedModelInferenceJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> MembershipIdentifier => Str

Provides the membership ID of the membership that contains the trained
model inference job that you are interested in.



=head2 B<REQUIRED> TrainedModelInferenceJobArn => Str

Provides the Amazon Resource Name (ARN) of the trained model inference
job that you are interested in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetTrainedModelInferenceJob in L<Paws::CleanRoomsML>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

