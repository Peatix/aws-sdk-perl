
package Paws::NetworkManager::DeleteAttachment;
  use Moose;
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'attachmentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteAttachment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/attachments/{attachmentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::DeleteAttachmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::DeleteAttachment - Arguments for method DeleteAttachment on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteAttachment on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method DeleteAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteAttachment.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $DeleteAttachmentResponse = $networkmanager->DeleteAttachment(
      AttachmentId => 'MyAttachmentId',

    );

    # Results:
    my $Attachment = $DeleteAttachmentResponse->Attachment;

    # Returns a L<Paws::NetworkManager::DeleteAttachmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/DeleteAttachment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AttachmentId => Str

The ID of the attachment to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteAttachment in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

