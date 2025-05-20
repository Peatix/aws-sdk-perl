
package Paws::GuardDuty::ListCoverage;
  use Moose;
  has DetectorId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'detectorId', required => 1);
  has FilterCriteria => (is => 'ro', isa => 'Paws::GuardDuty::CoverageFilterCriteria', traits => ['NameInRequest'], request_name => 'filterCriteria');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortCriteria => (is => 'ro', isa => 'Paws::GuardDuty::CoverageSortCriteria', traits => ['NameInRequest'], request_name => 'sortCriteria');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCoverage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/detector/{detectorId}/coverage');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GuardDuty::ListCoverageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GuardDuty::ListCoverage - Arguments for method ListCoverage on L<Paws::GuardDuty>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCoverage on the
L<Amazon GuardDuty|Paws::GuardDuty> service. Use the attributes of this class
as arguments to method ListCoverage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCoverage.

=head1 SYNOPSIS

    my $guardduty = Paws->service('GuardDuty');
    my $ListCoverageResponse = $guardduty->ListCoverage(
      DetectorId     => 'MyDetectorId',
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
      MaxResults   => 1,             # OPTIONAL
      NextToken    => 'MyString',    # OPTIONAL
      SortCriteria => {
        AttributeName => 'ACCOUNT_ID'
        , # values: ACCOUNT_ID, CLUSTER_NAME, COVERAGE_STATUS, ISSUE, ADDON_VERSION, UPDATED_AT, EKS_CLUSTER_NAME, ECS_CLUSTER_NAME, INSTANCE_ID; OPTIONAL
        OrderBy => 'ASC',    # values: ASC, DESC; OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListCoverageResponse->NextToken;
    my $Resources = $ListCoverageResponse->Resources;

    # Returns a L<Paws::GuardDuty::ListCoverageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/guardduty/ListCoverage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DetectorId => Str

The unique ID of the detector whose coverage details you want to
retrieve.

To find the C<detectorId> in the current Region, see the Settings page
in the GuardDuty console, or run the ListDetectors
(https://docs.aws.amazon.com/guardduty/latest/APIReference/API_ListDetectors.html)
API.



=head2 FilterCriteria => L<Paws::GuardDuty::CoverageFilterCriteria>

Represents the criteria used to filter the coverage details.



=head2 MaxResults => Int

The maximum number of results to return in the response.



=head2 NextToken => Str

A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the NextToken value
returned from the previous request to continue listing results after
the first page.



=head2 SortCriteria => L<Paws::GuardDuty::CoverageSortCriteria>

Represents the criteria used to sort the coverage details.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCoverage in L<Paws::GuardDuty>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

