
package Paws::DataZone::StartDataSourceRunOutput;
  use Moose;
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt', required => 1);
  has DataSourceConfigurationSnapshot => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSourceConfigurationSnapshot');
  has DataSourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dataSourceId', required => 1);
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has ErrorMessage => (is => 'ro', isa => 'Paws::DataZone::DataSourceErrorMessage', traits => ['NameInRequest'], request_name => 'errorMessage');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has ProjectId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectId', required => 1);
  has RunStatisticsForAssets => (is => 'ro', isa => 'Paws::DataZone::RunStatisticsForAssets', traits => ['NameInRequest'], request_name => 'runStatisticsForAssets');
  has StartedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startedAt');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StoppedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'stoppedAt');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);
  has UpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updatedAt', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::StartDataSourceRunOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedAt => Str

The timestamp of when data source run was created.


=head2 DataSourceConfigurationSnapshot => Str

The configuration snapshot of the data source that is being run.


=head2 B<REQUIRED> DataSourceId => Str

The identifier of the data source.


=head2 B<REQUIRED> DomainId => Str

The identifier of the Amazon DataZone domain in which to start a data
source run.


=head2 ErrorMessage => L<Paws::DataZone::DataSourceErrorMessage>

Specifies the error message that is returned if the operation cannot be
successfully completed.


=head2 B<REQUIRED> Id => Str

The identifier of the data source run.


=head2 B<REQUIRED> ProjectId => Str

The identifier of the project.


=head2 RunStatisticsForAssets => L<Paws::DataZone::RunStatisticsForAssets>

Specifies run statistics for assets.


=head2 StartedAt => Str

The timestamp of when the data source run was started.


=head2 B<REQUIRED> Status => Str

The status of the data source run.

Valid values are: C<"REQUESTED">, C<"RUNNING">, C<"FAILED">, C<"PARTIALLY_SUCCEEDED">, C<"SUCCESS">
=head2 StoppedAt => Str

The timestamp of when the data source run was stopped.


=head2 B<REQUIRED> Type => Str

The type of the data source run.

Valid values are: C<"PRIORITIZED">, C<"SCHEDULED">
=head2 B<REQUIRED> UpdatedAt => Str

The timestamp of when the data source run was updated.


=head2 _request_id => Str


=cut

