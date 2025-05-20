
package Paws::NetworkManager::UpdateVpcAttachment;
  use Moose;
  has AddSubnetArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AttachmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'attachmentId', required => 1);
  has Options => (is => 'ro', isa => 'Paws::NetworkManager::VpcOptions');
  has RemoveSubnetArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVpcAttachment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/vpc-attachments/{attachmentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::UpdateVpcAttachmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::UpdateVpcAttachment - Arguments for method UpdateVpcAttachment on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVpcAttachment on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method UpdateVpcAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVpcAttachment.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $UpdateVpcAttachmentResponse = $networkmanager->UpdateVpcAttachment(
      AttachmentId  => 'MyAttachmentId',
      AddSubnetArns => [
        'MySubnetArn', ...    # max: 500
      ],    # OPTIONAL
      Options => {
        ApplianceModeSupport => 1,    # OPTIONAL
        Ipv6Support          => 1,    # OPTIONAL
      },    # OPTIONAL
      RemoveSubnetArns => [
        'MySubnetArn', ...    # max: 500
      ],    # OPTIONAL
    );

    # Results:
    my $VpcAttachment = $UpdateVpcAttachmentResponse->VpcAttachment;

    # Returns a L<Paws::NetworkManager::UpdateVpcAttachmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/UpdateVpcAttachment>

=head1 ATTRIBUTES


=head2 AddSubnetArns => ArrayRef[Str|Undef]

Adds a subnet ARN to the VPC attachment.



=head2 B<REQUIRED> AttachmentId => Str

The ID of the attachment.



=head2 Options => L<Paws::NetworkManager::VpcOptions>

Additional options for updating the VPC attachment.



=head2 RemoveSubnetArns => ArrayRef[Str|Undef]

Removes a subnet ARN from the attachment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVpcAttachment in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

