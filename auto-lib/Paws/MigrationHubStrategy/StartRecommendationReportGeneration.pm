
package Paws::MigrationHubStrategy::StartRecommendationReportGeneration;
  use Moose;
  has GroupIdFilter => (is => 'ro', isa => 'ArrayRef[Paws::MigrationHubStrategy::Group]', traits => ['NameInRequest'], request_name => 'groupIdFilter');
  has OutputFormat => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'outputFormat');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartRecommendationReportGeneration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/start-recommendation-report-generation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubStrategy::StartRecommendationReportGenerationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::StartRecommendationReportGeneration - Arguments for method StartRecommendationReportGeneration on L<Paws::MigrationHubStrategy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartRecommendationReportGeneration on the
L<Migration Hub Strategy Recommendations|Paws::MigrationHubStrategy> service. Use the attributes of this class
as arguments to method StartRecommendationReportGeneration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartRecommendationReportGeneration.

=head1 SYNOPSIS

    my $migrationhub-strategy = Paws->service('MigrationHubStrategy');
    my $StartRecommendationReportGenerationResponse =
      $migrationhub -strategy->StartRecommendationReportGeneration(
      GroupIdFilter => [
        {
          Name =>
            'ExternalId',    # values: ExternalId, ExternalSourceType; OPTIONAL
          Value => 'MyString',    # max: 1024; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      OutputFormat => 'Excel',    # OPTIONAL
      );

    # Results:
    my $Id = $StartRecommendationReportGenerationResponse->Id;

# Returns a L<Paws::MigrationHubStrategy::StartRecommendationReportGenerationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-strategy/StartRecommendationReportGeneration>

=head1 ATTRIBUTES


=head2 GroupIdFilter => ArrayRef[L<Paws::MigrationHubStrategy::Group>]

Groups the resources in the recommendation report with a unique name.



=head2 OutputFormat => Str

The output format for the recommendation report file. The default
format is Microsoft Excel.

Valid values are: C<"Excel">, C<"Json">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartRecommendationReportGeneration in L<Paws::MigrationHubStrategy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

