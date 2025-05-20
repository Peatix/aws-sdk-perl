
package Paws::WorkMail::GetImpersonationRoleResponse;
  use Moose;
  has DateCreated => (is => 'ro', isa => 'Str');
  has DateModified => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has ImpersonationRoleId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has Rules => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::ImpersonationRule]');
  has Type => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::GetImpersonationRoleResponse

=head1 ATTRIBUTES


=head2 DateCreated => Str

The date when the impersonation role was created.


=head2 DateModified => Str

The date when the impersonation role was last modified.


=head2 Description => Str

The impersonation role description.


=head2 ImpersonationRoleId => Str

The impersonation role ID.


=head2 Name => Str

The impersonation role name.


=head2 Rules => ArrayRef[L<Paws::WorkMail::ImpersonationRule>]

The list of rules for the given impersonation role.


=head2 Type => Str

The impersonation role type.

Valid values are: C<"FULL_ACCESS">, C<"READ_ONLY">
=head2 _request_id => Str


=cut

1;