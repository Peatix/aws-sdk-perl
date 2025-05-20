
package Paws::SecretsManager::ValidateResourcePolicyResponse;
  use Moose;
  has PolicyValidationPassed => (is => 'ro', isa => 'Bool');
  has ValidationErrors => (is => 'ro', isa => 'ArrayRef[Paws::SecretsManager::ValidationErrorsEntry]');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SecretsManager::ValidateResourcePolicyResponse

=head1 ATTRIBUTES


=head2 PolicyValidationPassed => Bool

True if your policy passes validation, otherwise false.


=head2 ValidationErrors => ArrayRef[L<Paws::SecretsManager::ValidationErrorsEntry>]

Validation errors if your policy didn't pass validation.


=head2 _request_id => Str


=cut

1;