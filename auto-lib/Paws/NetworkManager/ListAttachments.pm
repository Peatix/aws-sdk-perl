
package Paws::NetworkManager::ListAttachments;
  use Moose;
  has AttachmentType => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'attachmentType');
  has CoreNetworkId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'coreNetworkId');
  has EdgeLocation => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'edgeLocation');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');
  has State => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'state');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListAttachments');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/attachments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::ListAttachmentsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::ListAttachments - Arguments for method ListAttachments on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListAttachments on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method ListAttachments.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListAttachments.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $ListAttachmentsResponse = $networkmanager->ListAttachments(
      AttachmentType => 'CONNECT',                 # OPTIONAL
      CoreNetworkId  => 'MyCoreNetworkId',         # OPTIONAL
      EdgeLocation   => 'MyExternalRegionCode',    # OPTIONAL
      MaxResults     => 1,                         # OPTIONAL
      NextToken      => 'MyNextToken',             # OPTIONAL
      State          => 'REJECTED',                # OPTIONAL
    );

    # Results:
    my $Attachments = $ListAttachmentsResponse->Attachments;
    my $NextToken   = $ListAttachmentsResponse->NextToken;

    # Returns a L<Paws::NetworkManager::ListAttachmentsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/ListAttachments>

=head1 ATTRIBUTES


=head2 AttachmentType => Str

The type of attachment.

Valid values are: C<"CONNECT">, C<"SITE_TO_SITE_VPN">, C<"VPC">, C<"DIRECT_CONNECT_GATEWAY">, C<"TRANSIT_GATEWAY_ROUTE_TABLE">

=head2 CoreNetworkId => Str

The ID of a core network.



=head2 EdgeLocation => Str

The Region where the edge is located.



=head2 MaxResults => Int

The maximum number of results to return.



=head2 NextToken => Str

The token for the next page of results.



=head2 State => Str

The state of the attachment.

Valid values are: C<"REJECTED">, C<"PENDING_ATTACHMENT_ACCEPTANCE">, C<"CREATING">, C<"FAILED">, C<"AVAILABLE">, C<"UPDATING">, C<"PENDING_NETWORK_UPDATE">, C<"PENDING_TAG_ACCEPTANCE">, C<"DELETING">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListAttachments in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

