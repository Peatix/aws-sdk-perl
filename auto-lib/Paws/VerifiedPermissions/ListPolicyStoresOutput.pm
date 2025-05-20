
package Paws::VerifiedPermissions::ListPolicyStoresOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has PolicyStores => (is => 'ro', isa => 'ArrayRef[Paws::VerifiedPermissions::PolicyStoreItem]', traits => ['NameInRequest'], request_name => 'policyStores' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::ListPolicyStoresOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If present, this value indicates that more output is available than is
included in the current response. Use this value in the C<NextToken>
request parameter in a subsequent call to the operation to get the next
part of the output. You should repeat this until the C<NextToken>
response element comes back as C<null>. This indicates that this is the
last page of results.


=head2 B<REQUIRED> PolicyStores => ArrayRef[L<Paws::VerifiedPermissions::PolicyStoreItem>]

The list of policy stores in the account.


=head2 _request_id => Str


=cut

1;