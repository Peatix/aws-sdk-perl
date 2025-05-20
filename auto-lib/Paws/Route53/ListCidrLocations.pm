
package Paws::Route53::ListCidrLocations;
  use Moose;
  has CollectionId => (is => 'ro', isa => 'Str', uri_name => 'CidrCollectionId', traits => ['ParamInURI'], required => 1);
  has MaxResults => (is => 'ro', isa => 'Str', query_name => 'maxresults', traits => ['ParamInQuery']);
  has NextToken => (is => 'ro', isa => 'Str', query_name => 'nexttoken', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCidrLocations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/cidrcollection/{CidrCollectionId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListCidrLocationsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListCidrLocations - Arguments for method ListCidrLocations on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCidrLocations on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method ListCidrLocations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCidrLocations.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $ListCidrLocationsResponse = $route53->ListCidrLocations(
      CollectionId => 'MyUUID',
      MaxResults   => 'MyMaxResults',         # OPTIONAL
      NextToken    => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $CidrLocations = $ListCidrLocationsResponse->CidrLocations;
    my $NextToken     = $ListCidrLocationsResponse->NextToken;

    # Returns a L<Paws::Route53::ListCidrLocationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/ListCidrLocations>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionId => Str

The CIDR collection ID.



=head2 MaxResults => Str

The maximum number of CIDR collection locations to return in the
response.



=head2 NextToken => Str

An opaque pagination token to indicate where the service is to begin
enumerating results.

If no value is provided, the listing of results starts from the
beginning.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCidrLocations in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

