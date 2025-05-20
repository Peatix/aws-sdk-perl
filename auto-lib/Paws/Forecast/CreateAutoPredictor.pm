
package Paws::Forecast::CreateAutoPredictor;
  use Moose;
  has DataConfig => (is => 'ro', isa => 'Paws::Forecast::DataConfig');
  has EncryptionConfig => (is => 'ro', isa => 'Paws::Forecast::EncryptionConfig');
  has ExplainPredictor => (is => 'ro', isa => 'Bool');
  has ForecastDimensions => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has ForecastFrequency => (is => 'ro', isa => 'Str');
  has ForecastHorizon => (is => 'ro', isa => 'Int');
  has ForecastTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MonitorConfig => (is => 'ro', isa => 'Paws::Forecast::MonitorConfig');
  has OptimizationMetric => (is => 'ro', isa => 'Str');
  has PredictorName => (is => 'ro', isa => 'Str', required => 1);
  has ReferencePredictorArn => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::Tag]');
  has TimeAlignmentBoundary => (is => 'ro', isa => 'Paws::Forecast::TimeAlignmentBoundary');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAutoPredictor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::CreateAutoPredictorResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateAutoPredictor - Arguments for method CreateAutoPredictor on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAutoPredictor on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method CreateAutoPredictor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAutoPredictor.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $CreateAutoPredictorResponse = $forecast->CreateAutoPredictor(
      PredictorName => 'MyName',
      DataConfig    => {
        DatasetGroupArn    => 'MyArn',    # max: 256
        AdditionalDatasets => [
          {
            Name          => 'MyName',    # min: 1, max: 63
            Configuration => {
              'MyName' => [
                'MyValue', ...            # max: 256
              ],    # key: min: 1, max: 63, value: min: 1, max: 20
            },    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 2; OPTIONAL
        AttributeConfigs => [
          {
            AttributeName   => 'MyName',    # min: 1, max: 63
            Transformations => {
              'MyName' => 'MyValue',    # key: min: 1, max: 63, value: max: 256
            },    # min: 1, max: 20

          },
          ...
        ],    # min: 1, max: 50; OPTIONAL
      },    # OPTIONAL
      EncryptionConfig => {
        KMSKeyArn => 'MyKMSKeyArn',    # max: 256
        RoleArn   => 'MyArn',          # max: 256

      },    # OPTIONAL
      ExplainPredictor   => 1,    # OPTIONAL
      ForecastDimensions => [
        'MyName', ...             # min: 1, max: 63
      ],    # OPTIONAL
      ForecastFrequency => 'MyFrequency',    # OPTIONAL
      ForecastHorizon   => 1,                # OPTIONAL
      ForecastTypes     => [
        'MyForecastType', ...                # min: 2, max: 4
      ],    # OPTIONAL
      MonitorConfig => {
        MonitorName => 'MyName',    # min: 1, max: 63

      },    # OPTIONAL
      OptimizationMetric    => 'WAPE',     # OPTIONAL
      ReferencePredictorArn => 'MyArn',    # OPTIONAL
      Tags                  => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TimeAlignmentBoundary => {
        DayOfMonth => 1,         # min: 1, max: 28; OPTIONAL
        DayOfWeek  => 'MONDAY'
        , # values: MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY; OPTIONAL
        Hour  => 1,          # max: 23; OPTIONAL
        Month => 'JANUARY'
        , # values: JANUARY, FEBRUARY, MARCH, APRIL, MAY, JUNE, JULY, AUGUST, SEPTEMBER, OCTOBER, NOVEMBER, DECEMBER; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $PredictorArn = $CreateAutoPredictorResponse->PredictorArn;

    # Returns a L<Paws::Forecast::CreateAutoPredictorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/CreateAutoPredictor>

=head1 ATTRIBUTES


=head2 DataConfig => L<Paws::Forecast::DataConfig>

The data configuration for your dataset group and any additional
datasets.



=head2 EncryptionConfig => L<Paws::Forecast::EncryptionConfig>





=head2 ExplainPredictor => Bool

Create an Explainability resource for the predictor.



=head2 ForecastDimensions => ArrayRef[Str|Undef]

An array of dimension (field) names that specify how to group the
generated forecast.

For example, if you are generating forecasts for item sales across all
your stores, and your dataset contains a C<store_id> field, you would
specify C<store_id> as a dimension to group sales forecasts for each
store.



=head2 ForecastFrequency => Str

The frequency of predictions in a forecast.

Valid intervals are an integer followed by Y (Year), M (Month), W
(Week), D (Day), H (Hour), and min (Minute). For example, "1D"
indicates every day and "15min" indicates every 15 minutes. You cannot
specify a value that would overlap with the next larger frequency. That
means, for example, you cannot specify a frequency of 60 minutes,
because that is equivalent to 1 hour. The valid values for each
frequency are the following:

=over

=item *

Minute - 1-59

=item *

Hour - 1-23

=item *

Day - 1-6

=item *

Week - 1-4

=item *

Month - 1-11

=item *

Year - 1

=back

Thus, if you want every other week forecasts, specify "2W". Or, if you
want quarterly forecasts, you specify "3M".

The frequency must be greater than or equal to the TARGET_TIME_SERIES
dataset frequency.

When a RELATED_TIME_SERIES dataset is provided, the frequency must be
equal to the RELATED_TIME_SERIES dataset frequency.



=head2 ForecastHorizon => Int

The number of time-steps that the model predicts. The forecast horizon
is also called the prediction length.

The maximum forecast horizon is the lesser of 500 time-steps or 1/4 of
the TARGET_TIME_SERIES dataset length. If you are retraining an
existing AutoPredictor, then the maximum forecast horizon is the lesser
of 500 time-steps or 1/3 of the TARGET_TIME_SERIES dataset length.

If you are upgrading to an AutoPredictor or retraining an existing
AutoPredictor, you cannot update the forecast horizon parameter. You
can meet this requirement by providing longer time-series in the
dataset.



=head2 ForecastTypes => ArrayRef[Str|Undef]

The forecast types used to train a predictor. You can specify up to
five forecast types. Forecast types can be quantiles from 0.01 to 0.99,
by increments of 0.01 or higher. You can also specify the mean forecast
with C<mean>.



=head2 MonitorConfig => L<Paws::Forecast::MonitorConfig>

The configuration details for predictor monitoring. Provide a name for
the monitor resource to enable predictor monitoring.

Predictor monitoring allows you to see how your predictor's performance
changes over time. For more information, see Predictor Monitoring
(https://docs.aws.amazon.com/forecast/latest/dg/predictor-monitoring.html).



=head2 OptimizationMetric => Str

The accuracy metric used to optimize the predictor.

Valid values are: C<"WAPE">, C<"RMSE">, C<"AverageWeightedQuantileLoss">, C<"MASE">, C<"MAPE">

=head2 B<REQUIRED> PredictorName => Str

A unique name for the predictor



=head2 ReferencePredictorArn => Str

The ARN of the predictor to retrain or upgrade. This parameter is only
used when retraining or upgrading a predictor. When creating a new
predictor, do not specify a value for this parameter.

When upgrading or retraining a predictor, only specify values for the
C<ReferencePredictorArn> and C<PredictorName>. The value for
C<PredictorName> must be a unique predictor name.



=head2 Tags => ArrayRef[L<Paws::Forecast::Tag>]

Optional metadata to help you categorize and organize your predictors.
Each tag consists of a key and an optional value, both of which you
define. Tag keys and values are case sensitive.

The following restrictions apply to tags:

=over

=item *

For each resource, each tag key must be unique and each tag key must
have one value.

=item *

Maximum number of tags per resource: 50.

=item *

Maximum key length: 128 Unicode characters in UTF-8.

=item *

Maximum value length: 256 Unicode characters in UTF-8.

=item *

Accepted characters: all letters and numbers, spaces representable in
UTF-8, and + - = . _ : / @. If your tagging schema is used across other
services and resources, the character restrictions of those services
also apply.

=item *

Key prefixes cannot include any upper or lowercase combination of
C<aws:> or C<AWS:>. Values can have this prefix. If a tag value has
C<aws> as its prefix but the key does not, Forecast considers it to be
a user tag and will count against the limit of 50 tags. Tags with only
the key prefix of C<aws> do not count against your tags per resource
limit. You cannot edit or delete tag keys with this prefix.

=back




=head2 TimeAlignmentBoundary => L<Paws::Forecast::TimeAlignmentBoundary>

The time boundary Forecast uses to align and aggregate any data that
doesn't align with your forecast frequency. Provide the unit of time
and the time boundary as a key value pair. For more information on
specifying a time boundary, see Specifying a Time Boundary
(https://docs.aws.amazon.com/forecast/latest/dg/data-aggregation.html#specifying-time-boundary).
If you don't provide a time boundary, Forecast uses a set of Default
Time Boundaries
(https://docs.aws.amazon.com/forecast/latest/dg/data-aggregation.html#default-time-boundaries).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAutoPredictor in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

