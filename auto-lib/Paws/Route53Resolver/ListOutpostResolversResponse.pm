
package Paws::Route53Resolver::ListOutpostResolversResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has OutpostResolvers => (is => 'ro', isa => 'ArrayRef[Paws::Route53Resolver::OutpostResolver]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Route53Resolver::ListOutpostResolversResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If more than C<MaxResults> Resolvers match the specified criteria, you
can submit another C<ListOutpostResolver> request to get the next group
of results. In the next request, specify the value of C<NextToken> from
the previous response.


=head2 OutpostResolvers => ArrayRef[L<Paws::Route53Resolver::OutpostResolver>]

The Resolvers on Outposts that were created by using the current Amazon
Web Services account, and that match the specified filters, if any.


=head2 _request_id => Str


=cut

1;