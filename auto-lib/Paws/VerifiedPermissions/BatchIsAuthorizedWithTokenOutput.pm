
package Paws::VerifiedPermissions::BatchIsAuthorizedWithTokenOutput;
  use Moose;
  has Principal => (is => 'ro', isa => 'Paws::VerifiedPermissions::EntityIdentifier', traits => ['NameInRequest'], request_name => 'principal' );
  has Results => (is => 'ro', isa => 'ArrayRef[Paws::VerifiedPermissions::BatchIsAuthorizedWithTokenOutputItem]', traits => ['NameInRequest'], request_name => 'results' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::BatchIsAuthorizedWithTokenOutput

=head1 ATTRIBUTES


=head2 Principal => L<Paws::VerifiedPermissions::EntityIdentifier>

The identifier of the principal in the ID or access token.


=head2 B<REQUIRED> Results => ArrayRef[L<Paws::VerifiedPermissions::BatchIsAuthorizedWithTokenOutputItem>]

A series of C<Allow> or C<Deny> decisions for each request, and the
policies that produced them. These results are returned in the order
they were requested.


=head2 _request_id => Str


=cut

1;