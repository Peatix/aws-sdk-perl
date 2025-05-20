
package Paws::MediaConnect::UpdateBridgeSource;
  use Moose;
  has BridgeArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'BridgeArn', required => 1);
  has FlowSource => (is => 'ro', isa => 'Paws::MediaConnect::UpdateBridgeFlowSourceRequest', traits => ['NameInRequest'], request_name => 'flowSource');
  has NetworkSource => (is => 'ro', isa => 'Paws::MediaConnect::UpdateBridgeNetworkSourceRequest', traits => ['NameInRequest'], request_name => 'networkSource');
  has SourceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'SourceName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBridgeSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/bridges/{BridgeArn}/sources/{SourceName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::UpdateBridgeSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateBridgeSource - Arguments for method UpdateBridgeSource on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBridgeSource on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method UpdateBridgeSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBridgeSource.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $UpdateBridgeSourceResponse = $mediaconnect->UpdateBridgeSource(
      BridgeArn  => 'MyUpdateBridgeSourceRequestBridgeArnString',
      SourceName => 'MyString',
      FlowSource => {
        FlowArn => 'MyUpdateBridgeFlowSourceRequestFlowArnString',    # OPTIONAL
        FlowVpcInterfaceAttachment => { VpcInterfaceName => 'MyString', }
        ,                                                             # OPTIONAL
      },    # OPTIONAL
      NetworkSource => {
        MulticastIp             => 'MyString',
        MulticastSourceSettings => { MulticastSourceIp => 'MyString', }
        ,                            # OPTIONAL
        NetworkName => 'MyString',
        Port        => 1,            # OPTIONAL
        Protocol    => 'zixi-push'
        , # values: zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $BridgeArn = $UpdateBridgeSourceResponse->BridgeArn;
    my $Source    = $UpdateBridgeSourceResponse->Source;

    # Returns a L<Paws::MediaConnect::UpdateBridgeSourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/UpdateBridgeSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BridgeArn => Str

The Amazon Resource Name (ARN) of the bridge that you want to update.



=head2 FlowSource => L<Paws::MediaConnect::UpdateBridgeFlowSourceRequest>

The name of the flow that you want to update.



=head2 NetworkSource => L<Paws::MediaConnect::UpdateBridgeNetworkSourceRequest>

The network for the bridge source.



=head2 B<REQUIRED> SourceName => Str

The name of the source that you want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBridgeSource in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

