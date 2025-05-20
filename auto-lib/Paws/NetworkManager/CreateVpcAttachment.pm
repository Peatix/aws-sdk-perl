
package Paws::NetworkManager::CreateVpcAttachment;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has CoreNetworkId => (is => 'ro', isa => 'Str', required => 1);
  has Options => (is => 'ro', isa => 'Paws::NetworkManager::VpcOptions');
  has SubnetArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::NetworkManager::Tag]');
  has VpcArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpcAttachment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/vpc-attachments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::NetworkManager::CreateVpcAttachmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::NetworkManager::CreateVpcAttachment - Arguments for method CreateVpcAttachment on L<Paws::NetworkManager>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpcAttachment on the
L<AWS Network Manager|Paws::NetworkManager> service. Use the attributes of this class
as arguments to method CreateVpcAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpcAttachment.

=head1 SYNOPSIS

    my $networkmanager = Paws->service('NetworkManager');
    my $CreateVpcAttachmentResponse = $networkmanager->CreateVpcAttachment(
      CoreNetworkId => 'MyCoreNetworkId',
      SubnetArns    => [
        'MySubnetArn', ...    # max: 500
      ],
      VpcArn      => 'MyVpcArn',
      ClientToken => 'MyClientToken',    # OPTIONAL
      Options     => {
        ApplianceModeSupport => 1,       # OPTIONAL
        Ipv6Support          => 1,       # OPTIONAL
      },    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # max: 10000000; OPTIONAL
          Value => 'MyTagValue',    # max: 10000000; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $VpcAttachment = $CreateVpcAttachmentResponse->VpcAttachment;

    # Returns a L<Paws::NetworkManager::CreateVpcAttachmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/networkmanager/CreateVpcAttachment>

=head1 ATTRIBUTES


=head2 ClientToken => Str

The client token associated with the request.



=head2 B<REQUIRED> CoreNetworkId => Str

The ID of a core network for the VPC attachment.



=head2 Options => L<Paws::NetworkManager::VpcOptions>

Options for the VPC attachment.



=head2 B<REQUIRED> SubnetArns => ArrayRef[Str|Undef]

The subnet ARN of the VPC attachment.



=head2 Tags => ArrayRef[L<Paws::NetworkManager::Tag>]

The key-value tags associated with the request.



=head2 B<REQUIRED> VpcArn => Str

The ARN of the VPC.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpcAttachment in L<Paws::NetworkManager>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

