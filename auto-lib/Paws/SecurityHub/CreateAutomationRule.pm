
package Paws::SecurityHub::CreateAutomationRule;
  use Moose;
  has Actions => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::AutomationRulesAction]', required => 1);
  has Criteria => (is => 'ro', isa => 'Paws::SecurityHub::AutomationRulesFindingFilters', required => 1);
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has IsTerminal => (is => 'ro', isa => 'Bool');
  has RuleName => (is => 'ro', isa => 'Str', required => 1);
  has RuleOrder => (is => 'ro', isa => 'Int', required => 1);
  has RuleStatus => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::SecurityHub::TagMap');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAutomationRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/automationrules/create');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::CreateAutomationRuleResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::CreateAutomationRule - Arguments for method CreateAutomationRule on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAutomationRule on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method CreateAutomationRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAutomationRule.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $CreateAutomationRuleResponse = $securityhub->CreateAutomationRule(
      Actions => [
        {
          FindingFieldsUpdate => {
            Confidence  => 1,    # max: 100; OPTIONAL
            Criticality => 1,    # max: 100; OPTIONAL
            Note        => {
              Text      => 'MyNonEmptyString',
              UpdatedBy => 'MyNonEmptyString',

            },                   # OPTIONAL
            RelatedFindings => [
              {
                Id         => 'MyNonEmptyString',
                ProductArn => 'MyNonEmptyString',

              },
              ...
            ],                   # OPTIONAL
            Severity => {
              Label => 'INFORMATIONAL'
              ,   # values: INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL; OPTIONAL
              Normalized => 1,    # max: 100; OPTIONAL
              Product    => 1,    # OPTIONAL
            },    # OPTIONAL
            Types             => [ 'MyNonEmptyString', ... ],    # OPTIONAL
            UserDefinedFields => { 'MyNonEmptyString' => 'MyNonEmptyString', }
            ,                                                    # OPTIONAL
            VerificationState => 'UNKNOWN'
            , # values: UNKNOWN, TRUE_POSITIVE, FALSE_POSITIVE, BENIGN_POSITIVE; OPTIONAL
            Workflow => {
              Status =>
                'NEW',   # values: NEW, NOTIFIED, RESOLVED, SUPPRESSED; OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          Type =>
            'FINDING_FIELDS_UPDATE',   # values: FINDING_FIELDS_UPDATE; OPTIONAL
        },
        ...
      ],
      Criteria => {
        AwsAccountId => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        AwsAccountName => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        CompanyName => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ComplianceAssociatedStandardsId => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ComplianceSecurityControlId => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ComplianceStatus => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        Confidence => [
          {
            Eq  => 1,    # OPTIONAL
            Gt  => 1,    # OPTIONAL
            Gte => 1,    # OPTIONAL
            Lt  => 1,    # OPTIONAL
            Lte => 1,    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        CreatedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',    # values: DAYS; OPTIONAL
              Value => 1,         # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',
            Start => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        Criticality => [
          {
            Eq  => 1,    # OPTIONAL
            Gt  => 1,    # OPTIONAL
            Gte => 1,    # OPTIONAL
            Lt  => 1,    # OPTIONAL
            Lte => 1,    # OPTIONAL
          },
          ...
        ],    # OPTIONAL
        Description => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        FirstObservedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',    # values: DAYS; OPTIONAL
              Value => 1,         # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',
            Start => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        GeneratorId => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        Id => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        LastObservedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',    # values: DAYS; OPTIONAL
              Value => 1,         # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',
            Start => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        NoteText => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        NoteUpdatedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',    # values: DAYS; OPTIONAL
              Value => 1,         # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',
            Start => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        NoteUpdatedBy => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ProductArn => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ProductName => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        RecordState => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        RelatedFindingsId => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        RelatedFindingsProductArn => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceApplicationArn => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceApplicationName => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceDetailsOther => [
          {
            Comparison => 'EQUALS'
            ,    # values: EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Key   => 'MyNonEmptyString',
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceId => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourcePartition => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceRegion => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceTags => [
          {
            Comparison => 'EQUALS'
            ,    # values: EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Key   => 'MyNonEmptyString',
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        ResourceType => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        SeverityLabel => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        SourceUrl => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        Title => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        Type => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        UpdatedAt => [
          {
            DateRange => {
              Unit  => 'DAYS',    # values: DAYS; OPTIONAL
              Value => 1,         # OPTIONAL
            },    # OPTIONAL
            End   => 'MyNonEmptyString',
            Start => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        UserDefinedFields => [
          {
            Comparison => 'EQUALS'
            ,    # values: EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Key   => 'MyNonEmptyString',
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        VerificationState => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
        WorkflowStatus => [
          {
            Comparison => 'EQUALS'
            , # values: EQUALS, PREFIX, NOT_EQUALS, PREFIX_NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
            Value => 'MyNonEmptyString',
          },
          ...
        ],    # OPTIONAL
      },
      Description => 'MyNonEmptyString',
      RuleName    => 'MyNonEmptyString',
      RuleOrder   => 1,
      IsTerminal  => 1,                    # OPTIONAL
      RuleStatus  => 'ENABLED',            # OPTIONAL
      Tags        => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $RuleArn = $CreateAutomationRuleResponse->RuleArn;

    # Returns a L<Paws::SecurityHub::CreateAutomationRuleResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/CreateAutomationRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Actions => ArrayRef[L<Paws::SecurityHub::AutomationRulesAction>]

One or more actions to update finding fields if a finding matches the
conditions specified in C<Criteria>.



=head2 B<REQUIRED> Criteria => L<Paws::SecurityHub::AutomationRulesFindingFilters>

A set of ASFF finding field attributes and corresponding expected
values that Security Hub uses to filter findings. If a rule is enabled
and a finding matches the conditions specified in this parameter,
Security Hub applies the rule action to the finding.



=head2 B<REQUIRED> Description => Str

A description of the rule.



=head2 IsTerminal => Bool

Specifies whether a rule is the last to be applied with respect to a
finding that matches the rule criteria. This is useful when a finding
matches the criteria for multiple rules, and each rule has different
actions. If a rule is terminal, Security Hub applies the rule action to
a finding that matches the rule criteria and doesn't evaluate other
rules for the finding. By default, a rule isn't terminal.



=head2 B<REQUIRED> RuleName => Str

The name of the rule.



=head2 B<REQUIRED> RuleOrder => Int

An integer ranging from 1 to 1000 that represents the order in which
the rule action is applied to findings. Security Hub applies rules with
lower values for this parameter first.



=head2 RuleStatus => Str

Whether the rule is active after it is created. If this parameter is
equal to C<ENABLED>, Security Hub starts applying the rule to findings
and finding updates after the rule is created. To change the value of
this parameter after creating a rule, use C<BatchUpdateAutomationRules>
(https://docs.aws.amazon.com/securityhub/1.0/APIReference/API_BatchUpdateAutomationRules.html).

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 Tags => L<Paws::SecurityHub::TagMap>

User-defined tags associated with an automation rule.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAutomationRule in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

