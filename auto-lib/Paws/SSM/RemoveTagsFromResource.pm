
package Paws::SSM::RemoveTagsFromResource;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has TagKeys => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveTagsFromResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::RemoveTagsFromResourceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::RemoveTagsFromResource - Arguments for method RemoveTagsFromResource on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveTagsFromResource on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method RemoveTagsFromResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveTagsFromResource.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $RemoveTagsFromResourceResult = $ssm->RemoveTagsFromResource(
      ResourceId   => 'MyResourceId',
      ResourceType => 'Document',
      TagKeys      => [
        'MyTagKey', ...    # min: 1, max: 128
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/RemoveTagsFromResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The ID of the resource from which you want to remove tags. For example:

ManagedInstance: mi-012345abcde

MaintenanceWindow: mw-012345abcde

C<Automation>: C<example-c160-4567-8519-012345abcde>

PatchBaseline: pb-012345abcde

OpsMetadata object: C<ResourceID> for tagging is created from the
Amazon Resource Name (ARN) for the object. Specifically, C<ResourceID>
is created from the strings that come after the word C<opsmetadata> in
the ARN. For example, an OpsMetadata object with an ARN of
C<arn:aws:ssm:us-east-2:1234567890:opsmetadata/aws/ssm/MyGroup/appmanager>
has a C<ResourceID> of either C<aws/ssm/MyGroup/appmanager> or
C</aws/ssm/MyGroup/appmanager>.

For the Document and Parameter values, use the name of the resource.

The C<ManagedInstance> type for this API operation is only for
on-premises managed nodes. Specify the name of the managed node in the
following format: mi-ID_number. For example, mi-1a2b3c4d5e6f.



=head2 B<REQUIRED> ResourceType => Str

The type of resource from which you want to remove a tag.

The C<ManagedInstance> type for this API operation is only for
on-premises managed nodes. Specify the name of the managed node in the
following format: C<mi-I<ID_number> >. For example, C<mi-1a2b3c4d5e6f>.

Valid values are: C<"Document">, C<"ManagedInstance">, C<"MaintenanceWindow">, C<"Parameter">, C<"PatchBaseline">, C<"OpsItem">, C<"OpsMetadata">, C<"Automation">, C<"Association">

=head2 B<REQUIRED> TagKeys => ArrayRef[Str|Undef]

Tag keys that you want to remove from the specified resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveTagsFromResource in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

