
package Paws::Kendra::UpdateFeaturedResultsSetResponse;
  use Moose;
  has FeaturedResultsSet => (is => 'ro', isa => 'Paws::Kendra::FeaturedResultsSet');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Kendra::UpdateFeaturedResultsSetResponse

=head1 ATTRIBUTES


=head2 FeaturedResultsSet => L<Paws::Kendra::FeaturedResultsSet>

Information on the set of featured results. This includes the
identifier of the featured results set, whether the featured results
set is active or inactive, when the featured results set was last
updated, and more.


=head2 _request_id => Str


=cut

1;