
package Paws::EC2::DescribeNetworkInsightsAccessScopesResult;
  use Moose;
  has NetworkInsightsAccessScopes => (is => 'ro', isa => 'ArrayRef[Paws::EC2::NetworkInsightsAccessScope]', request_name => 'networkInsightsAccessScopeSet', traits => ['NameInRequest',]);
  has NextToken => (is => 'ro', isa => 'Str', request_name => 'nextToken', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DescribeNetworkInsightsAccessScopesResult

=head1 ATTRIBUTES


=head2 NetworkInsightsAccessScopes => ArrayRef[L<Paws::EC2::NetworkInsightsAccessScope>]

The Network Access Scopes.


=head2 NextToken => Str

The token to use to retrieve the next page of results. This value is
C<null> when there are no more results to return.


=head2 _request_id => Str


=cut

