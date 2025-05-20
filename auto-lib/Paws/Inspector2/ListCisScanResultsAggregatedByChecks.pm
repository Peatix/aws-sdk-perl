
package Paws::Inspector2::ListCisScanResultsAggregatedByChecks;
  use Moose;
  has FilterCriteria => (is => 'ro', isa => 'Paws::Inspector2::CisScanResultsAggregatedByChecksFilterCriteria', traits => ['NameInRequest'], request_name => 'filterCriteria');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ScanArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanArn', required => 1);
  has SortBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortBy');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortOrder');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCisScanResultsAggregatedByChecks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cis/scan-result/check/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::ListCisScanResultsAggregatedByChecksResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ListCisScanResultsAggregatedByChecks - Arguments for method ListCisScanResultsAggregatedByChecks on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCisScanResultsAggregatedByChecks on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method ListCisScanResultsAggregatedByChecks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCisScanResultsAggregatedByChecks.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $ListCisScanResultsAggregatedByChecksResponse =
      $inspector2->ListCisScanResultsAggregatedByChecks(
      ScanArn        => 'MyCisScanArn',
      FilterCriteria => {
        AccountIdFilters => [
          {
            Comparison => 'EQUALS',     # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyString',

          },
          ...
        ],    # min: 1, max: 1; OPTIONAL
        CheckIdFilters => [
          {
            Comparison => 'EQUALS',     # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyString',

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        FailedResourcesFilters => [
          {
            LowerInclusive => 1,    # OPTIONAL
            UpperInclusive => 1,    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        PlatformFilters => [
          {
            Comparison => 'EQUALS',     # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyString',

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        SecurityLevelFilters => [
          {
            Comparison => 'EQUALS',     # values: EQUALS
            Value      => 'LEVEL_1',    # values: LEVEL_1, LEVEL_2

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        TitleFilters => [
          {
            Comparison => 'EQUALS',     # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyString',

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      SortBy     => 'CHECK_ID',       # OPTIONAL
      SortOrder  => 'ASC',            # OPTIONAL
      );

    # Results:
    my $CheckAggregations =
      $ListCisScanResultsAggregatedByChecksResponse->CheckAggregations;
    my $NextToken = $ListCisScanResultsAggregatedByChecksResponse->NextToken;

# Returns a L<Paws::Inspector2::ListCisScanResultsAggregatedByChecksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/ListCisScanResultsAggregatedByChecks>

=head1 ATTRIBUTES


=head2 FilterCriteria => L<Paws::Inspector2::CisScanResultsAggregatedByChecksFilterCriteria>

The filter criteria.



=head2 MaxResults => Int

The maximum number of scan results aggregated by checks to be returned
in a single page of results.



=head2 NextToken => Str

The pagination token from a previous request that's used to retrieve
the next page of results.



=head2 B<REQUIRED> ScanArn => Str

The scan ARN.



=head2 SortBy => Str

The sort by order.

Valid values are: C<"CHECK_ID">, C<"TITLE">, C<"PLATFORM">, C<"FAILED_COUNTS">, C<"SECURITY_LEVEL">

=head2 SortOrder => Str

The sort order.

Valid values are: C<"ASC">, C<"DESC">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCisScanResultsAggregatedByChecks in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

