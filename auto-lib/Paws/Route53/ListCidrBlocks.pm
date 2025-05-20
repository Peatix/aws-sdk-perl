
package Paws::Route53::ListCidrBlocks;
  use Moose;
  has CollectionId => (is => 'ro', isa => 'Str', uri_name => 'CidrCollectionId', traits => ['ParamInURI'], required => 1);
  has LocationName => (is => 'ro', isa => 'Str', query_name => 'location', traits => ['ParamInQuery']);
  has MaxResults => (is => 'ro', isa => 'Str', query_name => 'maxresults', traits => ['ParamInQuery']);
  has NextToken => (is => 'ro', isa => 'Str', query_name => 'nexttoken', traits => ['ParamInQuery']);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListCidrBlocks');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2013-04-01/cidrcollection/{CidrCollectionId}/cidrblocks');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53::ListCidrBlocksResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53::ListCidrBlocks - Arguments for method ListCidrBlocks on L<Paws::Route53>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListCidrBlocks on the
L<Amazon Route 53|Paws::Route53> service. Use the attributes of this class
as arguments to method ListCidrBlocks.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListCidrBlocks.

=head1 SYNOPSIS

    my $route53 = Paws->service('Route53');
    my $ListCidrBlocksResponse = $route53->ListCidrBlocks(
      CollectionId => 'MyUUID',
      LocationName => 'MyCidrLocationNameDefaultNotAllowed',    # OPTIONAL
      MaxResults   => 'MyMaxResults',                           # OPTIONAL
      NextToken    => 'MyPaginationToken',                      # OPTIONAL
    );

    # Results:
    my $CidrBlocks = $ListCidrBlocksResponse->CidrBlocks;
    my $NextToken  = $ListCidrBlocksResponse->NextToken;

    # Returns a L<Paws::Route53::ListCidrBlocksResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53/ListCidrBlocks>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CollectionId => Str

The UUID of the CIDR collection.



=head2 LocationName => Str

The name of the CIDR collection location.



=head2 MaxResults => Str

Maximum number of results you want returned.



=head2 NextToken => Str

An opaque pagination token to indicate where the service is to begin
enumerating results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListCidrBlocks in L<Paws::Route53>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

