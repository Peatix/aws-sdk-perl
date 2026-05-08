
package Paws::ES::ListVpcEndpointAccessResponse;
  use Moose;
  has AuthorizedPrincipalList => (is => 'ro', isa => 'ArrayRef[Paws::ES::AuthorizedPrincipal]', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ListVpcEndpointAccessResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AuthorizedPrincipalList => ArrayRef[L<Paws::ES::AuthorizedPrincipal>]

List of C<AuthorizedPrincipal> describing the details of the
permissions to manage VPC endpoints against the specified domain.


=head2 B<REQUIRED> NextToken => Str

Provides an identifier to allow retrieval of paginated results.


=head2 _request_id => Str


=cut

