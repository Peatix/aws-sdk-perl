
package Paws::CloudWatchLogs::DescribeAccountPoliciesResponse;
  use Moose;
  has AccountPolicies => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::AccountPolicy]', traits => ['NameInRequest'], request_name => 'accountPolicies' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeAccountPoliciesResponse

=head1 ATTRIBUTES


=head2 AccountPolicies => ArrayRef[L<Paws::CloudWatchLogs::AccountPolicy>]

An array of structures that contain information about the CloudWatch
Logs account policies that match the specified filters.


=head2 NextToken => Str

The token to use when requesting the next set of items. The token
expires after 24 hours.


=head2 _request_id => Str


=cut

1;