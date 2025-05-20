
package Paws::Connect::GetFlowAssociationResponse;
  use Moose;
  has FlowId => (is => 'ro', isa => 'Str');
  has ResourceId => (is => 'ro', isa => 'Str');
  has ResourceType => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::GetFlowAssociationResponse

=head1 ATTRIBUTES


=head2 FlowId => Str

The identifier of the flow.


=head2 ResourceId => Str

The identifier of the resource.


=head2 ResourceType => Str

A valid resource type.

Valid values are: C<"SMS_PHONE_NUMBER">, C<"INBOUND_EMAIL">, C<"OUTBOUND_EMAIL">, C<"ANALYTICS_CONNECTOR">, C<"WHATSAPP_MESSAGING_PHONE_NUMBER">
=head2 _request_id => Str


=cut

