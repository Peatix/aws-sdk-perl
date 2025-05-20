
package Paws::Evidently::CreateExperiment;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has MetricGoals => (is => 'ro', isa => 'ArrayRef[Paws::Evidently::MetricGoalConfig]', traits => ['NameInRequest'], request_name => 'metricGoals', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has OnlineAbConfig => (is => 'ro', isa => 'Paws::Evidently::OnlineAbConfig', traits => ['NameInRequest'], request_name => 'onlineAbConfig');
  has Project => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'project', required => 1);
  has RandomizationSalt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'randomizationSalt');
  has SamplingRate => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'samplingRate');
  has Segment => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'segment');
  has Tags => (is => 'ro', isa => 'Paws::Evidently::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Treatments => (is => 'ro', isa => 'ArrayRef[Paws::Evidently::TreatmentConfig]', traits => ['NameInRequest'], request_name => 'treatments', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateExperiment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{project}/experiments');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::CreateExperimentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::CreateExperiment - Arguments for method CreateExperiment on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateExperiment on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method CreateExperiment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateExperiment.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $CreateExperimentResponse = $evidently->CreateExperiment(
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
      ],
      Name       => 'MyExperimentName',
      Project    => 'MyProjectRef',
      Treatments => [
        {
          Feature     => 'MyFeatureName',      # min: 1, max: 127
          Name        => 'MyTreatmentName',    # min: 1, max: 127
          Variation   => 'MyVariationName',    # min: 1, max: 127
          Description => 'MyDescription',      # max: 160; OPTIONAL
        },
        ...
      ],
      Description    => 'MyDescription',       # OPTIONAL
      OnlineAbConfig => {
        ControlTreatmentName => 'MyTreatmentName',    # min: 1, max: 127
        TreatmentWeights     => {
          'MyTreatmentName' => 1,    # key: min: 1, max: 127, value: max: 100000
        },    # OPTIONAL
      },    # OPTIONAL
      RandomizationSalt => 'MyRandomizationSalt',    # OPTIONAL
      SamplingRate      => 1,                        # OPTIONAL
      Segment           => 'MySegmentRef',           # OPTIONAL
      Tags              => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Experiment = $CreateExperimentResponse->Experiment;

    # Returns a L<Paws::Evidently::CreateExperimentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/CreateExperiment>

=head1 ATTRIBUTES


=head2 Description => Str

An optional description of the experiment.



=head2 B<REQUIRED> MetricGoals => ArrayRef[L<Paws::Evidently::MetricGoalConfig>]

An array of structures that defines the metrics used for the
experiment, and whether a higher or lower value for each metric is the
goal.



=head2 B<REQUIRED> Name => Str

A name for the new experiment.



=head2 OnlineAbConfig => L<Paws::Evidently::OnlineAbConfig>

A structure that contains the configuration of which variation to use
as the "control" version. tThe "control" version is used for comparison
with other variations. This structure also specifies how much
experiment traffic is allocated to each variation.



=head2 B<REQUIRED> Project => Str

The name or ARN of the project that you want to create the new
experiment in.



=head2 RandomizationSalt => Str

When Evidently assigns a particular user session to an experiment, it
must use a randomization ID to determine which variation the user
session is served. This randomization ID is a combination of the entity
ID and C<randomizationSalt>. If you omit C<randomizationSalt>,
Evidently uses the experiment name as the C<randomizationSalt>.



=head2 SamplingRate => Int

The portion of the available audience that you want to allocate to this
experiment, in thousandths of a percent. The available audience is the
total audience minus the audience that you have allocated to overrides
or current launches of this feature.

This is represented in thousandths of a percent. For example, specify
10,000 to allocate 10% of the available audience.



=head2 Segment => Str

Specifies an audience I<segment> to use in the experiment. When a
segment is used in an experiment, only user sessions that match the
segment pattern are used in the experiment.



=head2 Tags => L<Paws::Evidently::TagMap>

Assigns one or more tags (key-value pairs) to the experiment.

Tags can help you organize and categorize your resources. You can also
use them to scope user permissions by granting a user permission to
access or change only resources with certain tag values.

Tags don't have any semantic meaning to Amazon Web Services and are
interpreted strictly as strings of characters.

You can associate as many as 50 tags with an experiment.

For more information, see Tagging Amazon Web Services resources
(https://docs.aws.amazon.com/general/latest/gr/aws_tagging.html).



=head2 B<REQUIRED> Treatments => ArrayRef[L<Paws::Evidently::TreatmentConfig>]

An array of structures that describe the configuration of each feature
variation used in the experiment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateExperiment in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

