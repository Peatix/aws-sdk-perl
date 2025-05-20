
package Paws::Discovery::StartExportTask;
  use Moose;
  has EndTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'endTime' );
  has ExportDataFormat => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'exportDataFormat' );
  has Filters => (is => 'ro', isa => 'ArrayRef[Paws::Discovery::ExportFilter]', traits => ['NameInRequest'], request_name => 'filters' );
  has Preferences => (is => 'ro', isa => 'Paws::Discovery::ExportPreferences', traits => ['NameInRequest'], request_name => 'preferences' );
  has StartTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'startTime' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartExportTask');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Discovery::StartExportTaskResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Discovery::StartExportTask - Arguments for method StartExportTask on L<Paws::Discovery>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartExportTask on the
L<AWS Application Discovery Service|Paws::Discovery> service. Use the attributes of this class
as arguments to method StartExportTask.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartExportTask.

=head1 SYNOPSIS

    my $discovery = Paws->service('Discovery');
    my $StartExportTaskResponse = $discovery->StartExportTask(
      EndTime          => '1970-01-01T01:00:00',    # OPTIONAL
      ExportDataFormat => [
        'CSV', ...                                  # values: CSV
      ],    # OPTIONAL
      Filters => [
        {
          Condition => 'MyCondition',     # max: 200
          Name      => 'MyFilterName',    # max: 1000
          Values    => [
            'MyFilterValue', ...          # max: 1000
          ],

        },
        ...
      ],    # OPTIONAL
      Preferences => {
        Ec2RecommendationsPreferences => {
          CpuPerformanceMetricBasis => {
            Name             => 'MyUsageMetricBasisName',   # OPTIONAL
            PercentageAdjust => 1,                          # max: 100; OPTIONAL
          },    # OPTIONAL
          Enabled               => 1,    # OPTIONAL
          ExcludedInstanceTypes => [
            'MyEC2InstanceType', ...     # min: 1, max: 25
          ],    # OPTIONAL
          PreferredRegion =>
            'MyUserPreferredRegion',    # min: 1, max: 30; OPTIONAL
          RamPerformanceMetricBasis => {
            Name             => 'MyUsageMetricBasisName',   # OPTIONAL
            PercentageAdjust => 1,                          # max: 100; OPTIONAL
          },    # OPTIONAL
          ReservedInstanceOptions => {
            OfferingClass    => 'STANDARD',    # values: STANDARD, CONVERTIBLE
            PurchasingOption =>
              'ALL_UPFRONT',  # values: ALL_UPFRONT, PARTIAL_UPFRONT, NO_UPFRONT
            TermLength => 'ONE_YEAR',    # values: ONE_YEAR, THREE_YEAR

          },    # OPTIONAL
          Tenancy => 'DEDICATED',    # values: DEDICATED, SHARED; OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      StartTime => '1970-01-01T01:00:00',    # OPTIONAL
    );

    # Results:
    my $ExportId = $StartExportTaskResponse->ExportId;

    # Returns a L<Paws::Discovery::StartExportTaskResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/discovery/StartExportTask>

=head1 ATTRIBUTES


=head2 EndTime => Str

The end timestamp for exported data from the single Application
Discovery Agent selected in the filters. If no value is specified,
exported data includes the most recent data collected by the agent.



=head2 ExportDataFormat => ArrayRef[Str|Undef]

The file format for the returned export data. Default value is C<CSV>.
B<Note:> I<The> C<GRAPHML> I<option has been deprecated.>



=head2 Filters => ArrayRef[L<Paws::Discovery::ExportFilter>]

If a filter is present, it selects the single C<agentId> of the
Application Discovery Agent for which data is exported. The C<agentId>
can be found in the results of the C<DescribeAgents> API or CLI. If no
filter is present, C<startTime> and C<endTime> are ignored and exported
data includes both Amazon Web Services Application Discovery Service
Agentless Collector collectors data and summary data from Application
Discovery Agent agents.



=head2 Preferences => L<Paws::Discovery::ExportPreferences>

Indicates the type of data that needs to be exported. Only one
ExportPreferences
(https://docs.aws.amazon.com/application-discovery/latest/APIReference/API_ExportPreferences.html)
can be enabled at any time.



=head2 StartTime => Str

The start timestamp for exported data from the single Application
Discovery Agent selected in the filters. If no value is specified, data
is exported starting from the first data collected by the agent.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartExportTask in L<Paws::Discovery>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

