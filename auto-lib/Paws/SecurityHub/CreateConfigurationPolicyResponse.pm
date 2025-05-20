
package Paws::SecurityHub::CreateConfigurationPolicyResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str');
  has ConfigurationPolicy => (is => 'ro', isa => 'Paws::SecurityHub::Policy');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has Id => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str');
  has UpdatedAt => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::CreateConfigurationPolicyResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the configuration policy.


=head2 ConfigurationPolicy => L<Paws::SecurityHub::Policy>

An object that defines how Security Hub is configured. It includes
whether Security Hub is enabled or disabled, a list of enabled security
standards, a list of enabled or disabled security controls, and a list
of custom parameter values for specified controls. If the request
included a list of security controls that are enabled in the
configuration policy, Security Hub disables all other controls
(including newly released controls). If the request included a list of
security controls that are disabled in the configuration policy,
Security Hub enables all other controls (including newly released
controls).


=head2 CreatedAt => Str

The date and time, in UTC and ISO 8601 format, that the configuration
policy was created.


=head2 Description => Str

The description of the configuration policy.


=head2 Id => Str

The universally unique identifier (UUID) of the configuration policy.


=head2 Name => Str

The name of the configuration policy.


=head2 UpdatedAt => Str

The date and time, in UTC and ISO 8601 format, that the configuration
policy was last updated.


=head2 _request_id => Str


=cut

