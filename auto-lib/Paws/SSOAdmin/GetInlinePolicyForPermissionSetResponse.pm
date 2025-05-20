
package Paws::SSOAdmin::GetInlinePolicyForPermissionSetResponse;
  use Moose;
  has InlinePolicy => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::GetInlinePolicyForPermissionSetResponse

=head1 ATTRIBUTES


=head2 InlinePolicy => Str

The inline policy that is attached to the permission set.

For C<Length Constraints>, if a valid ARN is provided for a permission
set, it is possible for an empty inline policy to be returned.


=head2 _request_id => Str


=cut

1;