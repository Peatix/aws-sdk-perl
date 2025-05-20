
package Paws::ApplicationSignals::UpdateServiceLevelObjective;
  use Moose;
  has BurnRateConfigurations => (is => 'ro', isa => 'ArrayRef[Paws::ApplicationSignals::BurnRateConfiguration]');
  has Description => (is => 'ro', isa => 'Str');
  has Goal => (is => 'ro', isa => 'Paws::ApplicationSignals::Goal');
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'Id', required => 1);
  has RequestBasedSliConfig => (is => 'ro', isa => 'Paws::ApplicationSignals::RequestBasedServiceLevelIndicatorConfig');
  has SliConfig => (is => 'ro', isa => 'Paws::ApplicationSignals::ServiceLevelIndicatorConfig');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServiceLevelObjective');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/slo/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationSignals::UpdateServiceLevelObjectiveOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationSignals::UpdateServiceLevelObjective - Arguments for method UpdateServiceLevelObjective on L<Paws::ApplicationSignals>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServiceLevelObjective on the
L<Amazon CloudWatch Application Signals|Paws::ApplicationSignals> service. Use the attributes of this class
as arguments to method UpdateServiceLevelObjective.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServiceLevelObjective.

=head1 SYNOPSIS

    my $application-signals = Paws->service('ApplicationSignals');
    my $UpdateServiceLevelObjectiveOutput =
      $application -signals->UpdateServiceLevelObjective(
      Id                     => 'MyServiceLevelObjectiveId',
      BurnRateConfigurations => [
        {
          LookBackWindowMinutes => 1,    # min: 1, max: 10080

        },
        ...
      ],    # OPTIONAL
      Description => 'MyServiceLevelObjectiveDescription',    # OPTIONAL
      Goal        => {
        AttainmentGoal => 1,                                  # OPTIONAL
        Interval       => {
          CalendarInterval => {
            Duration     => 1,           # min: 1
            DurationUnit => 'MINUTE',    # values: MINUTE, HOUR, DAY, MONTH
            StartTime    => '1970-01-01T01:00:00',

          },    # OPTIONAL
          RollingInterval => {
            Duration     => 1,           # min: 1
            DurationUnit => 'MINUTE',    # values: MINUTE, HOUR, DAY, MONTH

          },    # OPTIONAL
        },    # OPTIONAL
        WarningThreshold => 1,    # OPTIONAL
      },    # OPTIONAL
      RequestBasedSliConfig => {
        RequestBasedSliMetricConfig => {
          DependencyConfig => {
            DependencyKeyAttributes => {
              'MyKeyAttributeName' =>
                'MyKeyAttributeValue',    # , value: min: 1, max: 1024
            },    # min: 1, max: 4
            DependencyOperationName => 'MyOperationName',    # min: 1, max: 255

          },    # OPTIONAL
          KeyAttributes => {
            'MyKeyAttributeName' =>
              'MyKeyAttributeValue',    # , value: min: 1, max: 1024
          },    # min: 1, max: 4
          MetricType => 'LATENCY',    # values: LATENCY, AVAILABILITY; OPTIONAL
          MonitoredRequestCountMetric => {
            BadCountMetric => [
              {
                Id         => 'MyMetricId',     # min: 1, max: 255
                AccountId  => 'MyAccountId',    # min: 1, max: 255; OPTIONAL
                Expression =>
                  'MyMetricExpression',         # min: 1, max: 2048; OPTIONAL
                Label      => 'MyMetricLabel',  # OPTIONAL
                MetricStat => {
                  Metric => {
                    Dimensions => [
                      {
                        Name  => 'MyDimensionName',     # min: 1, max: 255
                        Value => 'MyDimensionValue',    # min: 1, max: 1024

                      },
                      ...
                    ],    # max: 30; OPTIONAL
                    MetricName => 'MyMetricName',   # min: 1, max: 255; OPTIONAL
                    Namespace  => 'MyNamespace',    # min: 1, max: 255; OPTIONAL
                  },
                  Period => 1,                      # min: 1
                  Stat   => 'MyStat',
                  Unit   => 'Microseconds'
                  , # values: Microseconds, Milliseconds, Seconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None; OPTIONAL
                },    # OPTIONAL
                Period     => 1,    # min: 1
                ReturnData => 1,    # OPTIONAL
              },
              ...
            ],    # OPTIONAL
            GoodCountMetric => [
              {
                Id         => 'MyMetricId',     # min: 1, max: 255
                AccountId  => 'MyAccountId',    # min: 1, max: 255; OPTIONAL
                Expression =>
                  'MyMetricExpression',         # min: 1, max: 2048; OPTIONAL
                Label      => 'MyMetricLabel',  # OPTIONAL
                MetricStat => {
                  Metric => {
                    Dimensions => [
                      {
                        Name  => 'MyDimensionName',     # min: 1, max: 255
                        Value => 'MyDimensionValue',    # min: 1, max: 1024

                      },
                      ...
                    ],    # max: 30; OPTIONAL
                    MetricName => 'MyMetricName',   # min: 1, max: 255; OPTIONAL
                    Namespace  => 'MyNamespace',    # min: 1, max: 255; OPTIONAL
                  },
                  Period => 1,                      # min: 1
                  Stat   => 'MyStat',
                  Unit   => 'Microseconds'
                  , # values: Microseconds, Milliseconds, Seconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None; OPTIONAL
                },    # OPTIONAL
                Period     => 1,    # min: 1
                ReturnData => 1,    # OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
          OperationName           => 'MyOperationName',    # min: 1, max: 255
          TotalRequestCountMetric => [
            {
              Id         => 'MyMetricId',          # min: 1, max: 255
              AccountId  => 'MyAccountId',         # min: 1, max: 255; OPTIONAL
              Expression => 'MyMetricExpression',  # min: 1, max: 2048; OPTIONAL
              Label      => 'MyMetricLabel',       # OPTIONAL
              MetricStat => {
                Metric => {
                  Dimensions => [
                    {
                      Name  => 'MyDimensionName',     # min: 1, max: 255
                      Value => 'MyDimensionValue',    # min: 1, max: 1024

                    },
                    ...
                  ],    # max: 30; OPTIONAL
                  MetricName => 'MyMetricName',    # min: 1, max: 255; OPTIONAL
                  Namespace  => 'MyNamespace',     # min: 1, max: 255; OPTIONAL
                },
                Period => 1,                       # min: 1
                Stat   => 'MyStat',
                Unit   => 'Microseconds'
                , # values: Microseconds, Milliseconds, Seconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None; OPTIONAL
              },    # OPTIONAL
              Period     => 1,    # min: 1
              ReturnData => 1,    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },
        ComparisonOperator => 'GreaterThanOrEqualTo'
        , # values: GreaterThanOrEqualTo, GreaterThan, LessThan, LessThanOrEqualTo; OPTIONAL
        MetricThreshold => 1,    # OPTIONAL
      },    # OPTIONAL
      SliConfig => {
        ComparisonOperator => 'GreaterThanOrEqualTo'
        , # values: GreaterThanOrEqualTo, GreaterThan, LessThan, LessThanOrEqualTo; OPTIONAL
        MetricThreshold => 1,    # OPTIONAL
        SliMetricConfig => {
          DependencyConfig => {
            DependencyKeyAttributes => {
              'MyKeyAttributeName' =>
                'MyKeyAttributeValue',    # , value: min: 1, max: 1024
            },    # min: 1, max: 4
            DependencyOperationName => 'MyOperationName',    # min: 1, max: 255

          },    # OPTIONAL
          KeyAttributes => {
            'MyKeyAttributeName' =>
              'MyKeyAttributeValue',    # , value: min: 1, max: 1024
          },    # min: 1, max: 4
          MetricDataQueries => [
            {
              Id         => 'MyMetricId',          # min: 1, max: 255
              AccountId  => 'MyAccountId',         # min: 1, max: 255; OPTIONAL
              Expression => 'MyMetricExpression',  # min: 1, max: 2048; OPTIONAL
              Label      => 'MyMetricLabel',       # OPTIONAL
              MetricStat => {
                Metric => {
                  Dimensions => [
                    {
                      Name  => 'MyDimensionName',     # min: 1, max: 255
                      Value => 'MyDimensionValue',    # min: 1, max: 1024

                    },
                    ...
                  ],    # max: 30; OPTIONAL
                  MetricName => 'MyMetricName',    # min: 1, max: 255; OPTIONAL
                  Namespace  => 'MyNamespace',     # min: 1, max: 255; OPTIONAL
                },
                Period => 1,                       # min: 1
                Stat   => 'MyStat',
                Unit   => 'Microseconds'
                , # values: Microseconds, Milliseconds, Seconds, Bytes, Kilobytes, Megabytes, Gigabytes, Terabytes, Bits, Kilobits, Megabits, Gigabits, Terabits, Percent, Count, Bytes/Second, Kilobytes/Second, Megabytes/Second, Gigabytes/Second, Terabytes/Second, Bits/Second, Kilobits/Second, Megabits/Second, Gigabits/Second, Terabits/Second, Count/Second, None; OPTIONAL
              },    # OPTIONAL
              Period     => 1,    # min: 1
              ReturnData => 1,    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
          MetricType    => 'LATENCY',  # values: LATENCY, AVAILABILITY; OPTIONAL
          OperationName => 'MyOperationName',    # min: 1, max: 255
          PeriodSeconds => 1,                    # min: 60, max: 900; OPTIONAL
          Statistic     =>
            'MyServiceLevelIndicatorStatistic',  # min: 1, max: 20; OPTIONAL
        },

      },    # OPTIONAL
      );

    # Results:
    my $Slo = $UpdateServiceLevelObjectiveOutput->Slo;

# Returns a L<Paws::ApplicationSignals::UpdateServiceLevelObjectiveOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/application-signals/UpdateServiceLevelObjective>

=head1 ATTRIBUTES


=head2 BurnRateConfigurations => ArrayRef[L<Paws::ApplicationSignals::BurnRateConfiguration>]

Use this array to create I<burn rates> for this SLO. Each burn rate is
a metric that indicates how fast the service is consuming the error
budget, relative to the attainment goal of the SLO.



=head2 Description => Str

An optional description for the SLO.



=head2 Goal => L<Paws::ApplicationSignals::Goal>

A structure that contains the attributes that determine the goal of the
SLO. This includes the time period for evaluation and the attainment
threshold.



=head2 B<REQUIRED> Id => Str

The Amazon Resource Name (ARN) or name of the service level objective
that you want to update.



=head2 RequestBasedSliConfig => L<Paws::ApplicationSignals::RequestBasedServiceLevelIndicatorConfig>

If this SLO is a request-based SLO, this structure defines the
information about what performance metric this SLO will monitor.

You can't specify both C<SliConfig> and C<RequestBasedSliConfig> in the
same operation.



=head2 SliConfig => L<Paws::ApplicationSignals::ServiceLevelIndicatorConfig>

If this SLO is a period-based SLO, this structure defines the
information about what performance metric this SLO will monitor.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServiceLevelObjective in L<Paws::ApplicationSignals>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

