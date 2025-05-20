
package Paws::Forecast::DescribeWhatIfForecastResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has EstimatedTimeRemainingInMinutes => (is => 'ro', isa => 'Int');
  has ForecastTypes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LastModificationTime => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TimeSeriesReplacementsDataSource => (is => 'ro', isa => 'Paws::Forecast::TimeSeriesReplacementsDataSource');
  has TimeSeriesTransformations => (is => 'ro', isa => 'ArrayRef[Paws::Forecast::TimeSeriesTransformation]');
  has WhatIfAnalysisArn => (is => 'ro', isa => 'Str');
  has WhatIfForecastArn => (is => 'ro', isa => 'Str');
  has WhatIfForecastName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribeWhatIfForecastResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

When the what-if forecast was created.


=head2 EstimatedTimeRemainingInMinutes => Int

The approximate time remaining to complete the what-if forecast, in
minutes.


=head2 ForecastTypes => ArrayRef[Str|Undef]

The quantiles at which probabilistic forecasts are generated. You can
specify up to five quantiles per what-if forecast in the
CreateWhatIfForecast operation. If you didn't specify quantiles, the
default values are C<["0.1", "0.5", "0.9"]>.


=head2 LastModificationTime => Str

The last time the resource was modified. The timestamp depends on the
status of the job:

=over

=item *

C<CREATE_PENDING> - The C<CreationTime>.

=item *

C<CREATE_IN_PROGRESS> - The current timestamp.

=item *

C<CREATE_STOPPING> - The current timestamp.

=item *

C<CREATE_STOPPED> - When the job stopped.

=item *

C<ACTIVE> or C<CREATE_FAILED> - When the job finished or failed.

=back



=head2 Message => Str

If an error occurred, an informational message about the error.


=head2 Status => Str

The status of the what-if forecast. States include:

=over

=item *

C<ACTIVE>

=item *

C<CREATE_PENDING>, C<CREATE_IN_PROGRESS>, C<CREATE_FAILED>

=item *

C<CREATE_STOPPING>, C<CREATE_STOPPED>

=item *

C<DELETE_PENDING>, C<DELETE_IN_PROGRESS>, C<DELETE_FAILED>

=back

The C<Status> of the what-if forecast must be C<ACTIVE> before you can
access the forecast.


=head2 TimeSeriesReplacementsDataSource => L<Paws::Forecast::TimeSeriesReplacementsDataSource>

An array of C<S3Config>, C<Schema>, and C<Format> elements that
describe the replacement time series.


=head2 TimeSeriesTransformations => ArrayRef[L<Paws::Forecast::TimeSeriesTransformation>]

An array of C<Action> and C<TimeSeriesConditions> elements that
describe what transformations were applied to which time series.


=head2 WhatIfAnalysisArn => Str

The Amazon Resource Name (ARN) of the what-if analysis that contains
this forecast.


=head2 WhatIfForecastArn => Str

The Amazon Resource Name (ARN) of the what-if forecast.


=head2 WhatIfForecastName => Str

The name of the what-if forecast.


=head2 _request_id => Str


=cut

1;