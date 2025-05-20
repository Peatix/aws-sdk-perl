
package Paws::Inspector2::GetCisScanResultDetails;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accountId', required => 1);
  has FilterCriteria => (is => 'ro', isa => 'Paws::Inspector2::CisScanResultDetailsFilterCriteria', traits => ['NameInRequest'], request_name => 'filterCriteria');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ScanArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'scanArn', required => 1);
  has SortBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortBy');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortOrder');
  has TargetResourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'targetResourceId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetCisScanResultDetails');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cis/scan-result/details/get');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::GetCisScanResultDetailsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::GetCisScanResultDetails - Arguments for method GetCisScanResultDetails on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetCisScanResultDetails on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method GetCisScanResultDetails.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetCisScanResultDetails.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $GetCisScanResultDetailsResponse = $inspector2->GetCisScanResultDetails(
      AccountId        => 'MyAccountId',
      ScanArn          => 'MyCisScanArn',
      TargetResourceId => 'MyResourceId',
      FilterCriteria   => {
        CheckIdFilters => [
          {
            Comparison => 'EQUALS',     # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyString',

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        FindingArnFilters => [
          {
            Comparison => 'EQUALS',     # values: EQUALS, PREFIX, NOT_EQUALS
            Value      => 'MyString',

          },
          ...
        ],    # min: 1, max: 10; OPTIONAL
        FindingStatusFilters => [
          {
            Comparison => 'EQUALS',    # values: EQUALS
            Value      => 'PASSED',    # values: PASSED, FAILED, SKIPPED

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
    my $NextToken         = $GetCisScanResultDetailsResponse->NextToken;
    my $ScanResultDetails = $GetCisScanResultDetailsResponse->ScanResultDetails;

    # Returns a L<Paws::Inspector2::GetCisScanResultDetailsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/GetCisScanResultDetails>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

The account ID.



=head2 FilterCriteria => L<Paws::Inspector2::CisScanResultDetailsFilterCriteria>

The filter criteria.



=head2 MaxResults => Int

The maximum number of CIS scan result details to be returned in a
single page of results.



=head2 NextToken => Str

The pagination token from a previous request that's used to retrieve
the next page of results.



=head2 B<REQUIRED> ScanArn => Str

The scan ARN.



=head2 SortBy => Str

The sort by order.

Valid values are: C<"CHECK_ID">, C<"STATUS">

=head2 SortOrder => Str

The sort order.

Valid values are: C<"ASC">, C<"DESC">

=head2 B<REQUIRED> TargetResourceId => Str

The target resource ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetCisScanResultDetails in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

