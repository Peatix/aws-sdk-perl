
package Paws::DMS::DescribeEngineVersionsResponse;
  use Moose;
  has EngineVersions => (is => 'ro', isa => 'ArrayRef[Paws::DMS::EngineVersion]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeEngineVersionsResponse

=head1 ATTRIBUTES


=head2 EngineVersions => ArrayRef[L<Paws::DMS::EngineVersion>]

Returned C<EngineVersion> objects that describe the replication
instance engine versions used in the project.


=head2 Marker => Str

An optional pagination token provided by a previous request. If this
parameter is specified, the response includes only records beyond the
marker, up to the value specified by C<MaxRecords>.


=head2 _request_id => Str


=cut

1;