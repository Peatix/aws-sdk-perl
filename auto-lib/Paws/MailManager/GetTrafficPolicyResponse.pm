
package Paws::MailManager::GetTrafficPolicyResponse;
  use Moose;
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has DefaultAction => (is => 'ro', isa => 'Str');
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Str');
  has MaxMessageSizeBytes => (is => 'ro', isa => 'Int');
  has PolicyStatements => (is => 'ro', isa => 'ArrayRef[Paws::MailManager::PolicyStatement]');
  has TrafficPolicyArn => (is => 'ro', isa => 'Str');
  has TrafficPolicyId => (is => 'ro', isa => 'Str', required => 1);
  has TrafficPolicyName => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetTrafficPolicyResponse

=head1 ATTRIBUTES


=head2 CreatedTimestamp => Str

The timestamp of when the traffic policy was created.


=head2 DefaultAction => Str

The default action of the traffic policy.

Valid values are: C<"ALLOW">, C<"DENY">
=head2 LastUpdatedTimestamp => Str

The timestamp of when the traffic policy was last updated.


=head2 MaxMessageSizeBytes => Int

The maximum message size in bytes of email which is allowed in by this
traffic policyE<mdash>anything larger will be blocked.


=head2 PolicyStatements => ArrayRef[L<Paws::MailManager::PolicyStatement>]

The list of conditions which are in the traffic policy resource.


=head2 TrafficPolicyArn => Str

The Amazon Resource Name (ARN) of the traffic policy resource.


=head2 B<REQUIRED> TrafficPolicyId => Str

The identifier of the traffic policy resource.


=head2 B<REQUIRED> TrafficPolicyName => Str

A user-friendly name for the traffic policy resource.


=head2 _request_id => Str


=cut

1;