
package Paws::SecurityHub::GetConfigurationPolicyAssociationResponse;
  use Moose;
  has AssociationStatus => (is => 'ro', isa => 'Str');
  has AssociationStatusMessage => (is => 'ro', isa => 'Str');
  has AssociationType => (is => 'ro', isa => 'Str');
  has ConfigurationPolicyId => (is => 'ro', isa => 'Str');
  has TargetId => (is => 'ro', isa => 'Str');
  has TargetType => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::GetConfigurationPolicyAssociationResponse

=head1 ATTRIBUTES


=head2 AssociationStatus => Str

The current status of the association between the specified target and
the configuration.

Valid values are: C<"PENDING">, C<"SUCCESS">, C<"FAILED">
=head2 AssociationStatusMessage => Str

The explanation for a C<FAILED> value for C<AssociationStatus>.


=head2 AssociationType => Str

Indicates whether the association between the specified target and the
configuration was directly applied by the Security Hub delegated
administrator or inherited from a parent.

Valid values are: C<"INHERITED">, C<"APPLIED">
=head2 ConfigurationPolicyId => Str

The universally unique identifier (UUID) of a configuration policy. For
self-managed behavior, the value is C<SELF_MANAGED_SECURITY_HUB>.


=head2 TargetId => Str

The target account ID, organizational unit ID, or the root ID for which
the association is retrieved.


=head2 TargetType => Str

Specifies whether the target is an Amazon Web Services account,
organizational unit, or the organization root.

Valid values are: C<"ACCOUNT">, C<"ORGANIZATIONAL_UNIT">, C<"ROOT">
=head2 UpdatedAt => Str

The date and time, in UTC and ISO 8601 format, that the configuration
policy association was last updated.


=head2 _request_id => Str


=cut

