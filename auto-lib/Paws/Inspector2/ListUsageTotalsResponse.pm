
package Paws::Inspector2::ListUsageTotalsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Totals => (is => 'ro', isa => 'ArrayRef[Paws::Inspector2::UsageTotal]', traits => ['NameInRequest'], request_name => 'totals');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ListUsageTotalsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

The pagination parameter to be used on the next list operation to
retrieve more items.


=head2 Totals => ArrayRef[L<Paws::Inspector2::UsageTotal>]

An object with details on the total usage for the requested account.


=head2 _request_id => Str


=cut

