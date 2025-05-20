
package Paws::MailManager::GetIngressPointResponse;
  use Moose;
  has ARecord => (is => 'ro', isa => 'Str');
  has CreatedTimestamp => (is => 'ro', isa => 'Str');
  has IngressPointArn => (is => 'ro', isa => 'Str');
  has IngressPointAuthConfiguration => (is => 'ro', isa => 'Paws::MailManager::IngressPointAuthConfiguration');
  has IngressPointId => (is => 'ro', isa => 'Str', required => 1);
  has IngressPointName => (is => 'ro', isa => 'Str', required => 1);
  has LastUpdatedTimestamp => (is => 'ro', isa => 'Str');
  has NetworkConfiguration => (is => 'ro', isa => 'Paws::MailManager::NetworkConfiguration');
  has RuleSetId => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');
  has TrafficPolicyId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::MailManager::GetIngressPointResponse

=head1 ATTRIBUTES


=head2 ARecord => Str

The DNS A Record that identifies your ingress endpoint. Configure your
DNS Mail Exchange (MX) record with this value to route emails to Mail
Manager.


=head2 CreatedTimestamp => Str

The timestamp of when the ingress endpoint was created.


=head2 IngressPointArn => Str

The Amazon Resource Name (ARN) of the ingress endpoint resource.


=head2 IngressPointAuthConfiguration => L<Paws::MailManager::IngressPointAuthConfiguration>

The authentication configuration of the ingress endpoint resource.


=head2 B<REQUIRED> IngressPointId => Str

The identifier of an ingress endpoint resource.


=head2 B<REQUIRED> IngressPointName => Str

A user friendly name for the ingress endpoint.


=head2 LastUpdatedTimestamp => Str

The timestamp of when the ingress endpoint was last updated.


=head2 NetworkConfiguration => L<Paws::MailManager::NetworkConfiguration>

The network configuration for the ingress point.


=head2 RuleSetId => Str

The identifier of a rule set resource associated with the ingress
endpoint.


=head2 Status => Str

The status of the ingress endpoint resource.

Valid values are: C<"PROVISIONING">, C<"DEPROVISIONING">, C<"UPDATING">, C<"ACTIVE">, C<"CLOSED">, C<"FAILED">
=head2 TrafficPolicyId => Str

The identifier of the traffic policy resource associated with the
ingress endpoint.


=head2 Type => Str

The type of ingress endpoint.

Valid values are: C<"OPEN">, C<"AUTH">
=head2 _request_id => Str


=cut

1;