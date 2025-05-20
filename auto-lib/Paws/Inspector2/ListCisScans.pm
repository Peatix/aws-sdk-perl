
package Paws::Inspector2::ListCisScans;
  use Moose;
  has DetailLevel => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'detailLevel');
  has FilterCriteria => (is => 'ro', isa => 'Paws::Inspector2::ListCisScansFilterCriteria', traits => ['NameInRequest'], request_name => 'filterCriteria');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortBy');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortOrder');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCisScans');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cis/scan/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::ListCisScansResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ListCisScans - Arguments for method ListCisScans on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCisScans on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method ListCisScans.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCisScans.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $ListCisScansResponse = $inspector2->ListCisScans(
      DetailLevel    => 'ORGANIZATION',    # OPTIONAL
      FilterCriteria => {
        FailedChecksFilters => [
          {
            LowerInclusive => 1,    # OPTIONAL
            UpperInclusive => 1,    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ScanArnFilters => [
          {
            Comparison => 'EQUALS',     # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyString',

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ScanAtFilters => [
          {
            EarliestScanStartTime => '1970-01-01T01:00:00',    # OPTIONAL
            LatestScanStartTime   => '1970-01-01T01:00:00',    # OPTIONAL
          },
          ...
        ],    # min: 1, max: 1; OPTIONAL
        ScanConfigurationArnFilters => [
          {
            Comparison => 'EQUALS',     # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyString',

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ScanNameFilters => [
          {
            Comparison => 'EQUALS',     # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyString',

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ScanStatusFilters => [
          {
            Comparison => 'EQUALS',    # values: EQUALS
            Value      =>
              'FAILED',    # values: FAILED, COMPLETED, CANCELLED, IN_PROGRESS

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        ScheduledByFilters => [
          {
            Comparison => 'EQUALS',     # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyString',

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        TargetAccountIdFilters => [
          {
            Comparison => 'EQUALS',     # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyString',

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        TargetResourceIdFilters => [
          {
            Comparison => 'EQUALS',     # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyString',

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        TargetResourceTagFilters => [
          {
            Comparison => 'EQUALS',              # values: EQUALS
            Key        => 'MyNonEmptyString',    # min: 1
            Value      => 'MyNonEmptyString',    # min: 1

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      SortBy     => 'STATUS',         # OPTIONAL
      SortOrder  => 'ASC',            # OPTIONAL
    );

    # Results:
    my $NextToken = $ListCisScansResponse->NextToken;
    my $Scans     = $ListCisScansResponse->Scans;

    # Returns a L<Paws::Inspector2::ListCisScansResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/ListCisScans>

=head1 ATTRIBUTES


=head2 DetailLevel => Str

The detail applied to the CIS scan.

Valid values are: C<"ORGANIZATION">, C<"MEMBER">

=head2 FilterCriteria => L<Paws::Inspector2::ListCisScansFilterCriteria>

The CIS scan filter criteria.



=head2 MaxResults => Int

The maximum number of results to be returned.



=head2 NextToken => Str

The pagination token from a previous request that's used to retrieve
the next page of results.



=head2 SortBy => Str

The CIS scans sort by order.

Valid values are: C<"STATUS">, C<"SCHEDULED_BY">, C<"SCAN_START_DATE">, C<"FAILED_CHECKS">

=head2 SortOrder => Str

The CIS scans sort order.

Valid values are: C<"ASC">, C<"DESC">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCisScans in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

