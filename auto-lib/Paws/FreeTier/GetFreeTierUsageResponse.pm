
package Paws::FreeTier::GetFreeTierUsageResponse;
  use Moose;
  has FreeTierUsages => (is => 'ro', isa => 'ArrayRef[Paws::FreeTier::FreeTierUsage]', traits => ['NameInRequest'], request_name => 'freeTierUsages' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FreeTier::GetFreeTierUsageResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FreeTierUsages => ArrayRef[L<Paws::FreeTier::FreeTierUsage>]

The list of Free Tier usage objects that meet your filter expression.


=head2 NextToken => Str

The pagination token that indicates the next set of results to
retrieve.


=head2 _request_id => Str


=cut

1;