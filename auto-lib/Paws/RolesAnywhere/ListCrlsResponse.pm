
package Paws::RolesAnywhere::ListCrlsResponse;
  use Moose;
  has Crls => (is => 'ro', isa => 'ArrayRef[Paws::RolesAnywhere::CrlDetail]', traits => ['NameInRequest'], request_name => 'crls');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::ListCrlsResponse

=head1 ATTRIBUTES


=head2 Crls => ArrayRef[L<Paws::RolesAnywhere::CrlDetail>]

A list of certificate revocation lists (CRL).


=head2 NextToken => Str

A token that indicates where the output should continue from, if a
previous request did not show all results. To get the next results,
make the request again with this value.


=head2 _request_id => Str


=cut

