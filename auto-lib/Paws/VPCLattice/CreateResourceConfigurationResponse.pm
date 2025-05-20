
package Paws::VPCLattice::CreateResourceConfigurationResponse;
  use Moose;
  has AllowAssociationToShareableServiceNetwork => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'allowAssociationToShareableServiceNetwork');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has FailureReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureReason');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has PortRanges => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'portRanges');
  has Protocol => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'protocol');
  has ResourceConfigurationDefinition => (is => 'ro', isa => 'Paws::VPCLattice::ResourceConfigurationDefinition', traits => ['NameInRequest'], request_name => 'resourceConfigurationDefinition');
  has ResourceConfigurationGroupId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceConfigurationGroupId');
  has ResourceGatewayId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceGatewayId');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::CreateResourceConfigurationResponse

=head1 ATTRIBUTES


=head2 AllowAssociationToShareableServiceNetwork => Bool

Specifies whether the resource configuration can be associated with a
sharable service network.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the resource configuration.


=head2 CreatedAt => Str

The date and time that the resource configuration was created, in
ISO-8601 format.


=head2 FailureReason => Str

The reason that the request failed.


=head2 Id => Str

The ID of the resource configuration.


=head2 Name => Str

The name of the resource configuration.


=head2 PortRanges => ArrayRef[Str|Undef]

The port range.


=head2 Protocol => Str

The protocol.

Valid values are: C<"TCP">
=head2 ResourceConfigurationDefinition => L<Paws::VPCLattice::ResourceConfigurationDefinition>

The resource configuration.


=head2 ResourceConfigurationGroupId => Str

The ID of the parent resource configuration (type is GROUP).


=head2 ResourceGatewayId => Str

The ID of the resource gateway associated with the resource
configuration.


=head2 Status => Str

The current status of the resource configuration.

Valid values are: C<"ACTIVE">, C<"CREATE_IN_PROGRESS">, C<"UPDATE_IN_PROGRESS">, C<"DELETE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"UPDATE_FAILED">, C<"DELETE_FAILED">
=head2 Type => Str

The type of resource configuration.

Valid values are: C<"GROUP">, C<"CHILD">, C<"SINGLE">, C<"ARN">
=head2 _request_id => Str


=cut

