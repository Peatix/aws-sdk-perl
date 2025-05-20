
package Paws::Forecast::DescribeWhatIfAnalysisResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has EstimatedTimeRemainingInMinutes => (is => 'ro', isa => 'Int');
  has ForecastArn => (is => 'ro', isa => 'Str');
  has LastModificationTime => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TimeSeriesSelector => (is => 'ro', isa => 'Paws::Forecast::TimeSeriesSelector');
  has WhatIfAnalysisArn => (is => 'ro', isa => 'Str');
  has WhatIfAnalysisName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribeWhatIfAnalysisResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

When the what-if analysis was created.


=head2 EstimatedTimeRemainingInMinutes => Int

The approximate time remaining to complete the what-if analysis, in
minutes.


=head2 ForecastArn => Str

The Amazon Resource Name (ARN) of the what-if forecast.


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

The status of the what-if analysis. States include:

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

The C<Status> of the what-if analysis must be C<ACTIVE> before you can
access the analysis.


=head2 TimeSeriesSelector => L<Paws::Forecast::TimeSeriesSelector>




=head2 WhatIfAnalysisArn => Str

The Amazon Resource Name (ARN) of the what-if analysis.


=head2 WhatIfAnalysisName => Str

The name of the what-if analysis.


=head2 _request_id => Str


=cut

1;