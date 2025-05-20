
package Paws::MediaConnect::AddBridgeSources;
  use Moose;
  has BridgeArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'BridgeArn', required => 1);
  has Sources => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::AddBridgeSourceRequest]', traits => ['NameInRequest'], request_name => 'sources', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddBridgeSources');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/bridges/{BridgeArn}/sources');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::AddBridgeSourcesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::AddBridgeSources - Arguments for method AddBridgeSources on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddBridgeSources on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method AddBridgeSources.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddBridgeSources.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $AddBridgeSourcesResponse = $mediaconnect->AddBridgeSources(
      BridgeArn => 'MyBridgeArn',
      Sources   => [
        {
          FlowSource => {
            FlowArn => 'MyAddBridgeFlowSourceRequestFlowArnString',
            Name    => 'MyString',
            FlowVpcInterfaceAttachment => { VpcInterfaceName => 'MyString', }
            ,    # OPTIONAL
          },    # OPTIONAL
          NetworkSource => {
            MulticastIp => 'MyString',
            Name        => 'MyString',
            NetworkName => 'MyString',
            Port        => 1,
            Protocol    => 'zixi-push'
            , # values: zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq
            MulticastSourceSettings => { MulticastSourceIp => 'MyString', }
            ,    # OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $BridgeArn = $AddBridgeSourcesResponse->BridgeArn;
    my $Sources   = $AddBridgeSourcesResponse->Sources;

    # Returns a L<Paws::MediaConnect::AddBridgeSourcesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/AddBridgeSources>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BridgeArn => Str

The Amazon Resource Name (ARN) of the bridge that you want to update.



=head2 B<REQUIRED> Sources => ArrayRef[L<Paws::MediaConnect::AddBridgeSourceRequest>]

The sources that you want to add to this bridge.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddBridgeSources in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

