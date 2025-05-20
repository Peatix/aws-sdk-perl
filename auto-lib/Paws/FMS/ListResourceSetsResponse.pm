
package Paws::FMS::ListResourceSetsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceSets => (is => 'ro', isa => 'ArrayRef[Paws::FMS::ResourceSetSummary]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::ListResourceSetsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

When you request a list of objects with a C<MaxResults> setting, if the
number of objects that are still available for retrieval exceeds the
maximum you requested, Firewall Manager returns a C<NextToken> value in
the response. To retrieve the next batch of objects, use the token
returned from the prior request in your next request.


=head2 ResourceSets => ArrayRef[L<Paws::FMS::ResourceSetSummary>]

An array of C<ResourceSetSummary> objects.


=head2 _request_id => Str


=cut

1;