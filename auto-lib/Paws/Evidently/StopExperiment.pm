
package Paws::Evidently::StopExperiment;
  use Moose;
  has DesiredState => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'desiredState');
  has Experiment => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'experiment', required => 1);
  has Project => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'project', required => 1);
  has Reason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'reason');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StopExperiment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{project}/experiments/{experiment}/cancel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::StopExperimentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::StopExperiment - Arguments for method StopExperiment on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StopExperiment on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method StopExperiment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StopExperiment.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $StopExperimentResponse = $evidently->StopExperiment(
      Experiment   => 'MyExperimentName',
      Project      => 'MyProjectRef',
      DesiredState => 'COMPLETED',          # OPTIONAL
      Reason       => 'MyDescription',      # OPTIONAL
    );

    # Results:
    my $EndedTime = $StopExperimentResponse->EndedTime;

    # Returns a L<Paws::Evidently::StopExperimentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/StopExperiment>

=head1 ATTRIBUTES


=head2 DesiredState => Str

Specify whether the experiment is to be considered C<COMPLETED> or
C<CANCELLED> after it stops.

Valid values are: C<"COMPLETED">, C<"CANCELLED">

=head2 B<REQUIRED> Experiment => Str

The name of the experiment to stop.



=head2 B<REQUIRED> Project => Str

The name or ARN of the project that contains the experiment to stop.



=head2 Reason => Str

A string that describes why you are stopping the experiment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StopExperiment in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

