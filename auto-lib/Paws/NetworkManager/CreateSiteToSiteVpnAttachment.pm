
package Paws::NetworkManager::CreateSiteToSiteVpnAttachment;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has CoreNetworkId => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Tag]');
  has VpnConnectionArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateSiteToSiteVpnAttachment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/site-to-site-vpn-attachments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::CreateSiteToSiteVpnAttachmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CreateSiteToSiteVpnAttachment - Arguments for method CreateSiteToSiteVpnAttachment on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateSiteToSiteVpnAttachment on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method CreateSiteToSiteVpnAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateSiteToSiteVpnAttachment.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $CreateSiteToSiteVpnAttachmentResponse =
      $networkmanager->CreateSiteToSiteVpnAttachment(
      CoreNetworkId    => 'MyCoreNetworkId',
      VpnConnectionArn => 'MyVpnConnectionArn',
      ClientToken      => 'MyClientToken',        # OPTIONAL
      Tags             => [
        {
          Key   => 'MyTagKey',      # max: 10000000; OPTIONAL
          Value => 'MyTagValue',    # max: 10000000; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $SiteToSiteVpnAttachment =
      $CreateSiteToSiteVpnAttachmentResponse->SiteToSiteVpnAttachment;

# Returns a L<Paws::NetworkManager::CreateSiteToSiteVpnAttachmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/CreateSiteToSiteVpnAttachment>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client token associated with the request.



=head2 B<REQUIRED> CoreNetworkId => Str

The ID of a core network where you're creating a site-to-site VPN
attachment.



=head2 Tags => ArrayRef[L<Paws::NetworkManager::Tag>]

The tags associated with the request.



=head2 B<REQUIRED> VpnConnectionArn => Str

The ARN identifying the VPN attachment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateSiteToSiteVpnAttachment in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

