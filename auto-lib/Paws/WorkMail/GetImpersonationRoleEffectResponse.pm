
package Paws::WorkMail::GetImpersonationRoleEffectResponse;
  use Moose;
  has Effect => (is => 'ro', isa => 'Str');
  has MatchedRules => (is => 'ro', isa => 'ArrayRef[Paws::WorkMail::ImpersonationMatchedRule]');
  has Type => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::GetImpersonationRoleEffectResponse

=head1 ATTRIBUTES


=head2 Effect => Str

C<Effect of the impersonation role on the target user based on its
rules. Available effects are C<ALLOW> or C<DENY>.>

Valid values are: C<"ALLOW">, C<"DENY">
=head2 MatchedRules => ArrayRef[L<Paws::WorkMail::ImpersonationMatchedRule>]

A list of the rules that match the input and produce the configured
effect.


=head2 Type => Str

The impersonation role type.

Valid values are: C<"FULL_ACCESS">, C<"READ_ONLY">
=head2 _request_id => Str


=cut

1;