
package Paws::CloudWatchLogs::DescribeIndexPoliciesResponse;
  use Moose;
  has IndexPolicies => (is => 'ro', isa => 'ArrayRef[Paws::CloudWatchLogs::IndexPolicy]', traits => ['NameInRequest'], request_name => 'indexPolicies' );
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudWatchLogs::DescribeIndexPoliciesResponse

=head1 ATTRIBUTES


=head2 IndexPolicies => ArrayRef[L<Paws::CloudWatchLogs::IndexPolicy>]

An array containing the field index policies.


=head2 NextToken => Str




=head2 _request_id => Str


=cut

1;