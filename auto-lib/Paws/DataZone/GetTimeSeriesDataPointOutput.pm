
package Paws::DataZone::GetTimeSeriesDataPointOutput;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId');
  has EntityId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entityId');
  has EntityType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entityType');
  has Form => (is => 'ro', isa => 'Paws::DataZone::TimeSeriesDataPointFormOutput', traits => ['NameInRequest'], request_name => 'form');
  has FormName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'formName');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetTimeSeriesDataPointOutput

=head1 ATTRIBUTES


=head2 DomainId => Str

The ID of the Amazon DataZone domain that houses the asset data point
that you want to get.


=head2 EntityId => Str

The ID of the asset for which you want to get the data point.


=head2 EntityType => Str

The type of the asset for which you want to get the data point.

Valid values are: C<"ASSET">, C<"LISTING">
=head2 Form => L<Paws::DataZone::TimeSeriesDataPointFormOutput>

The time series form that houses the data point that you want to get.


=head2 FormName => Str

The name of the time series form that houses the data point that you
want to get.


=head2 _request_id => Str


=cut

