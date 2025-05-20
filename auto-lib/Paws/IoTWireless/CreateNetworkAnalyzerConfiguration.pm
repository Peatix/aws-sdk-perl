
package Paws::IoTWireless::CreateNetworkAnalyzerConfiguration;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has MulticastGroups => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::IoTWireless::Tag]');
  has TraceContent => (is => 'ro', isa => 'Paws::IoTWireless::TraceContent');
  has WirelessDevices => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has WirelessGateways => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNetworkAnalyzerConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/network-analyzer-configurations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::IoTWireless::CreateNetworkAnalyzerConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IoTWireless::CreateNetworkAnalyzerConfiguration - Arguments for method CreateNetworkAnalyzerConfiguration on L<Paws::IoTWireless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNetworkAnalyzerConfiguration on the
L<AWS IoT Wireless|Paws::IoTWireless> service. Use the attributes of this class
as arguments to method CreateNetworkAnalyzerConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNetworkAnalyzerConfiguration.

=head1 SYNOPSIS

    my $api.iotwireless = Paws->service('IoTWireless');
    my $CreateNetworkAnalyzerConfigurationResponse =
      $api . iotwireless->CreateNetworkAnalyzerConfiguration(
      Name               => 'MyNetworkAnalyzerConfigurationName',
      ClientRequestToken => 'MyClientRequestToken',                 # OPTIONAL
      Description        => 'MyDescription',                        # OPTIONAL
      MulticastGroups    => [
        'MyMulticastGroupId', ...                                   # max: 256
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      TraceContent => {
        LogLevel           => 'INFO',  # values: INFO, ERROR, DISABLED; OPTIONAL
        MulticastFrameInfo => 'ENABLED',   # values: ENABLED, DISABLED; OPTIONAL
        WirelessDeviceFrameInfo =>
          'ENABLED',                       # values: ENABLED, DISABLED; OPTIONAL
      },    # OPTIONAL
      WirelessDevices => [
        'MyWirelessDeviceId', ...    # max: 256
      ],    # OPTIONAL
      WirelessGateways => [
        'MyWirelessGatewayId', ...    # max: 256
      ],    # OPTIONAL
      );

    # Results:
    my $Arn  = $CreateNetworkAnalyzerConfigurationResponse->Arn;
    my $Name = $CreateNetworkAnalyzerConfigurationResponse->Name;

# Returns a L<Paws::IoTWireless::CreateNetworkAnalyzerConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.iotwireless/CreateNetworkAnalyzerConfiguration>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str





=head2 Description => Str





=head2 MulticastGroups => ArrayRef[Str|Undef]

Multicast Group resources to add to the network analyzer configruation.
Provide the C<MulticastGroupId> of the resource to add in the input
array.



=head2 B<REQUIRED> Name => Str





=head2 Tags => ArrayRef[L<Paws::IoTWireless::Tag>]





=head2 TraceContent => L<Paws::IoTWireless::TraceContent>





=head2 WirelessDevices => ArrayRef[Str|Undef]

Wireless device resources to add to the network analyzer configuration.
Provide the C<WirelessDeviceId> of the resource to add in the input
array.



=head2 WirelessGateways => ArrayRef[Str|Undef]

Wireless gateway resources to add to the network analyzer
configuration. Provide the C<WirelessGatewayId> of the resource to add
in the input array.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNetworkAnalyzerConfiguration in L<Paws::IoTWireless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

