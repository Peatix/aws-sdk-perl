
package Paws::NetworkManager::CreateDirectConnectGatewayAttachment;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has CoreNetworkId => (is => 'ro', isa => 'Str', required => 1);
  has DirectConnectGatewayArn => (is => 'ro', isa => 'Str', required => 1);
  has EdgeLocations => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDirectConnectGatewayAttachment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/direct-connect-gateway-attachments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::CreateDirectConnectGatewayAttachmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CreateDirectConnectGatewayAttachment - Arguments for method CreateDirectConnectGatewayAttachment on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDirectConnectGatewayAttachment on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method CreateDirectConnectGatewayAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDirectConnectGatewayAttachment.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $CreateDirectConnectGatewayAttachmentResponse =
      $networkmanager->CreateDirectConnectGatewayAttachment(
      CoreNetworkId           => 'MyCoreNetworkId',
      DirectConnectGatewayArn => 'MyDirectConnectGatewayArn',
      EdgeLocations           => [
        'MyExternalRegionCode', ...    # min: 1, max: 63
      ],
      ClientToken => 'MyClientToken',    # OPTIONAL
      Tags        => [
        {
          Key   => 'MyTagKey',      # max: 10000000; OPTIONAL
          Value => 'MyTagValue',    # max: 10000000; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $DirectConnectGatewayAttachment =
      $CreateDirectConnectGatewayAttachmentResponse
      ->DirectConnectGatewayAttachment;

# Returns a L<Paws::NetworkManager::CreateDirectConnectGatewayAttachmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/CreateDirectConnectGatewayAttachment>

=head1 ATTRIBUTES


=head2 ClientToken => Str

client token



=head2 B<REQUIRED> CoreNetworkId => Str

The ID of the Cloud WAN core network that the Direct Connect gateway
attachment should be attached to.



=head2 B<REQUIRED> DirectConnectGatewayArn => Str

The ARN of the Direct Connect gateway attachment.



=head2 B<REQUIRED> EdgeLocations => ArrayRef[Str|Undef]

One or more core network edge locations that the Direct Connect gateway
attachment is associated with.



=head2 Tags => ArrayRef[L<Paws::NetworkManager::Tag>]

The key value tags to apply to the Direct Connect gateway attachment
during creation.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDirectConnectGatewayAttachment in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

