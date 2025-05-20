
package Paws::MediaConnect::AddBridgeOutputs;
  use Moose;
  has BridgeArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'BridgeArn', required => 1);
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::MediaConnect::AddBridgeOutputRequest]', traits => ['NameInRequest'], request_name => 'outputs', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddBridgeOutputs');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/bridges/{BridgeArn}/outputs');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MediaConnect::AddBridgeOutputsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MediaConnect::AddBridgeOutputs - Arguments for method AddBridgeOutputs on L<Paws::MediaConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddBridgeOutputs on the
L<AWS MediaConnect|Paws::MediaConnect> service. Use the attributes of this class
as arguments to method AddBridgeOutputs.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddBridgeOutputs.

=head1 SYNOPSIS

    my $mediaconnect = Paws->service('MediaConnect');
    my $AddBridgeOutputsResponse = $mediaconnect->AddBridgeOutputs(
      BridgeArn => 'MyAddBridgeOutputsRequestBridgeArnString',
      Outputs   => [
        {
          NetworkOutput => {
            IpAddress   => 'MyString',
            Name        => 'MyString',
            NetworkName => 'MyString',
            Port        => 1,
            Protocol    => 'zixi-push'
            , # values: zixi-push, rtp-fec, rtp, zixi-pull, rist, st2110-jpegxs, cdi, srt-listener, srt-caller, fujitsu-qos, udp, ndi-speed-hq
            Ttl => 1,

          },    # OPTIONAL
        },
        ...
      ],

    );

    # Results:
    my $BridgeArn = $AddBridgeOutputsResponse->BridgeArn;
    my $Outputs   = $AddBridgeOutputsResponse->Outputs;

    # Returns a L<Paws::MediaConnect::AddBridgeOutputsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mediaconnect/AddBridgeOutputs>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BridgeArn => Str

The Amazon Resource Name (ARN) of the bridge that you want to update.



=head2 B<REQUIRED> Outputs => ArrayRef[L<Paws::MediaConnect::AddBridgeOutputRequest>]

The outputs that you want to add to this bridge.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddBridgeOutputs in L<Paws::MediaConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

