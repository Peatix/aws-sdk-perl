
package Paws::VPCLattice::GetResourceConfigurationResponse;
  use Moose;
  has AllowAssociationToShareableServiceNetwork => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'allowAssociationToShareableServiceNetwork');
  has AmazonManaged => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'amazonManaged');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has CustomDomainName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'customDomainName');
  has FailureReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'failureReason');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
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

Paws::VPCLattice::GetResourceConfigurationResponse

=head1 ATTRIBUTES


=head2 AllowAssociationToShareableServiceNetwork => Bool

Specifies whether the resource configuration is associated with a
sharable service network.


=head2 AmazonManaged => Bool

Indicates whether the resource configuration was created and is managed
by Amazon.


=head2 Arn => Str

The Amazon Resource Name (ARN) of the resource configuration.


=head2 CreatedAt => Str

The date and time that the resource configuration was created, in
ISO-8601 format.


=head2 CustomDomainName => Str

The custom domain name of the resource configuration.


=head2 FailureReason => Str

The reason the create-resource-configuration request failed.


=head2 Id => Str

The ID of the resource configuration.


=head2 LastUpdatedAt => Str

The most recent date and time that the resource configuration was
updated, in ISO-8601 format.


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

The ID of the resource gateway used to connect to the resource
configuration in a given VPC. You can specify the resource gateway
identifier only for resource configurations with type SINGLE, GROUP, or
ARN.


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

