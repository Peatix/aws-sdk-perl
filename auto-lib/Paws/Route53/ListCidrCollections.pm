
package Paws::Route53::ListCidrCollections;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Str', query_name => 'maxresults', traits => ['ParamInQuery']);
  has NextToken => (is => 'ro', isa => 'Str', query_name => 'nexttoken', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCidrCollections');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/cidrcollection');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListCidrCollectionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListCidrCollections - Arguments for method ListCidrCollections on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCidrCollections on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method ListCidrCollections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCidrCollections.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $ListCidrCollectionsResponse = $route53->ListCidrCollections(
      MaxResults => 'MyMaxResults',         # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $CidrCollections = $ListCidrCollectionsResponse->CidrCollections;
    my $NextToken       = $ListCidrCollectionsResponse->NextToken;

    # Returns a L<Paws::Route53::ListCidrCollectionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/ListCidrCollections>

=head1 ATTRIBUTES


=head2 MaxResults => Str

The maximum number of CIDR collections to return in the response.



=head2 NextToken => Str

An opaque pagination token to indicate where the service is to begin
enumerating results.

If no value is provided, the listing of results starts from the
beginning.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCidrCollections in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

