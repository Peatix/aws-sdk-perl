
package Paws::CloudFormation::UpdateGeneratedTemplate;
  use Moose;
  has AddResources => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::ResourceDefinition]');
  has GeneratedTemplateName => (is => 'ro', isa => 'Str', required => 1);
  has NewGeneratedTemplateName => (is => 'ro', isa => 'Str');
  has RefreshAllResources => (is => 'ro', isa => 'Bool');
  has RemoveResources => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has TemplateConfiguration => (is => 'ro', isa => 'Paws::CloudFormation::TemplateConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGeneratedTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::UpdateGeneratedTemplateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'UpdateGeneratedTemplateResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::UpdateGeneratedTemplate - Arguments for method UpdateGeneratedTemplate on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGeneratedTemplate on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method UpdateGeneratedTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGeneratedTemplate.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $UpdateGeneratedTemplateOutput =
      $cloudformation->UpdateGeneratedTemplate(
      GeneratedTemplateName => 'MyGeneratedTemplateName',
      AddResources          => [
        {
          ResourceIdentifier => {
            'MyResourceIdentifierPropertyKey' =>
              'MyResourceIdentifierPropertyValue'
            ,    # key: min: 1, max: 2048, value: min: 1, max: 2048
          },    # min: 1, max: 256
          ResourceType      => 'MyResourceType',         # min: 1, max: 256
          LogicalResourceId => 'MyLogicalResourceId',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      NewGeneratedTemplateName => 'MyGeneratedTemplateName',    # OPTIONAL
      RefreshAllResources      => 1,                            # OPTIONAL
      RemoveResources          => [
        'MyLogicalResourceId', ...                              # OPTIONAL
      ],    # OPTIONAL
      TemplateConfiguration => {
        DeletionPolicy      => 'DELETE',    # values: DELETE, RETAIN; OPTIONAL
        UpdateReplacePolicy => 'DELETE',    # values: DELETE, RETAIN; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $GeneratedTemplateId =
      $UpdateGeneratedTemplateOutput->GeneratedTemplateId;

    # Returns a L<Paws::CloudFormation::UpdateGeneratedTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/UpdateGeneratedTemplate>

=head1 ATTRIBUTES


=head2 AddResources => ArrayRef[L<Paws::CloudFormation::ResourceDefinition>]

An optional list of resources to be added to the generated template.



=head2 B<REQUIRED> GeneratedTemplateName => Str

The name or Amazon Resource Name (ARN) of a generated template.



=head2 NewGeneratedTemplateName => Str

An optional new name to assign to the generated template.



=head2 RefreshAllResources => Bool

If C<true>, update the resource properties in the generated template
with their current live state. This feature is useful when the resource
properties in your generated a template does not reflect the live state
of the resource properties. This happens when a user update the
resource properties after generating a template.



=head2 RemoveResources => ArrayRef[Str|Undef]

A list of logical ids for resources to remove from the generated
template.



=head2 TemplateConfiguration => L<Paws::CloudFormation::TemplateConfiguration>

The configuration details of the generated template, including the
C<DeletionPolicy> and C<UpdateReplacePolicy>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGeneratedTemplate in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

