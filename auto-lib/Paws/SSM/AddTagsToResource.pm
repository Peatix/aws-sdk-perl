
package Paws::SSM::AddTagsToResource;
  use Moose;
  has ResourceId => (is => 'ro', isa => 'Str', required => 1);
  has ResourceType => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Tag]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddTagsToResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::AddTagsToResourceResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::AddTagsToResource - Arguments for method AddTagsToResource on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddTagsToResource on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method AddTagsToResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddTagsToResource.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $AddTagsToResourceResult = $ssm->AddTagsToResource(
      ResourceId   => 'MyResourceId',
      ResourceType => 'Document',
      Tags         => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/AddTagsToResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceId => Str

The resource ID you want to tag.

Use the ID of the resource. Here are some examples:

C<MaintenanceWindow>: C<mw-012345abcde>

C<PatchBaseline>: C<pb-012345abcde>

C<Automation>: C<example-c160-4567-8519-012345abcde>

C<OpsMetadata> object: C<ResourceID> for tagging is created from the
Amazon Resource Name (ARN) for the object. Specifically, C<ResourceID>
is created from the strings that come after the word C<opsmetadata> in
the ARN. For example, an OpsMetadata object with an ARN of
C<arn:aws:ssm:us-east-2:1234567890:opsmetadata/aws/ssm/MyGroup/appmanager>
has a C<ResourceID> of either C<aws/ssm/MyGroup/appmanager> or
C</aws/ssm/MyGroup/appmanager>.

For the C<Document> and C<Parameter> values, use the name of the
resource. If you're tagging a shared document, you must use the full
ARN of the document.

C<ManagedInstance>: C<mi-012345abcde>

The C<ManagedInstance> type for this API operation is only for
on-premises managed nodes. You must specify the name of the managed
node in the following format: C<mi-I<ID_number> >. For example,
C<mi-1a2b3c4d5e6f>.



=head2 B<REQUIRED> ResourceType => Str

Specifies the type of resource you are tagging.

The C<ManagedInstance> type for this API operation is for on-premises
managed nodes. You must specify the name of the managed node in the
following format: C<mi-I<ID_number> >. For example, C<mi-1a2b3c4d5e6f>.

Valid values are: C<"Document">, C<"ManagedInstance">, C<"MaintenanceWindow">, C<"Parameter">, C<"PatchBaseline">, C<"OpsItem">, C<"OpsMetadata">, C<"Automation">, C<"Association">

=head2 B<REQUIRED> Tags => ArrayRef[L<Paws::SSM::Tag>]

One or more tags. The value parameter is required.

Don't enter personally identifiable information in this field.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddTagsToResource in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

