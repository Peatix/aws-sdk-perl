
package Paws::NetworkManager::CreateConnectAttachment;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has CoreNetworkId => (is => 'ro', isa => 'Str', required => 1);
  has EdgeLocation => (is => 'ro', isa => 'Str', required => 1);
  has Options => (is => 'ro', isa => 'Paws::NetworkManager::ConnectAttachmentOptions', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Tag]');
  has TransportAttachmentId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateConnectAttachment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/connect-attachments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::CreateConnectAttachmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CreateConnectAttachment - Arguments for method CreateConnectAttachment on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateConnectAttachment on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method CreateConnectAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateConnectAttachment.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $CreateConnectAttachmentResponse =
      $networkmanager->CreateConnectAttachment(
      CoreNetworkId => 'MyCoreNetworkId',
      EdgeLocation  => 'MyExternalRegionCode',
      Options       => {
        Protocol => 'GRE',    # values: GRE, NO_ENCAP; OPTIONAL
      },
      TransportAttachmentId => 'MyAttachmentId',
      ClientToken           => 'MyClientToken',    # OPTIONAL
      Tags                  => [
        {
          Key   => 'MyTagKey',      # max: 10000000; OPTIONAL
          Value => 'MyTagValue',    # max: 10000000; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $ConnectAttachment = $CreateConnectAttachmentResponse->ConnectAttachment;

    # Returns a L<Paws::NetworkManager::CreateConnectAttachmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/CreateConnectAttachment>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client token associated with the request.



=head2 B<REQUIRED> CoreNetworkId => Str

The ID of a core network where you want to create the attachment.



=head2 B<REQUIRED> EdgeLocation => Str

The Region where the edge is located.



=head2 B<REQUIRED> Options => L<Paws::NetworkManager::ConnectAttachmentOptions>

Options for creating an attachment.



=head2 Tags => ArrayRef[L<Paws::NetworkManager::Tag>]

The list of key-value tags associated with the request.



=head2 B<REQUIRED> TransportAttachmentId => Str

The ID of the attachment between the two connections.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateConnectAttachment in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

