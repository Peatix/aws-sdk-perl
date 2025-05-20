
package Paws::VPCLattice::UpdateListenerResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has DefaultAction => (is => 'ro', isa => 'Paws::VPCLattice::RuleAction', traits => ['NameInRequest'], request_name => 'defaultAction');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Port => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'port');
  has Protocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocol');
  has ServiceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceArn');
  has ServiceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::UpdateListenerResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the listener.


=head2 DefaultAction => L<Paws::VPCLattice::RuleAction>

The action for the default rule.


=head2 Id => Str

The ID of the listener.


=head2 Name => Str

The name of the listener.


=head2 Port => Int

The listener port.


=head2 Protocol => Str

The protocol of the listener.

Valid values are: C<"HTTP">, C<"HTTPS">, C<"TLS_PASSTHROUGH">
=head2 ServiceArn => Str

The Amazon Resource Name (ARN) of the service.


=head2 ServiceId => Str

The ID of the service.


=head2 _request_id => Str


=cut

