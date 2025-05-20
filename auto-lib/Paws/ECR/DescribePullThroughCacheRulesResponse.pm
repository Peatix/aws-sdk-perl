
package Paws::ECR::DescribePullThroughCacheRulesResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has PullThroughCacheRules => (is => 'ro', isa => 'ArrayRef[Paws::ECR::PullThroughCacheRule]', traits => ['NameInRequest'], request_name => 'pullThroughCacheRules' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::DescribePullThroughCacheRulesResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The C<nextToken> value to include in a future
C<DescribePullThroughCacheRulesRequest> request. When the results of a
C<DescribePullThroughCacheRulesRequest> request exceed C<maxResults>,
this value can be used to retrieve the next page of results. This value
is null when there are no more results to return.


=head2 PullThroughCacheRules => ArrayRef[L<Paws::ECR::PullThroughCacheRule>]

The details of the pull through cache rules.


=head2 _request_id => Str


=cut

1;