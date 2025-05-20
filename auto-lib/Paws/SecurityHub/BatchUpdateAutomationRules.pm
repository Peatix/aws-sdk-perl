
package Paws::SecurityHub::BatchUpdateAutomationRules;
  use Moose;
  has UpdateAutomationRulesRequestItems => (is => 'ro', isa => 'ArrayRef[Paws::SecurityHub::UpdateAutomationRulesRequestItem]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchUpdateAutomationRules');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/automationrules/update');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::BatchUpdateAutomationRulesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::BatchUpdateAutomationRules - Arguments for method BatchUpdateAutomationRules on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchUpdateAutomationRules on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method BatchUpdateAutomationRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchUpdateAutomationRules.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $BatchUpdateAutomationRulesResponse =
      $securityhub->BatchUpdateAutomationRules(
      UpdateAutomationRulesRequestItems => [
        {
          RuleArn => 'MyNonEmptyString',
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
                  , # values: INFORMATIONAL, LOW, MEDIUM, HIGH, CRITICAL; OPTIONAL
                  Normalized => 1,    # max: 100; OPTIONAL
                  Product    => 1,    # OPTIONAL
                },    # OPTIONAL
                Types             => [ 'MyNonEmptyString', ... ],    # OPTIONAL
                UserDefinedFields =>
                  { 'MyNonEmptyString' => 'MyNonEmptyString', },     # OPTIONAL
                VerificationState => 'UNKNOWN'
                , # values: UNKNOWN, TRUE_POSITIVE, FALSE_POSITIVE, BENIGN_POSITIVE; OPTIONAL
                Workflow => {
                  Status => 'NEW'
                  ,    # values: NEW, NOTIFIED, RESOLVED, SUPPRESSED; OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              Type => 'FINDING_FIELDS_UPDATE'
              ,     # values: FINDING_FIELDS_UPDATE; OPTIONAL
            },
            ...
          ],    # min: 1, max: 1; OPTIONAL
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
                , # values: EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
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
                , # values: EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
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
                , # values: EQUALS, NOT_EQUALS, CONTAINS, NOT_CONTAINS; OPTIONAL
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
          },    # OPTIONAL
          Description => 'MyNonEmptyString',
          IsTerminal  => 1,                    # OPTIONAL
          RuleName    => 'MyNonEmptyString',
          RuleOrder   => 1,                    # min: 1, max: 1000; OPTIONAL
          RuleStatus  => 'ENABLED',    # values: ENABLED, DISABLED; OPTIONAL
        },
        ...
      ],

      );

    # Results:
    my $ProcessedAutomationRules =
      $BatchUpdateAutomationRulesResponse->ProcessedAutomationRules;
    my $UnprocessedAutomationRules =
      $BatchUpdateAutomationRulesResponse->UnprocessedAutomationRules;

    # Returns a L<Paws::SecurityHub::BatchUpdateAutomationRulesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/BatchUpdateAutomationRules>

=head1 ATTRIBUTES


=head2 B<REQUIRED> UpdateAutomationRulesRequestItems => ArrayRef[L<Paws::SecurityHub::UpdateAutomationRulesRequestItem>]

An array of ARNs for the rules that are to be updated. Optionally, you
can also include C<RuleStatus> and C<RuleOrder>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchUpdateAutomationRules in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

