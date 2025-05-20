
package Paws::VPCLattice::UpdateResourceConfigurationResponse;
  use Moose;
  has AllowAssociationToShareableServiceNetwork => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'allowAssociationToShareableServiceNetwork');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
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

Paws::VPCLattice::UpdateResourceConfigurationResponse

=head1 ATTRIBUTES


=head2 AllowAssociationToShareableServiceNetwork => Bool

Indicates whether to add the resource configuration to service networks
that are shared with other accounts.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the resource configuration.


=head2 Id => Str

The ID of the resource configuration.


=head2 Name => Str

The name of the resource configuration.


=head2 PortRanges => ArrayRef[Str|Undef]

The TCP port ranges that a consumer can use to access a resource
configuration. You can separate port ranges with a comma. Example:
1-65535 or 1,2,22-30


=head2 Protocol => Str

The TCP protocol accepted by the specified resource configuration.

Valid values are: C<"TCP">
=head2 ResourceConfigurationDefinition => L<Paws::VPCLattice::ResourceConfigurationDefinition>

The resource configuration.


=head2 ResourceConfigurationGroupId => Str

The ID of the group resource configuration.


=head2 ResourceGatewayId => Str

The ID of the resource gateway associated with the resource
configuration.


=head2 Status => Str

The status of the resource configuration.

Valid values are: C<"ACTIVE">, C<"CREATE_IN_PROGRESS">, C<"UPDATE_IN_PROGRESS">, C<"DELETE_IN_PROGRESS">, C<"CREATE_FAILED">, C<"UPDATE_FAILED">, C<"DELETE_FAILED">
=head2 Type => Str

The type of resource configuration.

=over

=item *

C<SINGLE> - A single resource.

=item *

C<GROUP> - A group of resources.

=item *

C<CHILD> - A single resource that is part of a group resource
configuration.

=item *

C<ARN> - An Amazon Web Services resource.

=back


Valid values are: C<"GROUP">, C<"CHILD">, C<"SINGLE">, C<"ARN">
=head2 _request_id => Str


=cut

