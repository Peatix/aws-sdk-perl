
package Paws::ARCZonalShift::ListZonalShiftsResponse;
  use Moose;
  has Items => (is => 'ro', isa => 'ArrayRef[Paws::ARCZonalShift::ZonalShiftSummary]', traits => ['NameInRequest'], request_name => 'items');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift::ListZonalShiftsResponse

=head1 ATTRIBUTES


=head2 Items => ArrayRef[L<Paws::ARCZonalShift::ZonalShiftSummary>]

The items in the response list.


=head2 NextToken => Str

Specifies that you want to receive the next page of results. Valid only
if you received a C<nextToken> response in the previous request. If you
did, it indicates that more output is available. Set this parameter to
the value provided by the previous call's C<nextToken> response to
request the next page of results.


=head2 _request_id => Str


=cut

