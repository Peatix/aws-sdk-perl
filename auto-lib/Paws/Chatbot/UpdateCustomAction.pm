
package Paws::Chatbot::UpdateCustomAction;
  use Moose;
  has AliasName => (is => 'ro', isa => 'Str');
  has Attachments => (is => 'ro', isa => 'ArrayRef[Paws::Chatbot::CustomActionAttachment]');
  has CustomActionArn => (is => 'ro', isa => 'Str', required => 1);
  has Definition => (is => 'ro', isa => 'Paws::Chatbot::CustomActionDefinition', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateCustomAction');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-custom-action');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Chatbot::UpdateCustomActionResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Chatbot::UpdateCustomAction - Arguments for method UpdateCustomAction on L<Paws::Chatbot>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateCustomAction on the
L<AWS Chatbot|Paws::Chatbot> service. Use the attributes of this class
as arguments to method UpdateCustomAction.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateCustomAction.

=head1 SYNOPSIS

    my $chatbot = Paws->service('Chatbot');
    my $UpdateCustomActionResult = $chatbot->UpdateCustomAction(
      CustomActionArn => 'MyCustomActionArn',
      Definition      => {
        CommandText =>
          'MyCustomActionDefinitionCommandTextString',    # min: 1, max: 100

      },
      AliasName   => 'MyCustomActionAliasName',           # OPTIONAL
      Attachments => [
        {
          ButtonText => 'MyCustomActionButtonText',  # min: 1, max: 50; OPTIONAL
          Criteria   => [
            {
              Operator     => 'HAS_VALUE',           # values: HAS_VALUE, EQUALS
              VariableName =>
                'MyCustomActionAttachmentCriteriaVariableNameString'
              ,                                      # min: 1, max: 100
              Value => 'MyCustomActionAttachmentCriteriaValueString'
              ,                                      # max: 1024; OPTIONAL
            },
            ...
          ],    # min: 1, max: 5; OPTIONAL
          NotificationType => 'MyCustomActionAttachmentNotificationType'
          ,     # min: 1, max: 100; OPTIONAL
          Variables => {
            'MyCustomActionAttachmentVariablesKeyString' =>
              'MyCustomActionAttachmentVariablesValueString'
            ,    # key: min: 1, max: 100, value: max: 1024
          },    # min: 1, max: 5; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CustomActionArn = $UpdateCustomActionResult->CustomActionArn;

    # Returns a L<Paws::Chatbot::UpdateCustomActionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/chatbot/UpdateCustomAction>

=head1 ATTRIBUTES


=head2 AliasName => Str

The name used to invoke this action in the chat channel. For example,
C<@aws run my-alias>.



=head2 Attachments => ArrayRef[L<Paws::Chatbot::CustomActionAttachment>]

Defines when this custom action button should be attached to a
notification.



=head2 B<REQUIRED> CustomActionArn => Str

The fully defined Amazon Resource Name (ARN) of the custom action.



=head2 B<REQUIRED> Definition => L<Paws::Chatbot::CustomActionDefinition>

The definition of the command to run when invoked as an alias or as an
action button.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateCustomAction in L<Paws::Chatbot>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

