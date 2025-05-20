
package Paws::IVSRealTime::ListPublicKeysResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PublicKeys => (is => 'ro', isa => 'ArrayRef[Paws::IVSRealTime::PublicKeySummary]', traits => ['NameInRequest'], request_name => 'publicKeys', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::ListPublicKeysResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

If there are more public keys than C<maxResults>, use C<nextToken> in
the request to get the next set.


=head2 B<REQUIRED> PublicKeys => ArrayRef[L<Paws::IVSRealTime::PublicKeySummary>]

List of the matching public keys (summary information only).


=head2 _request_id => Str


=cut

