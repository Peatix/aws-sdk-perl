
package Paws::OpenSearch::ListVpcEndpointsForDomain;
  use Moose;
  has DomainName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'DomainName', required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVpcEndpointsForDomain');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/domain/{DomainName}/vpcEndpoints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::ListVpcEndpointsForDomainResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::ListVpcEndpointsForDomain - Arguments for method ListVpcEndpointsForDomain on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVpcEndpointsForDomain on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method ListVpcEndpointsForDomain.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVpcEndpointsForDomain.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $ListVpcEndpointsForDomainResponse = $es->ListVpcEndpointsForDomain(
      DomainName => 'MyDomainName',
      NextToken  => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListVpcEndpointsForDomainResponse->NextToken;
    my $VpcEndpointSummaryList =
      $ListVpcEndpointsForDomainResponse->VpcEndpointSummaryList;

    # Returns a L<Paws::OpenSearch::ListVpcEndpointsForDomainResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainName => Str

The name of the domain to list associated VPC endpoints for.



=head2 NextToken => Str

If your initial C<ListEndpointsForDomain> operation returns a
C<nextToken>, you can include the returned C<nextToken> in subsequent
C<ListEndpointsForDomain> operations, which returns results in the next
page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVpcEndpointsForDomain in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

