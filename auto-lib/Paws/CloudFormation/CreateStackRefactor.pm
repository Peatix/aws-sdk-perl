
package Paws::CloudFormation::CreateStackRefactor;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has EnableStackCreation => (is => 'ro', isa => 'Bool');
  has ResourceMappings => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::ResourceMapping]');
  has StackDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::CloudFormation::StackDefinition]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateStackRefactor');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::CreateStackRefactorOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'CreateStackRefactorResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::CreateStackRefactor - Arguments for method CreateStackRefactor on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateStackRefactor on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method CreateStackRefactor.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateStackRefactor.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $CreateStackRefactorOutput = $cloudformation->CreateStackRefactor(
      StackDefinitions => [
        {
          StackName    => 'MyStackName',       # OPTIONAL
          TemplateBody => 'MyTemplateBody',    # min: 1; OPTIONAL
          TemplateURL  => 'MyTemplateURL',     # min: 1, max: 5120; OPTIONAL
        },
        ...
      ],
      Description         => 'MyDescription',    # OPTIONAL
      EnableStackCreation => 1,                  # OPTIONAL
      ResourceMappings    => [
        {
          Destination => {
            LogicalResourceId => 'MyLogicalResourceId',
            StackName         => 'MyStackName',           # OPTIONAL

          },
          Source => {
            LogicalResourceId => 'MyLogicalResourceId',
            StackName         => 'MyStackName',           # OPTIONAL

          },

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $StackRefactorId = $CreateStackRefactorOutput->StackRefactorId;

    # Returns a L<Paws::CloudFormation::CreateStackRefactorOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/CreateStackRefactor>

=head1 ATTRIBUTES


=head2 Description => Str

A description to help you identify the stack refactor.



=head2 EnableStackCreation => Bool

Determines if a new stack is created with the refactor.



=head2 ResourceMappings => ArrayRef[L<Paws::CloudFormation::ResourceMapping>]

The mappings for the stack resource C<Source> and stack resource
C<Destination>.



=head2 B<REQUIRED> StackDefinitions => ArrayRef[L<Paws::CloudFormation::StackDefinition>]

The stacks being refactored.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateStackRefactor in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

