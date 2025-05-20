
package Paws::Glue::StartDataQualityRulesetEvaluationRun;
  use Moose;
  has AdditionalDataSources => (is => 'ro', isa => 'Paws::Glue::DataSourceMap');
  has AdditionalRunOptions => (is => 'ro', isa => 'Paws::Glue::DataQualityEvaluationRunAdditionalRunOptions');
  has ClientToken => (is => 'ro', isa => 'Str');
  has DataSource => (is => 'ro', isa => 'Paws::Glue::DataSource', required => 1);
  has NumberOfWorkers => (is => 'ro', isa => 'Int');
  has Role => (is => 'ro', isa => 'Str', required => 1);
  has RulesetNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has Timeout => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDataQualityRulesetEvaluationRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::StartDataQualityRulesetEvaluationRunResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StartDataQualityRulesetEvaluationRun - Arguments for method StartDataQualityRulesetEvaluationRun on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDataQualityRulesetEvaluationRun on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method StartDataQualityRulesetEvaluationRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDataQualityRulesetEvaluationRun.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $StartDataQualityRulesetEvaluationRunResponse =
      $glue->StartDataQualityRulesetEvaluationRun(
      DataSource => {
        GlueTable => {
          DatabaseName      => 'MyNameString',    # min: 1, max: 255
          TableName         => 'MyNameString',    # min: 1, max: 255
          AdditionalOptions => {
            'MyNameString' =>
              'MyDescriptionString',   # key: min: 1, max: 255, value: max: 2048
          },    # min: 1, max: 10; OPTIONAL
          CatalogId      => 'MyNameString',    # min: 1, max: 255
          ConnectionName => 'MyNameString',    # min: 1, max: 255
        },

      },
      Role         => 'MyRoleString',
      RulesetNames => [
        'MyNameString', ...                    # min: 1, max: 255
      ],
      AdditionalDataSources => {
        'MyNameString' => {
          GlueTable => {
            DatabaseName      => 'MyNameString',    # min: 1, max: 255
            TableName         => 'MyNameString',    # min: 1, max: 255
            AdditionalOptions => {
              'MyNameString' =>
                'MyDescriptionString', # key: min: 1, max: 255, value: max: 2048
            },    # min: 1, max: 10; OPTIONAL
            CatalogId      => 'MyNameString',    # min: 1, max: 255
            ConnectionName => 'MyNameString',    # min: 1, max: 255
          },

        },    # key: min: 1, max: 255
      },    # OPTIONAL
      AdditionalRunOptions => {
        CloudWatchMetricsEnabled      => 1,    # OPTIONAL
        CompositeRuleEvaluationMethod =>
          'COLUMN',                            # values: COLUMN, ROW; OPTIONAL
        ResultsS3Prefix => 'MyUriString',      # OPTIONAL
      },    # OPTIONAL
      ClientToken     => 'MyHashString',    # OPTIONAL
      NumberOfWorkers => 1,                 # OPTIONAL
      Timeout         => 1,                 # OPTIONAL
      );

    # Results:
    my $RunId = $StartDataQualityRulesetEvaluationRunResponse->RunId;

 # Returns a L<Paws::Glue::StartDataQualityRulesetEvaluationRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/StartDataQualityRulesetEvaluationRun>

=head1 ATTRIBUTES


=head2 AdditionalDataSources => L<Paws::Glue::DataSourceMap>

A map of reference strings to additional data sources you can specify
for an evaluation run.



=head2 AdditionalRunOptions => L<Paws::Glue::DataQualityEvaluationRunAdditionalRunOptions>

Additional run options you can specify for an evaluation run.



=head2 ClientToken => Str

Used for idempotency and is recommended to be set to a random ID (such
as a UUID) to avoid creating or starting multiple instances of the same
resource.



=head2 B<REQUIRED> DataSource => L<Paws::Glue::DataSource>

The data source (Glue table) associated with this run.



=head2 NumberOfWorkers => Int

The number of C<G.1X> workers to be used in the run. The default is 5.



=head2 B<REQUIRED> Role => Str

An IAM role supplied to encrypt the results of the run.



=head2 B<REQUIRED> RulesetNames => ArrayRef[Str|Undef]

A list of ruleset names.



=head2 Timeout => Int

The timeout for a run in minutes. This is the maximum time that a run
can consume resources before it is terminated and enters C<TIMEOUT>
status. The default is 2,880 minutes (48 hours).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDataQualityRulesetEvaluationRun in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

