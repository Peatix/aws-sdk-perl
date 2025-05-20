
package Paws::Inspector2::ListCoverageStatistics;
  use Moose;
  has FilterCriteria => (is => 'ro', isa => 'Paws::Inspector2::CoverageFilterCriteria', traits => ['NameInRequest'], request_name => 'filterCriteria');
  has GroupBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'groupBy');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCoverageStatistics');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/coverage/statistics/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::ListCoverageStatisticsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ListCoverageStatistics - Arguments for method ListCoverageStatistics on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCoverageStatistics on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method ListCoverageStatistics.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCoverageStatistics.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $ListCoverageStatisticsResponse = $inspector2->ListCoverageStatistics(
      FilterCriteria => {
        AccountId => [
          {
            Comparison => 'EQUALS',                 # values: EQUALS, NOT_EQUALS
            Value      => 'MyCoverageStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        Ec2InstanceTags => [
          {
            Comparison => 'EQUALS',              # values: EQUALS
            Key        => 'MyNonEmptyString',    # min: 1
            Value      => 'MyNonEmptyString',    # min: 1
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        EcrImageTags => [
          {
            Comparison => 'EQUALS',                 # values: EQUALS, NOT_EQUALS
            Value      => 'MyCoverageStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        EcrRepositoryName => [
          {
            Comparison => 'EQUALS',                 # values: EQUALS, NOT_EQUALS
            Value      => 'MyCoverageStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ImagePulledAt => [
          {
            EndInclusive   => '1970-01-01T01:00:00',    # OPTIONAL
            StartInclusive => '1970-01-01T01:00:00',    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        LambdaFunctionName => [
          {
            Comparison => 'EQUALS',                 # values: EQUALS, NOT_EQUALS
            Value      => 'MyCoverageStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        LambdaFunctionRuntime => [
          {
            Comparison => 'EQUALS',                 # values: EQUALS, NOT_EQUALS
            Value      => 'MyCoverageStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        LambdaFunctionTags => [
          {
            Comparison => 'EQUALS',              # values: EQUALS
            Key        => 'MyNonEmptyString',    # min: 1
            Value      => 'MyNonEmptyString',    # min: 1
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        LastScannedAt => [
          {
            EndInclusive   => '1970-01-01T01:00:00',    # OPTIONAL
            StartInclusive => '1970-01-01T01:00:00',    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ResourceId => [
          {
            Comparison => 'EQUALS',                 # values: EQUALS, NOT_EQUALS
            Value      => 'MyCoverageStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ResourceType => [
          {
            Comparison => 'EQUALS',                 # values: EQUALS, NOT_EQUALS
            Value      => 'MyCoverageStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ScanMode => [
          {
            Comparison => 'EQUALS',                 # values: EQUALS, NOT_EQUALS
            Value      => 'MyCoverageStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ScanStatusCode => [
          {
            Comparison => 'EQUALS',                 # values: EQUALS, NOT_EQUALS
            Value      => 'MyCoverageStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ScanStatusReason => [
          {
            Comparison => 'EQUALS',                 # values: EQUALS, NOT_EQUALS
            Value      => 'MyCoverageStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ScanType => [
          {
            Comparison => 'EQUALS',                 # values: EQUALS, NOT_EQUALS
            Value      => 'MyCoverageStringInput',  # min: 1, max: 1024

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
      },    # OPTIONAL
      GroupBy   => 'SCAN_STATUS_CODE',    # OPTIONAL
      NextToken => 'MyNextToken',         # OPTIONAL
    );

    # Results:
    my $CountsByGroup = $ListCoverageStatisticsResponse->CountsByGroup;
    my $NextToken     = $ListCoverageStatisticsResponse->NextToken;
    my $TotalCounts   = $ListCoverageStatisticsResponse->TotalCounts;

    # Returns a L<Paws::Inspector2::ListCoverageStatisticsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/ListCoverageStatistics>

=head1 ATTRIBUTES


=head2 FilterCriteria => L<Paws::Inspector2::CoverageFilterCriteria>

An object that contains details on the filters to apply to the coverage
data for your environment.



=head2 GroupBy => Str

The value to group the results by.

Valid values are: C<"SCAN_STATUS_CODE">, C<"SCAN_STATUS_REASON">, C<"ACCOUNT_ID">, C<"RESOURCE_TYPE">, C<"ECR_REPOSITORY_NAME">

=head2 NextToken => Str

A token to use for paginating results that are returned in the
response. Set the value of this parameter to null for the first request
to a list action. For subsequent calls, use the C<NextToken> value
returned from the previous request to continue listing results after
the first page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCoverageStatistics in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

