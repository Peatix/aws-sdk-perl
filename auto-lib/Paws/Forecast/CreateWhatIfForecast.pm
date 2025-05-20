
package Paws::Forecast::CreateWhatIfForecast;
  use Moose;
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::Tag]');
  has TimeSeriesReplacementsDataSource => (is => 'ro', isa => 'Paws::Forecast::TimeSeriesReplacementsDataSource');
  has TimeSeriesTransformations => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::TimeSeriesTransformation]');
  has WhatIfAnalysisArn => (is => 'ro', isa => 'Str', required => 1);
  has WhatIfForecastName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWhatIfForecast');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::CreateWhatIfForecastResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateWhatIfForecast - Arguments for method CreateWhatIfForecast on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWhatIfForecast on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method CreateWhatIfForecast.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWhatIfForecast.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $CreateWhatIfForecastResponse = $forecast->CreateWhatIfForecast(
      WhatIfAnalysisArn  => 'MyArn',
      WhatIfForecastName => 'MyName',
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TimeSeriesReplacementsDataSource => {
        S3Config => {
          Path      => 'MyS3Path',       # min: 7, max: 4096
          RoleArn   => 'MyArn',          # max: 256
          KMSKeyArn => 'MyKMSKeyArn',    # max: 256; OPTIONAL
        },
        Schema => {
          Attributes => [
            {
              AttributeName => 'MyName',    # min: 1, max: 63
              AttributeType => 'string'
              , # values: string, integer, float, timestamp, geolocation; OPTIONAL
            },
            ...
          ],    # min: 1, max: 100; OPTIONAL
        },
        Format          => 'MyFormat',             # max: 7; OPTIONAL
        TimestampFormat => 'MyTimestampFormat',    # max: 256; OPTIONAL
      },    # OPTIONAL
      TimeSeriesTransformations => [
        {
          Action => {
            AttributeName => 'MyName', # min: 1, max: 63
            Operation     => 'ADD',    # values: ADD, SUBTRACT, MULTIPLY, DIVIDE
            Value         => 1,

          },    # OPTIONAL
          TimeSeriesConditions => [
            {
              AttributeName  => 'MyName',              # min: 1, max: 63
              AttributeValue => 'MyAttributeValue',    # max: 256
              Condition      =>
                'EQUALS',  # values: EQUALS, NOT_EQUALS, LESS_THAN, GREATER_THAN

            },
            ...
          ],    # max: 10; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $WhatIfForecastArn = $CreateWhatIfForecastResponse->WhatIfForecastArn;

    # Returns a L<Paws::Forecast::CreateWhatIfForecastResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/CreateWhatIfForecast>

=head1 ATTRIBUTES


=head2 Tags => ArrayRef[L<Paws::Forecast::Tag>]

A list of tags
(https://docs.aws.amazon.com/forecast/latest/dg/tagging-forecast-resources.html)
to apply to the what if forecast.



=head2 TimeSeriesReplacementsDataSource => L<Paws::Forecast::TimeSeriesReplacementsDataSource>

The replacement time series dataset, which contains the rows that you
want to change in the related time series dataset. A replacement time
series does not need to contain all rows that are in the baseline
related time series. Include only the rows (measure-dimension
combinations) that you want to include in the what-if forecast.

This dataset is merged with the original time series to create a
transformed dataset that is used for the what-if analysis.

This dataset should contain the items to modify (such as item_id or
workforce_type), any relevant dimensions, the timestamp column, and at
least one of the related time series columns. This file should not
contain duplicate timestamps for the same time series.

Timestamps and item_ids not included in this dataset are not included
in the what-if analysis.



=head2 TimeSeriesTransformations => ArrayRef[L<Paws::Forecast::TimeSeriesTransformation>]

The transformations that are applied to the baseline time series. Each
transformation contains an action and a set of conditions. An action is
applied only when all conditions are met. If no conditions are
provided, the action is applied to all items.



=head2 B<REQUIRED> WhatIfAnalysisArn => Str

The Amazon Resource Name (ARN) of the what-if analysis.



=head2 B<REQUIRED> WhatIfForecastName => Str

The name of the what-if forecast. Names must be unique within each
what-if analysis.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWhatIfForecast in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

