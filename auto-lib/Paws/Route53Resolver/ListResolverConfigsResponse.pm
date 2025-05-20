
package Paws::Route53Resolver::ListResolverConfigsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResolverConfigs => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::ResolverConfig]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListResolverConfigsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If a response includes the last of the Resolver configurations that are
associated with the current Amazon Web Services account, C<NextToken>
doesn't appear in the response.

If a response doesn't include the last of the configurations, you can
get more configurations by submitting another C<ListResolverConfigs>
request. Get the value of C<NextToken> that Amazon Route 53 returned in
the previous response and include it in C<NextToken> in the next
request.


=head2 ResolverConfigs => ArrayRef[L<Paws::Route53Resolver::ResolverConfig>]

An array that contains one C<ResolverConfigs> element for each Resolver
configuration that is associated with the current Amazon Web Services
account.


=head2 _request_id => Str


=cut

1;