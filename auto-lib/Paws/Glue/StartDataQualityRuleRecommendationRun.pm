
package Paws::Glue::StartDataQualityRuleRecommendationRun;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has CreatedRulesetName => (is => 'ro', isa => 'Str');
  has DataQualitySecurityConfiguration => (is => 'ro', isa => 'Str');
  has DataSource => (is => 'ro', isa => 'Paws::Glue::DataSource', required => 1);
  has NumberOfWorkers => (is => 'ro', isa => 'Int');
  has Role => (is => 'ro', isa => 'Str', required => 1);
  has Timeout => (is => 'ro', isa => 'Int');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartDataQualityRuleRecommendationRun');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::StartDataQualityRuleRecommendationRunResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::StartDataQualityRuleRecommendationRun - Arguments for method StartDataQualityRuleRecommendationRun on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartDataQualityRuleRecommendationRun on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method StartDataQualityRuleRecommendationRun.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartDataQualityRuleRecommendationRun.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $StartDataQualityRuleRecommendationRunResponse =
      $glue->StartDataQualityRuleRecommendationRun(
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
      Role                             => 'MyRoleString',
      ClientToken                      => 'MyHashString',    # OPTIONAL
      CreatedRulesetName               => 'MyNameString',    # OPTIONAL
      DataQualitySecurityConfiguration => 'MyNameString',    # OPTIONAL
      NumberOfWorkers                  => 1,                 # OPTIONAL
      Timeout                          => 1,                 # OPTIONAL
      );

    # Results:
    my $RunId = $StartDataQualityRuleRecommendationRunResponse->RunId;

# Returns a L<Paws::Glue::StartDataQualityRuleRecommendationRunResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/StartDataQualityRuleRecommendationRun>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Used for idempotency and is recommended to be set to a random ID (such
as a UUID) to avoid creating or starting multiple instances of the same
resource.



=head2 CreatedRulesetName => Str

A name for the ruleset.



=head2 DataQualitySecurityConfiguration => Str

The name of the security configuration created with the data quality
encryption option.



=head2 B<REQUIRED> DataSource => L<Paws::Glue::DataSource>

The data source (Glue table) associated with this run.



=head2 NumberOfWorkers => Int

The number of C<G.1X> workers to be used in the run. The default is 5.



=head2 B<REQUIRED> Role => Str

An IAM role supplied to encrypt the results of the run.



=head2 Timeout => Int

The timeout for a run in minutes. This is the maximum time that a run
can consume resources before it is terminated and enters C<TIMEOUT>
status. The default is 2,880 minutes (48 hours).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartDataQualityRuleRecommendationRun in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

