
package Paws::AutoScaling::DescribeTrafficSourcesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TrafficSources => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::TrafficSourceState]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeTrafficSourcesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

This string indicates that the response contains more items than can be
returned in a single response. To receive additional items, specify
this string for the C<NextToken> value when requesting the next set of
items. This value is null when there are no more items to return.


=head2 TrafficSources => ArrayRef[L<Paws::AutoScaling::TrafficSourceState>]

Information about the traffic sources.


=head2 _request_id => Str


=cut

