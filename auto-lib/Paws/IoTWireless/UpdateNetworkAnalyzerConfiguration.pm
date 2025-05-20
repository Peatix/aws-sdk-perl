
package Paws::IoTWireless::UpdateNetworkAnalyzerConfiguration;
  use Moose;
  has ConfigurationName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ConfigurationName', required => 1);
  has Description => (is => 'ro', isa => 'Str');
  has MulticastGroupsToAdd => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has MulticastGroupsToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TraceContent => (is => 'ro', isa => 'Paws::IoTWireless::TraceContent');
  has WirelessDevicesToAdd => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has WirelessDevicesToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has WirelessGatewaysToAdd => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has WirelessGatewaysToRemove => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateNetworkAnalyzerConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/network-analyzer-configurations/{ConfigurationName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::UpdateNetworkAnalyzerConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::UpdateNetworkAnalyzerConfiguration - Arguments for method UpdateNetworkAnalyzerConfiguration on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNetworkAnalyzerConfiguration on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method UpdateNetworkAnalyzerConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNetworkAnalyzerConfiguration.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $UpdateNetworkAnalyzerConfigurationResponse =
      $api . iotwireless->UpdateNetworkAnalyzerConfiguration(
      ConfigurationName    => 'MyNetworkAnalyzerConfigurationName',
      Description          => 'MyDescription',                        # OPTIONAL
      MulticastGroupsToAdd => [
        'MyMulticastGroupId', ...                                     # max: 256
      ],    # OPTIONAL
      MulticastGroupsToRemove => [
        'MyMulticastGroupId', ...    # max: 256
      ],    # OPTIONAL
      TraceContent => {
        LogLevel           => 'INFO',  # values: INFO, ERROR, DISABLED; OPTIONAL
        MulticastFrameInfo => 'ENABLED',   # values: ENABLED, DISABLED; OPTIONAL
        WirelessDeviceFrameInfo =>
          'ENABLED',                       # values: ENABLED, DISABLED; OPTIONAL
      },    # OPTIONAL
      WirelessDevicesToAdd => [
        'MyWirelessDeviceId', ...    # max: 256
      ],    # OPTIONAL
      WirelessDevicesToRemove => [
        'MyWirelessDeviceId', ...    # max: 256
      ],    # OPTIONAL
      WirelessGatewaysToAdd => [
        'MyWirelessGatewayId', ...    # max: 256
      ],    # OPTIONAL
      WirelessGatewaysToRemove => [
        'MyWirelessGatewayId', ...    # max: 256
      ],    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/UpdateNetworkAnalyzerConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ConfigurationName => Str





=head2 Description => Str





=head2 MulticastGroupsToAdd => ArrayRef[Str|Undef]

Multicast group resources to add to the network analyzer configuration.
Provide the C<MulticastGroupId> of the resource to add in the input
array.



=head2 MulticastGroupsToRemove => ArrayRef[Str|Undef]

Multicast group resources to remove from the network analyzer
configuration. Provide the C<MulticastGroupId> of the resources to
remove in the input array.



=head2 TraceContent => L<Paws::IoTWireless::TraceContent>





=head2 WirelessDevicesToAdd => ArrayRef[Str|Undef]

Wireless device resources to add to the network analyzer configuration.
Provide the C<WirelessDeviceId> of the resource to add in the input
array.



=head2 WirelessDevicesToRemove => ArrayRef[Str|Undef]

Wireless device resources to remove from the network analyzer
configuration. Provide the C<WirelessDeviceId> of the resources to
remove in the input array.



=head2 WirelessGatewaysToAdd => ArrayRef[Str|Undef]

Wireless gateway resources to add to the network analyzer
configuration. Provide the C<WirelessGatewayId> of the resource to add
in the input array.



=head2 WirelessGatewaysToRemove => ArrayRef[Str|Undef]

Wireless gateway resources to remove from the network analyzer
configuration. Provide the C<WirelessGatewayId> of the resources to
remove in the input array.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateNetworkAnalyzerConfiguration in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

