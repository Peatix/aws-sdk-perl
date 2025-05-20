
package Paws::IVSRealTime::ListCompositionsResponse;
  use Moose;
  has Compositions => (is => 'ro', isa => 'ArrayRef[Paws::IVSRealTime::CompositionSummary]', traits => ['NameInRequest'], request_name => 'compositions', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::ListCompositionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Compositions => ArrayRef[L<Paws::IVSRealTime::CompositionSummary>]

List of the matching Compositions (summary information only).


=head2 NextToken => Str

If there are more compositions than C<maxResults>, use C<nextToken> in
the request to get the next set.


=head2 _request_id => Str


=cut

