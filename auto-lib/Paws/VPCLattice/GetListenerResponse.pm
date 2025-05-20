
package Paws::VPCLattice::GetListenerResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has DefaultAction => (is => 'ro', isa => 'Paws::VPCLattice::RuleAction', traits => ['NameInRequest'], request_name => 'defaultAction');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has Port => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'port');
  has Protocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocol');
  has ServiceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceArn');
  has ServiceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::GetListenerResponse

=head1 ATTRIBUTES


=head2 Arn => Str

The Amazon Resource Name (ARN) of the listener.


=head2 CreatedAt => Str

The date and time that the listener was created, in ISO-8601 format.


=head2 DefaultAction => L<Paws::VPCLattice::RuleAction>

The actions for the default listener rule.


=head2 Id => Str

The ID of the listener.


=head2 LastUpdatedAt => Str

The date and time that the listener was last updated, in ISO-8601
format.


=head2 Name => Str

The name of the listener.


=head2 Port => Int

The listener port.


=head2 Protocol => Str

The listener protocol.

Valid values are: C<"HTTP">, C<"HTTPS">, C<"TLS_PASSTHROUGH">
=head2 ServiceArn => Str

The Amazon Resource Name (ARN) of the service.


=head2 ServiceId => Str

The ID of the service.


=head2 _request_id => Str


=cut

