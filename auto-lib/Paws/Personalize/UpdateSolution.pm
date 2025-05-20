
package Paws::Personalize::UpdateSolution;
  use Moose;
  has PerformAutoTraining => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'performAutoTraining' );
  has SolutionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'solutionArn' , required => 1);
  has SolutionUpdateConfig => (is => 'ro', isa => 'Paws::Personalize::SolutionUpdateConfig', traits => ['NameInRequest'], request_name => 'solutionUpdateConfig' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSolution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Personalize::UpdateSolutionResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Personalize::UpdateSolution - Arguments for method UpdateSolution on L<Paws::Personalize>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSolution on the
L<Amazon Personalize|Paws::Personalize> service. Use the attributes of this class
as arguments to method UpdateSolution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSolution.

=head1 SYNOPSIS

    my $personalize = Paws->service('Personalize');
    my $UpdateSolutionResponse = $personalize->UpdateSolution(
      SolutionArn          => 'MyArn',
      PerformAutoTraining  => 1,         # OPTIONAL
      SolutionUpdateConfig => {
        AutoTrainingConfig => {
          SchedulingExpression =>
            'MySchedulingExpression',    # min: 1, max: 16; OPTIONAL
        },    # OPTIONAL
        EventsConfig => {
          EventParametersList => [
            {
              EventType           => 'MyEventType',    # max: 256; OPTIONAL
              EventValueThreshold => 1,                # OPTIONAL
              Weight              => 1,                # max: 1; OPTIONAL
            },
            ...
          ],    # max: 10; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $SolutionArn = $UpdateSolutionResponse->SolutionArn;

    # Returns a L<Paws::Personalize::UpdateSolutionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/personalize/UpdateSolution>

=head1 ATTRIBUTES


=head2 PerformAutoTraining => Bool

Whether the solution uses automatic training to create new solution
versions (trained models). You can change the training frequency by
specifying a C<schedulingExpression> in the C<AutoTrainingConfig> as
part of solution configuration.

If you turn on automatic training, the first automatic training starts
within one hour after the solution update completes. If you manually
create a solution version within the hour, the solution skips the first
automatic training. For more information about automatic training, see
Configuring automatic training
(https://docs.aws.amazon.com/personalize/latest/dg/solution-config-auto-training.html).

After training starts, you can get the solution version's Amazon
Resource Name (ARN) with the ListSolutionVersions
(https://docs.aws.amazon.com/personalize/latest/dg/API_ListSolutionVersions.html)
API operation. To get its status, use the DescribeSolutionVersion
(https://docs.aws.amazon.com/personalize/latest/dg/API_DescribeSolutionVersion.html).



=head2 B<REQUIRED> SolutionArn => Str

The Amazon Resource Name (ARN) of the solution to update.



=head2 SolutionUpdateConfig => L<Paws::Personalize::SolutionUpdateConfig>

The new configuration details of the solution.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSolution in L<Paws::Personalize>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

