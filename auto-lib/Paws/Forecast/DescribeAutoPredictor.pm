
package Paws::Forecast::DescribeAutoPredictor;
  use Moose;
  has PredictorArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeAutoPredictor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::DescribeAutoPredictorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribeAutoPredictor - Arguments for method DescribeAutoPredictor on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeAutoPredictor on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method DescribeAutoPredictor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeAutoPredictor.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $DescribeAutoPredictorResponse = $forecast->DescribeAutoPredictor(
      PredictorArn => 'MyArn',

    );

    # Results:
    my $CreationTime = $DescribeAutoPredictorResponse->CreationTime;
    my $DataConfig   = $DescribeAutoPredictorResponse->DataConfig;
    my $DatasetImportJobArns =
      $DescribeAutoPredictorResponse->DatasetImportJobArns;
    my $EncryptionConfig = $DescribeAutoPredictorResponse->EncryptionConfig;
    my $EstimatedTimeRemainingInMinutes =
      $DescribeAutoPredictorResponse->EstimatedTimeRemainingInMinutes;
    my $ExplainabilityInfo = $DescribeAutoPredictorResponse->ExplainabilityInfo;
    my $ForecastDimensions = $DescribeAutoPredictorResponse->ForecastDimensions;
    my $ForecastFrequency  = $DescribeAutoPredictorResponse->ForecastFrequency;
    my $ForecastHorizon    = $DescribeAutoPredictorResponse->ForecastHorizon;
    my $ForecastTypes      = $DescribeAutoPredictorResponse->ForecastTypes;
    my $LastModificationTime =
      $DescribeAutoPredictorResponse->LastModificationTime;
    my $Message            = $DescribeAutoPredictorResponse->Message;
    my $MonitorInfo        = $DescribeAutoPredictorResponse->MonitorInfo;
    my $OptimizationMetric = $DescribeAutoPredictorResponse->OptimizationMetric;
    my $PredictorArn       = $DescribeAutoPredictorResponse->PredictorArn;
    my $PredictorName      = $DescribeAutoPredictorResponse->PredictorName;
    my $ReferencePredictorSummary =
      $DescribeAutoPredictorResponse->ReferencePredictorSummary;
    my $Status = $DescribeAutoPredictorResponse->Status;
    my $TimeAlignmentBoundary =
      $DescribeAutoPredictorResponse->TimeAlignmentBoundary;

    # Returns a L<Paws::Forecast::DescribeAutoPredictorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/DescribeAutoPredictor>

=head1 ATTRIBUTES


=head2 B<REQUIRED> PredictorArn => Str

The Amazon Resource Name (ARN) of the predictor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeAutoPredictor in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

