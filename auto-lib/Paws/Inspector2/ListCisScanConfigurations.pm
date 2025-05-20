
package Paws::Inspector2::ListCisScanConfigurations;
  use Moose;
  has FilterCriteria => (is => 'ro', isa => 'Paws::Inspector2::ListCisScanConfigurationsFilterCriteria', traits => ['NameInRequest'], request_name => 'filterCriteria');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has SortBy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortBy');
  has SortOrder => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sortOrder');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCisScanConfigurations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cis/scan-configuration/list');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Inspector2::ListCisScanConfigurationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::ListCisScanConfigurations - Arguments for method ListCisScanConfigurations on L<Paws::Inspector2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCisScanConfigurations on the
L<Inspector2|Paws::Inspector2> service. Use the attributes of this class
as arguments to method ListCisScanConfigurations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCisScanConfigurations.

=head1 SYNOPSIS

    my $inspector2 = Paws->service('Inspector2');
    my $ListCisScanConfigurationsResponse =
      $inspector2->ListCisScanConfigurations(
      FilterCriteria => {
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
      SortBy     => 'SCAN_NAME',      # OPTIONAL
      SortOrder  => 'ASC',            # OPTIONAL
      );

    # Results:
    my $NextToken = $ListCisScanConfigurationsResponse->NextToken;
    my $ScanConfigurations =
      $ListCisScanConfigurationsResponse->ScanConfigurations;

    # Returns a L<Paws::Inspector2::ListCisScanConfigurationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/inspector2/ListCisScanConfigurations>

=head1 ATTRIBUTES


=head2 FilterCriteria => L<Paws::Inspector2::ListCisScanConfigurationsFilterCriteria>

The CIS scan configuration filter criteria.



=head2 MaxResults => Int

The maximum number of CIS scan configurations to be returned in a
single page of results.



=head2 NextToken => Str

The pagination token from a previous request that's used to retrieve
the next page of results.



=head2 SortBy => Str

The CIS scan configuration sort by order.

Valid values are: C<"SCAN_NAME">, C<"SCAN_CONFIGURATION_ARN">

=head2 SortOrder => Str

The CIS scan configuration sort order order.

Valid values are: C<"ASC">, C<"DESC">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCisScanConfigurations in L<Paws::Inspector2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

