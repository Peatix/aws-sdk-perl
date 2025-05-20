
package Paws::IoTManagedIntegrations::ListManagedThings;
  use Moose;
  has ConnectorPolicyIdFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'ConnectorPolicyIdFilter');
  has CredentialLockerFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'CredentialLockerFilter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has OwnerFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'OwnerFilter');
  has ParentControllerIdentifierFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'ParentControllerIdentifierFilter');
  has ProvisioningStatusFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'ProvisioningStatusFilter');
  has RoleFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'RoleFilter');
  has SerialNumberFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'SerialNumberFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListManagedThings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/managed-things');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTManagedIntegrations::ListManagedThingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTManagedIntegrations::ListManagedThings - Arguments for method ListManagedThings on L<Paws::IoTManagedIntegrations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListManagedThings on the
L<Managed integrations for AWS IoT Device Management|Paws::IoTManagedIntegrations> service. Use the attributes of this class
as arguments to method ListManagedThings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListManagedThings.

=head1 SYNOPSIS

    my $api.iotmanagedintegrations = Paws->service('IoTManagedIntegrations');
    my $ListManagedThingsResponse =
      $api . iotmanagedintegrations->ListManagedThings(
      ConnectorPolicyIdFilter          => 'MyConnectorPolicyId',     # OPTIONAL
      CredentialLockerFilter           => 'MyCredentialLockerId',    # OPTIONAL
      MaxResults                       => 1,                         # OPTIONAL
      NextToken                        => 'MyNextToken',             # OPTIONAL
      OwnerFilter                      => 'MyOwner',                 # OPTIONAL
      ParentControllerIdentifierFilter => 'MyParentControllerId',    # OPTIONAL
      ProvisioningStatusFilter         => 'UNASSOCIATED',            # OPTIONAL
      RoleFilter                       => 'CONTROLLER',              # OPTIONAL
      SerialNumberFilter               => 'MySerialNumber',          # OPTIONAL
      );

    # Results:
    my $Items     = $ListManagedThingsResponse->Items;
    my $NextToken = $ListManagedThingsResponse->NextToken;

  # Returns a L<Paws::IoTManagedIntegrations::ListManagedThingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotmanagedintegrations/ListManagedThings>

=head1 ATTRIBUTES


=head2 ConnectorPolicyIdFilter => Str

Filter on a connector policy id for a managed thing.



=head2 CredentialLockerFilter => Str

Filter on a credential locker for a managed thing.



=head2 MaxResults => Int

The maximum number of results to return at one time.



=head2 NextToken => Str

A token that can be used to retrieve the next set of results.



=head2 OwnerFilter => Str

Filter on device owners when listing managed things.



=head2 ParentControllerIdentifierFilter => Str

Filter on a parent controller id for a managed thing.



=head2 ProvisioningStatusFilter => Str

Filter on the status of the device.

Valid values are: C<"UNASSOCIATED">, C<"PRE_ASSOCIATED">, C<"DISCOVERED">, C<"ACTIVATED">, C<"DELETION_FAILED">, C<"DELETE_IN_PROGRESS">, C<"ISOLATED">, C<"DELETED">

=head2 RoleFilter => Str

Filter on the type of device used. This will be the Amazon Web Services
hub controller, cloud device, or IoT device.

Valid values are: C<"CONTROLLER">, C<"DEVICE">

=head2 SerialNumberFilter => Str

Filter on the serial number of the device.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListManagedThings in L<Paws::IoTManagedIntegrations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

