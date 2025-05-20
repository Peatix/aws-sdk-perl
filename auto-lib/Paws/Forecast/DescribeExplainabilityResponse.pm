
package Paws::Forecast::DescribeExplainabilityResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str');
  has DataSource => (is => 'ro', isa => 'Paws::Forecast::DataSource');
  has EnableVisualization => (is => 'ro', isa => 'Bool');
  has EndDateTime => (is => 'ro', isa => 'Str');
  has EstimatedTimeRemainingInMinutes => (is => 'ro', isa => 'Int');
  has ExplainabilityArn => (is => 'ro', isa => 'Str');
  has ExplainabilityConfig => (is => 'ro', isa => 'Paws::Forecast::ExplainabilityConfig');
  has ExplainabilityName => (is => 'ro', isa => 'Str');
  has LastModificationTime => (is => 'ro', isa => 'Str');
  has Message => (is => 'ro', isa => 'Str');
  has ResourceArn => (is => 'ro', isa => 'Str');
  has Schema => (is => 'ro', isa => 'Paws::Forecast::Schema');
  has StartDateTime => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Forecast::DescribeExplainabilityResponse

=head1 ATTRIBUTES


=head2 CreationTime => Str

When the Explainability resource was created.


=head2 DataSource => L<Paws::Forecast::DataSource>




=head2 EnableVisualization => Bool

Whether the visualization was enabled for the Explainability resource.


=head2 EndDateTime => Str

If C<TimePointGranularity> is set to C<SPECIFIC>, the last time point
in the Explainability.


=head2 EstimatedTimeRemainingInMinutes => Int

The estimated time remaining in minutes for the CreateExplainability
job to complete.


=head2 ExplainabilityArn => Str

The Amazon Resource Name (ARN) of the Explainability.


=head2 ExplainabilityConfig => L<Paws::Forecast::ExplainabilityConfig>

The configuration settings that define the granularity of time series
and time points for the Explainability.


=head2 ExplainabilityName => Str

The name of the Explainability.


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

If an error occurred, a message about the error.


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) of the Predictor or Forecast used to
create the Explainability resource.


=head2 Schema => L<Paws::Forecast::Schema>




=head2 StartDateTime => Str

If C<TimePointGranularity> is set to C<SPECIFIC>, the first time point
in the Explainability.


=head2 Status => Str

The status of the Explainability resource. States include:

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



=head2 _request_id => Str


=cut

1;