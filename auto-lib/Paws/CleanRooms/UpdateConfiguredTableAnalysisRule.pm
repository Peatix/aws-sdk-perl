
package Paws::CleanRooms::UpdateConfiguredTableAnalysisRule;
  use Moose;
  has AnalysisRulePolicy => (is => 'ro', isa => 'Paws::CleanRooms::ConfiguredTableAnalysisRulePolicy', traits => ['NameInRequest'], request_name => 'analysisRulePolicy', required => 1);
  has AnalysisRuleType => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'analysisRuleType', required => 1);
  has ConfiguredTableIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'configuredTableIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConfiguredTableAnalysisRule');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/configuredTables/{configuredTableIdentifier}/analysisRule/{analysisRuleType}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CleanRooms::UpdateConfiguredTableAnalysisRuleOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CleanRooms::UpdateConfiguredTableAnalysisRule - Arguments for method UpdateConfiguredTableAnalysisRule on L<Paws::CleanRooms>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConfiguredTableAnalysisRule on the
L<AWS Clean Rooms Service|Paws::CleanRooms> service. Use the attributes of this class
as arguments to method UpdateConfiguredTableAnalysisRule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConfiguredTableAnalysisRule.

=head1 SYNOPSIS

    my $cleanrooms = Paws->service('CleanRooms');
    my $UpdateConfiguredTableAnalysisRuleOutput =
      $cleanrooms->UpdateConfiguredTableAnalysisRule(
      AnalysisRulePolicy => {
        V1 => {
          Aggregation => {
            AggregateColumns => [
              {
                ColumnNames => [
                  'MyAnalysisRuleColumnName', ...    # min: 1, max: 127
                ],    # min: 1
                Function =>
                  'SUM', # values: SUM, SUM_DISTINCT, COUNT, COUNT_DISTINCT, AVG

              },
              ...
            ],    # min: 1
            DimensionColumns => [
              'MyAnalysisRuleColumnName', ...    # min: 1, max: 127
            ],
            JoinColumns => [
              'MyAnalysisRuleColumnName', ...    # min: 1, max: 127
            ],
            OutputConstraints => [
              {
                ColumnName => 'MyAnalysisRuleColumnName',  # min: 1, max: 127
                Minimum    => 1,                           # min: 2, max: 100000
                Type       => 'COUNT_DISTINCT',    # values: COUNT_DISTINCT

              },
              ...
            ],    # min: 1
            ScalarFunctions => [
              'ABS',
              ... # values: ABS, CAST, CEILING, COALESCE, CONVERT, CURRENT_DATE, DATEADD, EXTRACT, FLOOR, GETDATE, LN, LOG, LOWER, ROUND, RTRIM, SQRT, SUBSTRING, TO_CHAR, TO_DATE, TO_NUMBER, TO_TIMESTAMP, TRIM, TRUNC, UPPER
            ],
            AdditionalAnalyses =>
              'ALLOWED',    # values: ALLOWED, REQUIRED, NOT_ALLOWED; OPTIONAL
            AllowedJoinOperators => [
              'OR', ...     # values: OR, AND
            ],    # max: 2; OPTIONAL
            JoinRequired => 'QUERY_RUNNER',    # values: QUERY_RUNNER; OPTIONAL
          },    # OPTIONAL
          Custom => {
            AllowedAnalyses => [
              'MyAnalysisTemplateArnOrQueryWildcard', ...    # max: 200
            ],
            AdditionalAnalyses =>
              'ALLOWED',    # values: ALLOWED, REQUIRED, NOT_ALLOWED; OPTIONAL
            AllowedAnalysisProviders => [
              'MyAccountId', ...    # min: 12, max: 12
            ],    # OPTIONAL
            DifferentialPrivacy => {
              Columns => [
                {
                  Name => 'MyString',

                },
                ...
              ],    # min: 1, max: 1

            },    # OPTIONAL
            DisallowedOutputColumns => [
              'MyAnalysisRuleColumnName', ...    # min: 1, max: 127
            ],
          },    # OPTIONAL
          List => {
            JoinColumns => [
              'MyAnalysisRuleColumnName', ...    # min: 1, max: 127
            ],    # min: 1
            ListColumns => [
              'MyAnalysisRuleColumnName', ...    # min: 1, max: 127
            ],
            AdditionalAnalyses =>
              'ALLOWED',    # values: ALLOWED, REQUIRED, NOT_ALLOWED; OPTIONAL
            AllowedJoinOperators => [
              'OR', ...     # values: OR, AND
            ],    # max: 2; OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      AnalysisRuleType          => 'AGGREGATION',
      ConfiguredTableIdentifier => 'MyConfiguredTableIdentifier',

      );

    # Results:
    my $AnalysisRule = $UpdateConfiguredTableAnalysisRuleOutput->AnalysisRule;

# Returns a L<Paws::CleanRooms::UpdateConfiguredTableAnalysisRuleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cleanrooms/UpdateConfiguredTableAnalysisRule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AnalysisRulePolicy => L<Paws::CleanRooms::ConfiguredTableAnalysisRulePolicy>

The new analysis rule policy for the configured table analysis rule.



=head2 B<REQUIRED> AnalysisRuleType => Str

The analysis rule type to be updated. Configured table analysis rules
are uniquely identified by their configured table identifier and
analysis rule type.

Valid values are: C<"AGGREGATION">, C<"LIST">, C<"CUSTOM">

=head2 B<REQUIRED> ConfiguredTableIdentifier => Str

The unique identifier for the configured table that the analysis rule
applies to. Currently accepts the configured table ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConfiguredTableAnalysisRule in L<Paws::CleanRooms>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

