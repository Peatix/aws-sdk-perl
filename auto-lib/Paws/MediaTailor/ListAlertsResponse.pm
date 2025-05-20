
package Paws::MediaTailor::ListAlertsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::MediaTailor::Alert]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaTailor::ListAlertsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::MediaTailor::Alert>]

A list of alerts that are associated with this resource.


=head2 NextToken => Str

Pagination token returned by the list request when results exceed the
maximum allowed. Use the token to fetch the next page of results.


=head2 _request_id => Str


=cut

