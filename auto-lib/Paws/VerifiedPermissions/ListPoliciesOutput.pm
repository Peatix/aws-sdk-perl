
package Paws::VerifiedPermissions::ListPoliciesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Policies => (is => 'ro', isa => 'ArrayRef[Paws::VerifiedPermissions::PolicyItem]', traits => ['NameInRequest'], request_name => 'policies' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::VerifiedPermissions::ListPoliciesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

If present, this value indicates that more output is available than is
included in the current response. Use this value in the C<NextToken>
request parameter in a subsequent call to the operation to get the next
part of the output. You should repeat this until the C<NextToken>
response element comes back as C<null>. This indicates that this is the
last page of results.


=head2 B<REQUIRED> Policies => ArrayRef[L<Paws::VerifiedPermissions::PolicyItem>]

Lists all policies that are available in the specified policy store.


=head2 _request_id => Str


=cut

1;