
package Paws::Forecast::DescribeWhatIfForecastExportResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has Destination => (is => 'ro', isa => 'Paws::Forecast::DataDestination');
  has EstimatedTimeRemainingInMinutes => (is => 'ro', isa => 'Int');
  has Format => (is => 'ro', isa => 'Str');
  has LastModificationTime => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has WhatIfForecastArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has WhatIfForecastExportArn => (is => 'ro', isa => 'Str');
  has WhatIfForecastExportName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribeWhatIfForecastExportResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

When the what-if forecast export was created.


=head2 Destination => L<Paws::Forecast::DataDestination>




=head2 EstimatedTimeRemainingInMinutes => Int

The approximate time remaining to complete the what-if forecast export,
in minutes.


=head2 Format => Str

The format of the exported data, CSV or PARQUET.


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

The C<Status> of the what-if forecast export must be C<ACTIVE> before
you can access the forecast export.


=head2 WhatIfForecastArns => ArrayRef[Str|Undef]

An array of Amazon Resource Names (ARNs) that represent all of the
what-if forecasts exported in this resource.


=head2 WhatIfForecastExportArn => Str

The Amazon Resource Name (ARN) of the what-if forecast export.


=head2 WhatIfForecastExportName => Str

The name of the what-if forecast export.


=head2 _request_id => Str


=cut

1;