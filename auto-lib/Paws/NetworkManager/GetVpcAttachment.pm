
package Paws::NetworkManager::GetVpcAttachment;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'attachmentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetVpcAttachment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/vpc-attachments/{attachmentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::GetVpcAttachmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::GetVpcAttachment - Arguments for method GetVpcAttachment on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetVpcAttachment on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method GetVpcAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetVpcAttachment.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $GetVpcAttachmentResponse = $networkmanager->GetVpcAttachment(
      AttachmentId => 'MyAttachmentId',

    );

    # Results:
    my $VpcAttachment = $GetVpcAttachmentResponse->VpcAttachment;

    # Returns a L<Paws::NetworkManager::GetVpcAttachmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/GetVpcAttachment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttachmentId => Str

The ID of the attachment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetVpcAttachment in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

