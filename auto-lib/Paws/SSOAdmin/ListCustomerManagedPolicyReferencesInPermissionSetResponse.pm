
package Paws::SSOAdmin::ListCustomerManagedPolicyReferencesInPermissionSetResponse;
  use Moose;
  has CustomerManagedPolicyReferences => (is => 'ro', isa => 'ArrayRef[Paws::SSOAdmin::CustomerManagedPolicyReference]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::ListCustomerManagedPolicyReferencesInPermissionSetResponse

=head1 ATTRIBUTES


=head2 CustomerManagedPolicyReferences => ArrayRef[L<Paws::SSOAdmin::CustomerManagedPolicyReference>]

Specifies the names and paths of the customer managed policies that you
have attached to your permission set.


=head2 NextToken => Str

The pagination token for the list API. Initially the value is null. Use
the output of previous API calls to make subsequent calls.


=head2 _request_id => Str


=cut

1;