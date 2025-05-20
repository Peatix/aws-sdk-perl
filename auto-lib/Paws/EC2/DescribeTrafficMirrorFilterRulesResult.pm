
package Paws::EC2::DescribeTrafficMirrorFilterRulesResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);
  has TrafficMirrorFilterRules => (is => 'ro', isa => 'ArrayRef[Paws::EC2::TrafficMirrorFilterRule]', request_name => 'trafficMirrorFilterRuleSet', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeTrafficMirrorFilterRulesResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to use to retrieve the next page of results. The value is
C<null> when there are no more results to return.


=head2 TrafficMirrorFilterRules => ArrayRef[L<Paws::EC2::TrafficMirrorFilterRule>]

Traffic mirror rules.


=head2 _request_id => Str


=cut

