
package Paws::Forecast::DescribeWhatIfAnalysis;
  use Moose;
  has WhatIfAnalysisArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWhatIfAnalysis');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::DescribeWhatIfAnalysisResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribeWhatIfAnalysis - Arguments for method DescribeWhatIfAnalysis on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWhatIfAnalysis on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method DescribeWhatIfAnalysis.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWhatIfAnalysis.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $DescribeWhatIfAnalysisResponse = $forecast->DescribeWhatIfAnalysis(
      WhatIfAnalysisArn => 'MyArn',

    );

    # Results:
    my $CreationTime = $DescribeWhatIfAnalysisResponse->CreationTime;
    my $EstimatedTimeRemainingInMinutes =
      $DescribeWhatIfAnalysisResponse->EstimatedTimeRemainingInMinutes;
    my $ForecastArn = $DescribeWhatIfAnalysisResponse->ForecastArn;
    my $LastModificationTime =
      $DescribeWhatIfAnalysisResponse->LastModificationTime;
    my $Message = $DescribeWhatIfAnalysisResponse->Message;
    my $Status  = $DescribeWhatIfAnalysisResponse->Status;
    my $TimeSeriesSelector =
      $DescribeWhatIfAnalysisResponse->TimeSeriesSelector;
    my $WhatIfAnalysisArn = $DescribeWhatIfAnalysisResponse->WhatIfAnalysisArn;
    my $WhatIfAnalysisName =
      $DescribeWhatIfAnalysisResponse->WhatIfAnalysisName;

    # Returns a L<Paws::Forecast::DescribeWhatIfAnalysisResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/DescribeWhatIfAnalysis>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WhatIfAnalysisArn => Str

The Amazon Resource Name (ARN) of the what-if analysis that you are
interested in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWhatIfAnalysis in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

