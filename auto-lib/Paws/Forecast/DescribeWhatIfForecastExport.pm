
package Paws::Forecast::DescribeWhatIfForecastExport;
  use Moose;
  has WhatIfForecastExportArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeWhatIfForecastExport');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::DescribeWhatIfForecastExportResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribeWhatIfForecastExport - Arguments for method DescribeWhatIfForecastExport on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeWhatIfForecastExport on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method DescribeWhatIfForecastExport.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeWhatIfForecastExport.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $DescribeWhatIfForecastExportResponse =
      $forecast->DescribeWhatIfForecastExport(
      WhatIfForecastExportArn => 'MyLongArn',

      );

    # Results:
    my $CreationTime = $DescribeWhatIfForecastExportResponse->CreationTime;
    my $Destination  = $DescribeWhatIfForecastExportResponse->Destination;
    my $EstimatedTimeRemainingInMinutes =
      $DescribeWhatIfForecastExportResponse->EstimatedTimeRemainingInMinutes;
    my $Format = $DescribeWhatIfForecastExportResponse->Format;
    my $LastModificationTime =
      $DescribeWhatIfForecastExportResponse->LastModificationTime;
    my $Message = $DescribeWhatIfForecastExportResponse->Message;
    my $Status  = $DescribeWhatIfForecastExportResponse->Status;
    my $WhatIfForecastArns =
      $DescribeWhatIfForecastExportResponse->WhatIfForecastArns;
    my $WhatIfForecastExportArn =
      $DescribeWhatIfForecastExportResponse->WhatIfForecastExportArn;
    my $WhatIfForecastExportName =
      $DescribeWhatIfForecastExportResponse->WhatIfForecastExportName;

    # Returns a L<Paws::Forecast::DescribeWhatIfForecastExportResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/DescribeWhatIfForecastExport>

=head1 ATTRIBUTES


=head2 B<REQUIRED> WhatIfForecastExportArn => Str

The Amazon Resource Name (ARN) of the what-if forecast export that you
are interested in.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeWhatIfForecastExport in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

