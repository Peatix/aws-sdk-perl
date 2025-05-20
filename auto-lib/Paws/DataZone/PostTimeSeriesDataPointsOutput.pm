
package Paws::DataZone::PostTimeSeriesDataPointsOutput;
  use Moose;
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId');
  has EntityId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entityId');
  has EntityType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'entityType');
  has Forms => (is => 'ro', isa => 'ArrayRef[Paws::DataZone::TimeSeriesDataPointFormOutput]', traits => ['NameInRequest'], request_name => 'forms');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::PostTimeSeriesDataPointsOutput

=head1 ATTRIBUTES


=head2 DomainId => Str

The ID of the Amazon DataZone domain in which you want to post time
series data points.


=head2 EntityId => Str

The ID of the asset for which you want to post time series data points.


=head2 EntityType => Str

The type of the asset for which you want to post data points.

Valid values are: C<"ASSET">, C<"LISTING">
=head2 Forms => ArrayRef[L<Paws::DataZone::TimeSeriesDataPointFormOutput>]

The forms that contain the data points that you have posted.


=head2 _request_id => Str


=cut

