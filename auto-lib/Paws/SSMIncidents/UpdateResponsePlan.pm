
package Paws::SSMIncidents::UpdateResponsePlan;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::SSMIncidents::Action]', traits => ['NameInRequest'], request_name => 'actions');
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has ChatChannel => (is => 'ro', isa => 'Paws::SSMIncidents::ChatChannel', traits => ['NameInRequest'], request_name => 'chatChannel');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has DisplayName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'displayName');
  has Engagements => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'engagements');
  has IncidentTemplateDedupeString => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'incidentTemplateDedupeString');
  has IncidentTemplateImpact => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'incidentTemplateImpact');
  has IncidentTemplateNotificationTargets => (is => 'ro', isa => 'ArrayRef[Paws::SSMIncidents::NotificationTargetItem]', traits => ['NameInRequest'], request_name => 'incidentTemplateNotificationTargets');
  has IncidentTemplateSummary => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'incidentTemplateSummary');
  has IncidentTemplateTags => (is => 'ro', isa => 'Paws::SSMIncidents::TagMapUpdate', traits => ['NameInRequest'], request_name => 'incidentTemplateTags');
  has IncidentTemplateTitle => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'incidentTemplateTitle');
  has Integrations => (is => 'ro', isa => 'ArrayRef[Paws::SSMIncidents::Integration]', traits => ['NameInRequest'], request_name => 'integrations');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResponsePlan');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/updateResponsePlan');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSMIncidents::UpdateResponsePlanOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMIncidents::UpdateResponsePlan - Arguments for method UpdateResponsePlan on L<Paws::SSMIncidents>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResponsePlan on the
L<AWS Systems Manager Incident Manager|Paws::SSMIncidents> service. Use the attributes of this class
as arguments to method UpdateResponsePlan.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResponsePlan.

=head1 SYNOPSIS

    my $ssm-incidents = Paws->service('SSMIncidents');
    my $UpdateResponsePlanOutput = $ssm -incidents->UpdateResponsePlan(
      Arn     => 'MyArn',
      Actions => [
        {
          SsmAutomation => {
            DocumentName    => 'MySsmAutomationDocumentNameString',
            RoleArn         => 'MyRoleArn',                          # max: 1000
            DocumentVersion =>
              'MySsmAutomationDocumentVersionString',    # max: 128; OPTIONAL
            DynamicParameters => {
              'MyDynamicSsmParametersKeyString' => {
                Variable => 'INCIDENT_RECORD_ARN'
                ,    # values: INCIDENT_RECORD_ARN, INVOLVED_RESOURCES; OPTIONAL
              },    # key: min: 1, max: 50
            },    # min: 1, max: 200; OPTIONAL
            Parameters => {
              'MySsmParametersKeyString' => [
                'MySsmParameterValuesMemberString', ...    # max: 512
              ],    # key: min: 1, max: 50, value: max: 100
            },    # min: 1, max: 200; OPTIONAL
            TargetAccount => 'RESPONSE_PLAN_OWNER_ACCOUNT'
            ,  # values: RESPONSE_PLAN_OWNER_ACCOUNT, IMPACTED_ACCOUNT; OPTIONAL
          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
      ChatChannel => {
        ChatbotSns => [
          'MySnsArn', ...    # max: 1000
        ],    # min: 1, max: 5; OPTIONAL
        Empty => {

        },    # OPTIONAL
      },    # OPTIONAL
      ClientToken => 'MyClientToken',                # OPTIONAL
      DisplayName => 'MyResponsePlanDisplayName',    # OPTIONAL
      Engagements => [
        'MySsmContactsArn', ...                      # max: 2048
      ],    # OPTIONAL
      IncidentTemplateDedupeString        => 'MyDedupeString',    # OPTIONAL
      IncidentTemplateImpact              => 1,                   # OPTIONAL
      IncidentTemplateNotificationTargets => [
        {
          SnsTopicArn => 'MyArn',                                 # max: 1000
        },
        ...
      ],    # OPTIONAL
      IncidentTemplateSummary => 'MyIncidentSummary',    # OPTIONAL
      IncidentTemplateTags    => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
      IncidentTemplateTitle => 'MyIncidentTitle',    # OPTIONAL
      Integrations          => [
        {
          PagerDutyConfiguration => {
            Name => 'MyPagerDutyConfigurationNameString',    # min: 1, max: 200
            PagerDutyIncidentConfiguration => {
              ServiceId => 'MyPagerDutyIncidentConfigurationServiceIdString'
              ,                                              # min: 1, max: 200

            },
            SecretId =>
              'MyPagerDutyConfigurationSecretIdString',      # min: 1, max: 512

          },    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm-incidents/UpdateResponsePlan>

=head1 ATTRIBUTES


=head2 Actions => ArrayRef[L<Paws::SSMIncidents::Action>]

The actions that this response plan takes at the beginning of an
incident.



=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the response plan.



=head2 ChatChannel => L<Paws::SSMIncidents::ChatChannel>

The Chatbot chat channel used for collaboration during an incident.

Use the empty structure to remove the chat channel from the response
plan.



=head2 ClientToken => Str

A token ensuring that the operation is called only once with the
specified details.



=head2 DisplayName => Str

The long format name of the response plan. The display name can't
contain spaces.



=head2 Engagements => ArrayRef[Str|Undef]

The Amazon Resource Name (ARN) for the contacts and escalation plans
that the response plan engages during an incident.



=head2 IncidentTemplateDedupeString => Str

The string Incident Manager uses to prevent duplicate incidents from
being created by the same incident in the same account.



=head2 IncidentTemplateImpact => Int

Defines the impact to the customers. Providing an impact overwrites the
impact provided by a response plan.

B<Supported impact codes>

=over

=item *

C<1> - Critical

=item *

C<2> - High

=item *

C<3> - Medium

=item *

C<4> - Low

=item *

C<5> - No Impact

=back




=head2 IncidentTemplateNotificationTargets => ArrayRef[L<Paws::SSMIncidents::NotificationTargetItem>]

The Amazon SNS targets that are notified when updates are made to an
incident.



=head2 IncidentTemplateSummary => Str

A brief summary of the incident. This typically contains what has
happened, what's currently happening, and next steps.



=head2 IncidentTemplateTags => L<Paws::SSMIncidents::TagMapUpdate>

Tags to assign to the template. When the C<StartIncident> API action is
called, Incident Manager assigns the tags specified in the template to
the incident. To call this action, you must also have permission to
call the C<TagResource> API action for the incident record resource.



=head2 IncidentTemplateTitle => Str

The short format name of the incident. The title can't contain spaces.



=head2 Integrations => ArrayRef[L<Paws::SSMIncidents::Integration>]

Information about third-party services integrated into the response
plan.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResponsePlan in L<Paws::SSMIncidents>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

