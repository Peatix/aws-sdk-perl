
package Paws::SimSpaceWeaver::ListSimulationsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has Simulations => (is => 'ro', isa => 'ArrayRef[Paws::SimSpaceWeaver::SimulationMetadata]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SimSpaceWeaver::ListSimulationsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If SimSpace Weaver returns C<nextToken>, then there are more results
available. The value of C<nextToken> is a unique pagination token for
each page. To retrieve the next page, call the operation again using
the returned token. Keep all other arguments unchanged. If no results
remain, then C<nextToken> is set to C<null>. Each pagination token
expires after 24 hours. If you provide a token that isn't valid, then
you receive an I<HTTP 400 ValidationException> error.


=head2 Simulations => ArrayRef[L<Paws::SimSpaceWeaver::SimulationMetadata>]

The list of simulations.


=head2 _request_id => Str


=cut

