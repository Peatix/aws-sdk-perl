
package Paws::EC2::ModifyVpcEndpointServicePermissionsResult;
  use Moose;
  has AddedPrincipals => (is => 'ro', isa => 'ArrayRef[Paws::EC2::AddedPrincipal]', request_name => 'addedPrincipalSet', traits => ['NameInRequest',]);
  has ReturnValue => (is => 'ro', isa => 'Bool', request_name => 'return', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyVpcEndpointServicePermissionsResult

=head1 ATTRIBUTES


=head2 AddedPrincipals => ArrayRef[L<Paws::EC2::AddedPrincipal>]

Information about the added principals.


=head2 ReturnValue => Bool

Returns C<true> if the request succeeds; otherwise, it returns an
error.


=head2 _request_id => Str


=cut

