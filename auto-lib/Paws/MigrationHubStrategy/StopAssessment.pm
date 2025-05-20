
package Paws::MigrationHubStrategy::StopAssessment;
  use Moose;
  has AssessmentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'assessmentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopAssessment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/stop-assessment');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MigrationHubStrategy::StopAssessmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MigrationHubStrategy::StopAssessment - Arguments for method StopAssessment on L<Paws::MigrationHubStrategy>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopAssessment on the
L<Migration Hub Strategy Recommendations|Paws::MigrationHubStrategy> service. Use the attributes of this class
as arguments to method StopAssessment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopAssessment.

=head1 SYNOPSIS

    my $migrationhub-strategy = Paws->service('MigrationHubStrategy');
    my $StopAssessmentResponse = $migrationhub -strategy->StopAssessment(
      AssessmentId => 'MyAsyncTaskId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/migrationhub-strategy/StopAssessment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AssessmentId => Str

The C<assessmentId> returned by StartAssessment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopAssessment in L<Paws::MigrationHubStrategy>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

