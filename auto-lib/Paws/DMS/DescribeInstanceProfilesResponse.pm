
package Paws::DMS::DescribeInstanceProfilesResponse;
  use Moose;
  has InstanceProfiles => (is => 'ro', isa => 'ArrayRef[Paws::DMS::InstanceProfile]');
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::DescribeInstanceProfilesResponse

=head1 ATTRIBUTES


=head2 InstanceProfiles => ArrayRef[L<Paws::DMS::InstanceProfile>]

A description of instance profiles.


=head2 Marker => Str

Specifies the unique pagination token that makes it possible to display
the next page of results. If this parameter is specified, the response
includes only records beyond the marker, up to the value specified by
C<MaxRecords>.

If C<Marker> is returned by a previous response, there are more results
available. The value of C<Marker> is a unique pagination token for each
page. To retrieve the next page, make the call again using the returned
token and keeping all other arguments unchanged.


=head2 _request_id => Str


=cut

1;