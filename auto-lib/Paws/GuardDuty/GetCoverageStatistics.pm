
package Paws::GuardDuty::GetCoverageStatistics;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has FilterCriteria => (is => 'ro', isa => 'Paws::GuardDuty::CoverageFilterCriteria', traits => ['NameInRequest'], request_name => 'filterCriteria');
  has StatisticsType => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'statisticsType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCoverageStatistics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/coverage/statistics');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::GetCoverageStatisticsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::GetCoverageStatistics - Arguments for method GetCoverageStatistics on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCoverageStatistics on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method GetCoverageStatistics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCoverageStatistics.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $GetCoverageStatisticsResponse = $guardduty->GetCoverageStatistics(
      DetectorId     => 'MyDetectorId',
      StatisticsType => [
        'COUNT_BY_RESOURCE_TYPE',
        ...    # values: COUNT_BY_RESOURCE_TYPE, COUNT_BY_COVERAGE_STATUS
      ],
      FilterCriteria => {
        FilterCriterion => [
          {
            CriterionKey => 'ACCOUNT_ID'
            , # values: ACCOUNT_ID, CLUSTER_NAME, RESOURCE_TYPE, COVERAGE_STATUS, ADDON_VERSION, MANAGEMENT_TYPE, EKS_CLUSTER_NAME, ECS_CLUSTER_NAME, AGENT_VERSION, INSTANCE_ID, CLUSTER_ARN; OPTIONAL
            FilterCondition => {
              Equals    => [ 'MyString', ... ],    # OPTIONAL
              NotEquals => [ 'MyString', ... ],    # OPTIONAL
            },    # OPTIONAL
          },
          ...
        ],    # max: 50; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $CoverageStatistics = $GetCoverageStatisticsResponse->CoverageStatistics;

    # Returns a L<Paws::GuardDuty::GetCoverageStatisticsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/GetCoverageStatistics>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The unique ID of the GuardDuty detector.

To find the C<detectorId> in the current Region, see the Settings page
in the GuardDuty console, or run the ListDetectors
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html)
API.



=head2 FilterCriteria => L<Paws::GuardDuty::CoverageFilterCriteria>

Represents the criteria used to filter the coverage statistics.



=head2 B<REQUIRED> StatisticsType => ArrayRef[Str|Undef]

Represents the statistics type used to aggregate the coverage details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCoverageStatistics in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

