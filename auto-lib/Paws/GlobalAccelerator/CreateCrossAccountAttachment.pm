
package Paws::GlobalAccelerator::CreateCrossAccountAttachment;
  use Moose;
  has IdempotencyToken => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Principals => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::Resource]');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateCrossAccountAttachment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::CreateCrossAccountAttachmentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::CreateCrossAccountAttachment - Arguments for method CreateCrossAccountAttachment on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateCrossAccountAttachment on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method CreateCrossAccountAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateCrossAccountAttachment.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $CreateCrossAccountAttachmentResponse =
      $globalaccelerator->CreateCrossAccountAttachment(
      IdempotencyToken => 'MyIdempotencyToken',
      Name             => 'MyAttachmentName',
      Principals       => [
        'MyPrincipal', ...    # max: 256
      ],    # OPTIONAL
      Resources => [
        {
          Cidr       => 'MyGenericString',    # max: 255; OPTIONAL
          EndpointId => 'MyGenericString',    # max: 255; OPTIONAL
          Region     => 'MyGenericString',    # max: 255; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Tags => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $CrossAccountAttachment =
      $CreateCrossAccountAttachmentResponse->CrossAccountAttachment;

# Returns a L<Paws::GlobalAccelerator::CreateCrossAccountAttachmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/CreateCrossAccountAttachment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> IdempotencyToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotencyE<mdash>that is, the uniquenessE<mdash>of the request.



=head2 B<REQUIRED> Name => Str

The name of the cross-account attachment.



=head2 Principals => ArrayRef[Str|Undef]

The principals to include in the cross-account attachment. A principal
can be an Amazon Web Services account number or the Amazon Resource
Name (ARN) for an accelerator.



=head2 Resources => ArrayRef[L<Paws::GlobalAccelerator::Resource>]

The Amazon Resource Names (ARNs) for the resources to include in the
cross-account attachment. A resource can be any supported Amazon Web
Services resource type for Global Accelerator or a CIDR range for a
bring your own IP address (BYOIP) address pool.



=head2 Tags => ArrayRef[L<Paws::GlobalAccelerator::Tag>]

Add tags for a cross-account attachment.

For more information, see Tagging in Global Accelerator
(https://docs.aws.amazon.com/global-accelerator/latest/dg/tagging-in-global-accelerator.html)
in the I<Global Accelerator Developer Guide>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateCrossAccountAttachment in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

