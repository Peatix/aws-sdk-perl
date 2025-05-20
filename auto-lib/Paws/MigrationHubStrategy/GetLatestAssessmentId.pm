
package Paws::MigrationHubStrategy::GetLatestAssessmentId;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetLatestAssessmentId');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/get-latest-assessment-id');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubStrategy::GetLatestAssessmentIdResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::GetLatestAssessmentId - Arguments for method GetLatestAssessmentId on L<Paws::MigrationHubStrategy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetLatestAssessmentId on the
L<Migration Hub Strategy Recommendations|Paws::MigrationHubStrategy> service. Use the attributes of this class
as arguments to method GetLatestAssessmentId.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetLatestAssessmentId.

=head1 SYNOPSIS

    my $migrationhub-strategy = Paws->service('MigrationHubStrategy');
    my $GetLatestAssessmentIdResponse =
      $migrationhub -strategy->GetLatestAssessmentId();

    # Results:
    my $Id = $GetLatestAssessmentIdResponse->Id;

# Returns a L<Paws::MigrationHubStrategy::GetLatestAssessmentIdResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-strategy/GetLatestAssessmentId>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetLatestAssessmentId in L<Paws::MigrationHubStrategy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

