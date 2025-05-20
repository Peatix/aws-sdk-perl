
package Paws::Evidently::UpdateExperiment;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Experiment => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'experiment', required => 1);
  has MetricGoals => (is => 'ro', isa => 'ArrayRef[Paws::Evidently::MetricGoalConfig]', traits => ['NameInRequest'], request_name => 'metricGoals');
  has OnlineAbConfig => (is => 'ro', isa => 'Paws::Evidently::OnlineAbConfig', traits => ['NameInRequest'], request_name => 'onlineAbConfig');
  has Project => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'project', required => 1);
  has RandomizationSalt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'randomizationSalt');
  has RemoveSegment => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'removeSegment');
  has SamplingRate => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'samplingRate');
  has Segment => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'segment');
  has Treatments => (is => 'ro', isa => 'ArrayRef[Paws::Evidently::TreatmentConfig]', traits => ['NameInRequest'], request_name => 'treatments');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateExperiment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{project}/experiments/{experiment}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::UpdateExperimentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::UpdateExperiment - Arguments for method UpdateExperiment on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateExperiment on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method UpdateExperiment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateExperiment.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $UpdateExperimentResponse = $evidently->UpdateExperiment(
      Experiment  => 'MyExperimentName',
      Project     => 'MyProjectRef',
      Description => 'MyDescription',      # OPTIONAL
      MetricGoals => [
        {
          MetricDefinition => {
            EntityIdKey  => 'MyJsonPath',               # min: 1, max: 256
            Name         => 'MyCwDimensionSafeName',    # min: 1, max: 255
            ValueKey     => 'MyJsonPath',               # min: 1, max: 256
            EventPattern => 'MyMetricDefinitionConfigEventPatternString'
            ,                                    # max: 1024; OPTIONAL
            UnitLabel => 'MyMetricUnitLabel',    # min: 1, max: 256; OPTIONAL
          },
          DesiredChange => 'INCREASE',    # values: INCREASE, DECREASE; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      OnlineAbConfig => {
        ControlTreatmentName => 'MyTreatmentName',  # min: 1, max: 127; OPTIONAL
        TreatmentWeights     => {
          'MyTreatmentName' =>
            1,    # key: min: 1, max: 127; OPTIONAL, value: max: 100000
        },    # OPTIONAL
      },    # OPTIONAL
      RandomizationSalt => 'MyRandomizationSalt',    # OPTIONAL
      RemoveSegment     => 1,                        # OPTIONAL
      SamplingRate      => 1,                        # OPTIONAL
      Segment           => 'MySegmentRef',           # OPTIONAL
      Treatments        => [
        {
          Feature     => 'MyFeatureName',      # min: 1, max: 127
          Name        => 'MyTreatmentName',    # min: 1, max: 127; OPTIONAL
          Variation   => 'MyVariationName',    # min: 1, max: 127
          Description => 'MyDescription',      # max: 160
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $Experiment = $UpdateExperimentResponse->Experiment;

    # Returns a L<Paws::Evidently::UpdateExperimentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/UpdateExperiment>

=head1 ATTRIBUTES


=head2 Description => Str

An optional description of the experiment.



=head2 B<REQUIRED> Experiment => Str

The name of the experiment to update.



=head2 MetricGoals => ArrayRef[L<Paws::Evidently::MetricGoalConfig>]

An array of structures that defines the metrics used for the
experiment, and whether a higher or lower value for each metric is the
goal.



=head2 OnlineAbConfig => L<Paws::Evidently::OnlineAbConfig>

A structure that contains the configuration of which variation o use as
the "control" version. The "control" version is used for comparison
with other variations. This structure also specifies how much
experiment traffic is allocated to each variation.



=head2 B<REQUIRED> Project => Str

The name or ARN of the project that contains the experiment that you
want to update.



=head2 RandomizationSalt => Str

When Evidently assigns a particular user session to an experiment, it
must use a randomization ID to determine which variation the user
session is served. This randomization ID is a combination of the entity
ID and C<randomizationSalt>. If you omit C<randomizationSalt>,
Evidently uses the experiment name as the C<randomizationSalt>.



=head2 RemoveSegment => Bool

Removes a segment from being used in an experiment. You can't use this
parameter if the experiment is currently running.



=head2 SamplingRate => Int

The portion of the available audience that you want to allocate to this
experiment, in thousandths of a percent. The available audience is the
total audience minus the audience that you have allocated to overrides
or current launches of this feature.

This is represented in thousandths of a percent. For example, specify
20,000 to allocate 20% of the available audience.



=head2 Segment => Str

Adds an audience I<segment> to an experiment. When a segment is used in
an experiment, only user sessions that match the segment pattern are
used in the experiment. You can't use this parameter if the experiment
is currently running.



=head2 Treatments => ArrayRef[L<Paws::Evidently::TreatmentConfig>]

An array of structures that define the variations being tested in the
experiment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateExperiment in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

