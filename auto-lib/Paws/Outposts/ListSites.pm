
package Paws::Outposts::ListSites;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');
  has OperatingAddressCityFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'OperatingAddressCityFilter');
  has OperatingAddressCountryCodeFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'OperatingAddressCountryCodeFilter');
  has OperatingAddressStateOrRegionFilter => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['ParamInQuery'], query_name => 'OperatingAddressStateOrRegionFilter');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSites');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/sites');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Outposts::ListSitesOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::ListSites - Arguments for method ListSites on L<Paws::Outposts>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSites on the
L<AWS Outposts|Paws::Outposts> service. Use the attributes of this class
as arguments to method ListSites.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSites.

=head1 SYNOPSIS

    my $outposts = Paws->service('Outposts');
    my $ListSitesOutput = $outposts->ListSites(
      MaxResults                 => 1,            # OPTIONAL
      NextToken                  => 'MyToken',    # OPTIONAL
      OperatingAddressCityFilter => [
        'MyCity', ...                             # min: 1, max: 50
      ],    # OPTIONAL
      OperatingAddressCountryCodeFilter => [
        'MyCountryCode', ...    # min: 2, max: 2
      ],    # OPTIONAL
      OperatingAddressStateOrRegionFilter => [
        'MyStateOrRegion', ...    # min: 1, max: 50
      ],    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListSitesOutput->NextToken;
    my $Sites     = $ListSitesOutput->Sites;

    # Returns a L<Paws::Outposts::ListSitesOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/outposts/ListSites>

=head1 ATTRIBUTES


=head2 MaxResults => Int





=head2 NextToken => Str





=head2 OperatingAddressCityFilter => ArrayRef[Str|Undef]

Filters the results by city.



=head2 OperatingAddressCountryCodeFilter => ArrayRef[Str|Undef]

Filters the results by country code.



=head2 OperatingAddressStateOrRegionFilter => ArrayRef[Str|Undef]

Filters the results by state or region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSites in L<Paws::Outposts>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

