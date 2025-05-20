
package Paws::AutoScaling::DescribeWarmPoolAnswer;
  use Moose;
  has Instances => (is => 'ro', isa => 'ArrayRef[Paws::AutoScaling::Instance]');
  has NextToken => (is => 'ro', isa => 'Str');
  has WarmPoolConfiguration => (is => 'ro', isa => 'Paws::AutoScaling::WarmPoolConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AutoScaling::DescribeWarmPoolAnswer

=head1 ATTRIBUTES


=head2 Instances => ArrayRef[L<Paws::AutoScaling::Instance>]

The instances that are currently in the warm pool.


=head2 NextToken => Str

This string indicates that the response contains more items than can be
returned in a single response. To receive additional items, specify
this string for the C<NextToken> value when requesting the next set of
items. This value is null when there are no more items to return.


=head2 WarmPoolConfiguration => L<Paws::AutoScaling::WarmPoolConfiguration>

The warm pool configuration details.


=head2 _request_id => Str


=cut

