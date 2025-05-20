
package Paws::Forecast::CreateWhatIfAnalysis;
  use Moose;
  has ForecastArn => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::Tag]');
  has TimeSeriesSelector => (is => 'ro', isa => 'Paws::Forecast::TimeSeriesSelector');
  has WhatIfAnalysisName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateWhatIfAnalysis');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Forecast::CreateWhatIfAnalysisResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::CreateWhatIfAnalysis - Arguments for method CreateWhatIfAnalysis on L<Paws::Forecast>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateWhatIfAnalysis on the
L<Amazon Forecast Service|Paws::Forecast> service. Use the attributes of this class
as arguments to method CreateWhatIfAnalysis.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateWhatIfAnalysis.

=head1 SYNOPSIS

    my $forecast = Paws->service('Forecast');
    my $CreateWhatIfAnalysisResponse = $forecast->CreateWhatIfAnalysis(
      ForecastArn        => 'MyArn',
      WhatIfAnalysisName => 'MyName',
      Tags               => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TimeSeriesSelector => {
        TimeSeriesIdentifiers => {
          DataSource => {
            S3Config => {
              Path      => 'MyS3Path',       # min: 7, max: 4096
              RoleArn   => 'MyArn',          # max: 256
              KMSKeyArn => 'MyKMSKeyArn',    # max: 256; OPTIONAL
            },

          },    # OPTIONAL
          Format => 'MyFormat',    # max: 7; OPTIONAL
          Schema => {
            Attributes => [
              {
                AttributeName => 'MyName',    # min: 1, max: 63
                AttributeType => 'string'
                , # values: string, integer, float, timestamp, geolocation; OPTIONAL
              },
              ...
            ],    # min: 1, max: 100; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $WhatIfAnalysisArn = $CreateWhatIfAnalysisResponse->WhatIfAnalysisArn;

    # Returns a L<Paws::Forecast::CreateWhatIfAnalysisResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/forecast/CreateWhatIfAnalysis>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ForecastArn => Str

The Amazon Resource Name (ARN) of the baseline forecast.



=head2 Tags => ArrayRef[L<Paws::Forecast::Tag>]

A list of tags
(https://docs.aws.amazon.com/forecast/latest/dg/tagging-forecast-resources.html)
to apply to the what if forecast.



=head2 TimeSeriesSelector => L<Paws::Forecast::TimeSeriesSelector>

Defines the set of time series that are used in the what-if analysis
with a C<TimeSeriesIdentifiers> object. What-if analyses are performed
only for the time series in this object.

The C<TimeSeriesIdentifiers> object needs the following information:

=over

=item *

C<DataSource>

=item *

C<Format>

=item *

C<Schema>

=back




=head2 B<REQUIRED> WhatIfAnalysisName => Str

The name of the what-if analysis. Each name must be unique.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateWhatIfAnalysis in L<Paws::Forecast>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

