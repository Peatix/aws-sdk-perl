
package Paws::GlobalAccelerator::UpdateCrossAccountAttachment;
  use Moose;
  has AddPrincipals => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has AddResources => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::Resource]');
  has AttachmentArn => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str');
  has RemovePrincipals => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has RemoveResources => (is => 'ro', isa => 'ArrayRef[Paws::GlobalAccelerator::Resource]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCrossAccountAttachment');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GlobalAccelerator::UpdateCrossAccountAttachmentResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GlobalAccelerator::UpdateCrossAccountAttachment - Arguments for method UpdateCrossAccountAttachment on L<Paws::GlobalAccelerator>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCrossAccountAttachment on the
L<AWS Global Accelerator|Paws::GlobalAccelerator> service. Use the attributes of this class
as arguments to method UpdateCrossAccountAttachment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCrossAccountAttachment.

=head1 SYNOPSIS

    my $globalaccelerator = Paws->service('GlobalAccelerator');
    my $UpdateCrossAccountAttachmentResponse =
      $globalaccelerator->UpdateCrossAccountAttachment(
      AttachmentArn => 'MyGenericString',
      AddPrincipals => [
        'MyPrincipal', ...    # max: 256
      ],    # OPTIONAL
      AddResources => [
        {
          Cidr       => 'MyGenericString',    # max: 255
          EndpointId => 'MyGenericString',    # max: 255
          Region     => 'MyGenericString',    # max: 255
        },
        ...
      ],    # OPTIONAL
      Name             => 'MyAttachmentName',    # OPTIONAL
      RemovePrincipals => [
        'MyPrincipal', ...                       # max: 256
      ],    # OPTIONAL
      RemoveResources => [
        {
          Cidr       => 'MyGenericString',    # max: 255
          EndpointId => 'MyGenericString',    # max: 255
          Region     => 'MyGenericString',    # max: 255
        },
        ...
      ],    # OPTIONAL
      );

    # Results:
    my $CrossAccountAttachment =
      $UpdateCrossAccountAttachmentResponse->CrossAccountAttachment;

# Returns a L<Paws::GlobalAccelerator::UpdateCrossAccountAttachmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/globalaccelerator/UpdateCrossAccountAttachment>

=head1 ATTRIBUTES


=head2 AddPrincipals => ArrayRef[Str|Undef]

The principals to add to the cross-account attachment. A principal is
an account or the Amazon Resource Name (ARN) of an accelerator that the
attachment gives permission to work with resources from another
account. The resources are also listed in the attachment.

To add more than one principal, separate the account numbers or
accelerator ARNs, or both, with commas.



=head2 AddResources => ArrayRef[L<Paws::GlobalAccelerator::Resource>]

The resources to add to the cross-account attachment. A resource listed
in a cross-account attachment can be used with an accelerator by the
principals that are listed in the attachment.

To add more than one resource, separate the resource ARNs with commas.



=head2 B<REQUIRED> AttachmentArn => Str

The Amazon Resource Name (ARN) of the cross-account attachment to
update.



=head2 Name => Str

The name of the cross-account attachment.



=head2 RemovePrincipals => ArrayRef[Str|Undef]

The principals to remove from the cross-account attachment. A principal
is an account or the Amazon Resource Name (ARN) of an accelerator that
the attachment gives permission to work with resources from another
account. The resources are also listed in the attachment.

To remove more than one principal, separate the account numbers or
accelerator ARNs, or both, with commas.



=head2 RemoveResources => ArrayRef[L<Paws::GlobalAccelerator::Resource>]

The resources to remove from the cross-account attachment. A resource
listed in a cross-account attachment can be used with an accelerator by
the principals that are listed in the attachment.

To remove more than one resource, separate the resource ARNs with
commas.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCrossAccountAttachment in L<Paws::GlobalAccelerator>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

