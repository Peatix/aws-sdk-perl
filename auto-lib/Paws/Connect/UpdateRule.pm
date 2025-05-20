
package Paws::Connect::UpdateRule;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::Connect::RuleAction]', required => 1);
  has Function => (is => 'ro', isa => 'Str', required => 1);
  has InstanceId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'InstanceId', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has PublishStatus => (is => 'ro', isa => 'Str', required => 1);
  has RuleId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'RuleId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/rules/{InstanceId}/{RuleId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Connect::UpdateRule - Arguments for method UpdateRule on L<Paws::Connect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRule on the
L<Amazon Connect Service|Paws::Connect> service. Use the attributes of this class
as arguments to method UpdateRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRule.

=head1 SYNOPSIS

    my $connect = Paws->service('Connect');
    $connect->UpdateRule(
      Actions => [
        {
          ActionType => 'CREATE_TASK'
          , # values: CREATE_TASK, ASSIGN_CONTACT_CATEGORY, GENERATE_EVENTBRIDGE_EVENT, SEND_NOTIFICATION, CREATE_CASE, UPDATE_CASE, ASSIGN_SLA, END_ASSOCIATED_TASKS, SUBMIT_AUTO_EVALUATION
          AssignContactCategoryAction => {

          },    # OPTIONAL
          AssignSlaAction => {
            SlaAssignmentType    => 'CASES',    # values: CASES
            CaseSlaConfiguration => {
              Name             => 'MySlaName',      # min: 1, max: 500
              TargetSlaMinutes => 1,                # min: 1, max: 129600
              Type             => 'CaseField',      # values: CaseField
              FieldId          => 'MyFieldValueId', # min: 1, max: 500; OPTIONAL
              TargetFieldValues => [
                {
                  BooleanValue => 1,    # OPTIONAL
                  DoubleValue  => 1,    # OPTIONAL
                  EmptyValue   => {

                  },                    # OPTIONAL
                  StringValue => 'MyFieldStringValue',    # max: 500; OPTIONAL
                },
                ...
              ],    # max: 1; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          CreateCaseAction => {
            Fields => [
              {
                Id    => 'MyFieldValueId',    # min: 1, max: 500; OPTIONAL
                Value => {
                  BooleanValue => 1,          # OPTIONAL
                  DoubleValue  => 1,          # OPTIONAL
                  EmptyValue   => {

                  },                          # OPTIONAL
                  StringValue => 'MyFieldStringValue',    # max: 500; OPTIONAL
                },

              },
              ...
            ],
            TemplateId => 'MyTemplateId',    # min: 1, max: 500

          },    # OPTIONAL
          EndAssociatedTasksAction => {

          },    # OPTIONAL
          EventBridgeAction => {
            Name => 'MyEventBridgeActionName',    # min: 1, max: 100

          },    # OPTIONAL
          SendNotificationAction => {
            Content        => 'MyContent',     # min: 1, max: 1024
            ContentType    => 'PLAIN_TEXT',    # values: PLAIN_TEXT
            DeliveryMethod => 'EMAIL',         # values: EMAIL
            Recipient      => {
              UserIds  => [ 'MyUserId', ... ],              # OPTIONAL
              UserTags => { 'MyString' => 'MyString', },    # OPTIONAL
            },
            Subject => 'MySubject',    # min: 1, max: 200; OPTIONAL
          },    # OPTIONAL
          SubmitAutoEvaluationAction => {
            EvaluationFormId => 'MyEvaluationFormId',    # min: 1, max: 256

          },    # OPTIONAL
          TaskAction => {
            ContactFlowId => 'MyContactFlowId',            # max: 500
            Name          => 'MyTaskNameExpression',       # min: 1, max: 512
            Description => 'MyTaskDescriptionExpression',  # max: 4096; OPTIONAL
            References  => {
              'MyReferenceKey' => {
                Type => 'URL'
                , # values: URL, ATTACHMENT, CONTACT_ANALYSIS, NUMBER, STRING, DATE, EMAIL, EMAIL_MESSAGE
                Arn    => 'MyReferenceArn',    # min: 20, max: 256; OPTIONAL
                Status => 'AVAILABLE'
                , # values: AVAILABLE, DELETED, APPROVED, REJECTED, PROCESSING, FAILED; OPTIONAL
                StatusReason => 'MyReferenceStatusReason', # max: 100; OPTIONAL
                Value        => 'MyReferenceValue',        # max: 4096; OPTIONAL
              },    # key: min: 1, max: 4096
            },    # OPTIONAL
          },    # OPTIONAL
          UpdateCaseAction => {
            Fields => [
              {
                Id    => 'MyFieldValueId',    # min: 1, max: 500; OPTIONAL
                Value => {
                  BooleanValue => 1,          # OPTIONAL
                  DoubleValue  => 1,          # OPTIONAL
                  EmptyValue   => {

                  },                          # OPTIONAL
                  StringValue => 'MyFieldStringValue',    # max: 500; OPTIONAL
                },

              },
              ...
            ],

          },    # OPTIONAL
        },
        ...
      ],
      Function      => 'MyRuleFunction',
      InstanceId    => 'MyInstanceId',
      Name          => 'MyRuleName',
      PublishStatus => 'DRAFT',
      RuleId        => 'MyRuleId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/connect/UpdateRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => ArrayRef[L<Paws::Connect::RuleAction>]

A list of actions to be run when the rule is triggered.



=head2 B<REQUIRED> Function => Str

The conditions of the rule.



=head2 B<REQUIRED> InstanceId => Str

The identifier of the Amazon Connect instance. You can find the
instance ID
(https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html)
in the Amazon Resource Name (ARN) of the instance.



=head2 B<REQUIRED> Name => Str

The name of the rule. You can change the name only if
C<TriggerEventSource> is one of the following values:
C<OnZendeskTicketCreate> | C<OnZendeskTicketStatusUpdate> |
C<OnSalesforceCaseCreate>



=head2 B<REQUIRED> PublishStatus => Str

The publish status of the rule.

Valid values are: C<"DRAFT">, C<"PUBLISHED">

=head2 B<REQUIRED> RuleId => Str

A unique identifier for the rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRule in L<Paws::Connect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

