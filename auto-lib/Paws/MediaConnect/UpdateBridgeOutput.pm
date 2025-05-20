
package Paws::MediaConnect::UpdateBridgeOutput;
  use Moose;
  has BridgeArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'BridgeArn', required => 1);
  has NetworkOutput => (is => 'ro', isa => 'Paws::MediaConnect::UpdateBridgeNetworkOutputRequest', traits => ['NameInRequest'], request_name => 'networkOutput');
  has OutputName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'OutputName', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateBridgeOutput');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/bridges/{BridgeArn}/outputs/{OutputName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::UpdateBridgeOutputResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::UpdateBridgeOutput - Arguments for method UpdateBridgeOutput on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateBridgeOutput on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method UpdateBridgeOutput.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateBridgeOutput.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $UpdateBridgeOutputResponse = $mediaconnect->UpdateBridgeOutput(
      BridgeArn     => 'MyUpdateBridgeOutputRequestBridgeArnString',
      OutputName    => 'MyString',
      NetworkOutput => {
        IpAddress   => 'MyString',
        NetworkName => 'MyString',
        Port        => 1,            # OPTIONAL
        Protocol    => 'zixi-push'
        , # values: zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq; OPTIONAL
        Ttl => 1,    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $BridgeArn = $UpdateBridgeOutputResponse->BridgeArn;
    my $Output    = $UpdateBridgeOutputResponse->Output;

    # Returns a L<Paws::MediaConnect::UpdateBridgeOutputResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/UpdateBridgeOutput>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BridgeArn => Str

The Amazon Resource Name (ARN) of the bridge that you want to update.



=head2 NetworkOutput => L<Paws::MediaConnect::UpdateBridgeNetworkOutputRequest>

The network of the bridge output.



=head2 B<REQUIRED> OutputName => Str

Tname of the output that you want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateBridgeOutput in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

