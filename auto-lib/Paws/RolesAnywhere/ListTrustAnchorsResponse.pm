
package Paws::RolesAnywhere::ListTrustAnchorsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has TrustAnchors => (is => 'ro', isa => 'ArrayRef[Paws::RolesAnywhere::TrustAnchorDetail]', traits => ['NameInRequest'], request_name => 'trustAnchors');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RolesAnywhere::ListTrustAnchorsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates where the output should continue from, if a
previous request did not show all results. To get the next results,
make the request again with this value.


=head2 TrustAnchors => ArrayRef[L<Paws::RolesAnywhere::TrustAnchorDetail>]

A list of trust anchors.


=head2 _request_id => Str


=cut

