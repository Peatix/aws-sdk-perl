
package Paws::DMS::DescribeMetadataModelConversionsResponse;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str');
  has Requests => (is => 'ro', isa => 'ArrayRef[Paws::DMS::SchemaConversionRequest]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeMetadataModelConversionsResponse

=head1 ATTRIBUTES


=head2 Marker => Str

Specifies the unique pagination token that makes it possible to display
the next page of results. If this parameter is specified, the response
includes only records beyond the marker, up to the value specified by
C<MaxRecords>.

If C<Marker> is returned by a previous response, there are more results
available. The value of C<Marker> is a unique pagination token for each
page. To retrieve the next page, make the call again using the returned
token and keeping all other arguments unchanged.


=head2 Requests => ArrayRef[L<Paws::DMS::SchemaConversionRequest>]

A paginated list of metadata model conversions.


=head2 _request_id => Str


=cut

1;