
package Paws::PerformanceInsights::GetResourceMetadataResponse;
  use Moose;
  has Features => (is => 'ro', isa => 'Paws::PerformanceInsights::FeatureMetadataMap');
  has Identifier => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PerformanceInsights::GetResourceMetadataResponse

=head1 ATTRIBUTES


=head2 Features => L<Paws::PerformanceInsights::FeatureMetadataMap>

The metadata for different features. For example, the metadata might
indicate that a feature is turned on or off on a specific DB instance.


=head2 Identifier => Str

An immutable identifier for a data source that is unique for an Amazon
Web Services Region. Performance Insights gathers metrics from this
data source. To use a DB instance as a data source, specify its
C<DbiResourceId> value. For example, specify
C<db-ABCDEFGHIJKLMNOPQRSTU1VW2X>.


=head2 _request_id => Str


=cut

1;