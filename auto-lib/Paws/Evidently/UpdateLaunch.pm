
package Paws::Evidently::UpdateLaunch;
  use Moose;
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Groups => (is => 'ro', isa => 'ArrayRef[Paws::Evidently::LaunchGroupConfig]', traits => ['NameInRequest'], request_name => 'groups');
  has Launch => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'launch', required => 1);
  has MetricMonitors => (is => 'ro', isa => 'ArrayRef[Paws::Evidently::MetricMonitorConfig]', traits => ['NameInRequest'], request_name => 'metricMonitors');
  has Project => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'project', required => 1);
  has RandomizationSalt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'randomizationSalt');
  has ScheduledSplitsConfig => (is => 'ro', isa => 'Paws::Evidently::ScheduledSplitsLaunchConfig', traits => ['NameInRequest'], request_name => 'scheduledSplitsConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateLaunch');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/projects/{project}/launches/{launch}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Evidently::UpdateLaunchResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Evidently::UpdateLaunch - Arguments for method UpdateLaunch on L<Paws::Evidently>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateLaunch on the
L<Amazon CloudWatch Evidently|Paws::Evidently> service. Use the attributes of this class
as arguments to method UpdateLaunch.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateLaunch.

=head1 SYNOPSIS

    my $evidently = Paws->service('Evidently');
    my $UpdateLaunchResponse = $evidently->UpdateLaunch(
      Launch      => 'MyLaunchName',
      Project     => 'MyProjectRef',
      Description => 'MyDescription',    # OPTIONAL
      Groups      => [
        {
          Feature     => 'MyFeatureName',      # min: 1, max: 127
          Name        => 'MyGroupName',        # min: 1, max: 127
          Variation   => 'MyVariationName',    # min: 1, max: 127
          Description => 'MyDescription',      # max: 160
        },
        ...
      ],    # OPTIONAL
      MetricMonitors => [
        {
          MetricDefinition => {
            EntityIdKey  => 'MyJsonPath',               # min: 1, max: 256
            Name         => 'MyCwDimensionSafeName',    # min: 1, max: 255
            ValueKey     => 'MyJsonPath',               # min: 1, max: 256
            EventPattern => 'MyMetricDefinitionConfigEventPatternString'
            ,                                    # max: 1024; OPTIONAL
            UnitLabel => 'MyMetricUnitLabel',    # min: 1, max: 256; OPTIONAL
          },

        },
        ...
      ],    # OPTIONAL
      RandomizationSalt     => 'MyRandomizationSalt',    # OPTIONAL
      ScheduledSplitsConfig => {
        Steps => [
          {
            GroupWeights => {
              'MyGroupName' => 1,    # key: min: 1, max: 127, value: max: 100000
            },    # max: 5
            StartTime        => '1970-01-01T01:00:00',
            SegmentOverrides => [
              {
                EvaluationOrder => 1,
                Segment         => 'MySegmentRef',    # max: 2048
                Weights         => {
                  'MyGroupName' =>
                    1,    # key: min: 1, max: 127, value: max: 100000
                },    # max: 5

              },
              ...
            ],    # max: 6; OPTIONAL
          },
          ...
        ],    # min: 1, max: 6

      },    # OPTIONAL
    );

    # Results:
    my $Launch = $UpdateLaunchResponse->Launch;

    # Returns a L<Paws::Evidently::UpdateLaunchResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/evidently/UpdateLaunch>

=head1 ATTRIBUTES


=head2 Description => Str

An optional description for the launch.



=head2 Groups => ArrayRef[L<Paws::Evidently::LaunchGroupConfig>]

An array of structures that contains the feature and variations that
are to be used for the launch.



=head2 B<REQUIRED> Launch => Str

The name of the launch that is to be updated.



=head2 MetricMonitors => ArrayRef[L<Paws::Evidently::MetricMonitorConfig>]

An array of structures that define the metrics that will be used to
monitor the launch performance.



=head2 B<REQUIRED> Project => Str

The name or ARN of the project that contains the launch that you want
to update.



=head2 RandomizationSalt => Str

When Evidently assigns a particular user session to a launch, it must
use a randomization ID to determine which variation the user session is
served. This randomization ID is a combination of the entity ID and
C<randomizationSalt>. If you omit C<randomizationSalt>, Evidently uses
the launch name as the C<randomizationSalt>.



=head2 ScheduledSplitsConfig => L<Paws::Evidently::ScheduledSplitsLaunchConfig>

An array of structures that define the traffic allocation percentages
among the feature variations during each step of the launch.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateLaunch in L<Paws::Evidently>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

