
package Paws::CloudFormation::CreateGeneratedTemplate;
  use Moose;
  has GeneratedTemplateName => (is => 'ro', isa => 'Str', required => 1);
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::ResourceDefinition]');
  has StackName => (is => 'ro', isa => 'Str');
  has TemplateConfiguration => (is => 'ro', isa => 'Paws::CloudFormation::TemplateConfiguration');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGeneratedTemplate');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::CreateGeneratedTemplateOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateGeneratedTemplateResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CreateGeneratedTemplate - Arguments for method CreateGeneratedTemplate on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGeneratedTemplate on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method CreateGeneratedTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGeneratedTemplate.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $CreateGeneratedTemplateOutput =
      $cloudformation->CreateGeneratedTemplate(
      GeneratedTemplateName => 'MyGeneratedTemplateName',
      Resources             => [
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
      StackName             => 'MyStackName',    # OPTIONAL
      TemplateConfiguration => {
        DeletionPolicy      => 'DELETE',    # values: DELETE, RETAIN; OPTIONAL
        UpdateReplacePolicy => 'DELETE',    # values: DELETE, RETAIN; OPTIONAL
      },    # OPTIONAL
      );

    # Results:
    my $GeneratedTemplateId =
      $CreateGeneratedTemplateOutput->GeneratedTemplateId;

    # Returns a L<Paws::CloudFormation::CreateGeneratedTemplateOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/CreateGeneratedTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GeneratedTemplateName => Str

The name assigned to the generated template.



=head2 Resources => ArrayRef[L<Paws::CloudFormation::ResourceDefinition>]

An optional list of resources to be included in the generated template.

If no resources are specified,the template will be created without any
resources. Resources can be added to the template using the
C<UpdateGeneratedTemplate> API action.



=head2 StackName => Str

An optional name or ARN of a stack to use as the base stack for the
generated template.



=head2 TemplateConfiguration => L<Paws::CloudFormation::TemplateConfiguration>

The configuration details of the generated template, including the
C<DeletionPolicy> and C<UpdateReplacePolicy>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGeneratedTemplate in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

