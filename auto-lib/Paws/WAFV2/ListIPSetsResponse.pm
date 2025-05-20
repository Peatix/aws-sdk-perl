
package Paws::WAFV2::ListIPSetsResponse;
  use Moose;
  has IPSets => (is => 'ro', isa => 'ArrayRef[Paws::WAFV2::IPSetSummary]');
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WAFV2::ListIPSetsResponse

=head1 ATTRIBUTES


=head2 IPSets => ArrayRef[L<Paws::WAFV2::IPSetSummary>]

Array of IPSets. If you specified a C<Limit> in your request, this
might not be the full list.


=head2 NextMarker => Str

When you request a list of objects with a C<Limit> setting, if the
number of objects that are still available for retrieval exceeds the
limit, WAF returns a C<NextMarker> value in the response. To retrieve
the next batch of objects, provide the marker from the prior call in
your next request.


=head2 _request_id => Str


=cut

1;