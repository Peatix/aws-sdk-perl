
package Paws::OpenSearch::ListVpcEndpoints;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVpcEndpoints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2021-01-01/opensearch/vpcEndpoints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearch::ListVpcEndpointsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearch::ListVpcEndpoints - Arguments for method ListVpcEndpoints on L<Paws::OpenSearch>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVpcEndpoints on the
L<Amazon OpenSearch Service|Paws::OpenSearch> service. Use the attributes of this class
as arguments to method ListVpcEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVpcEndpoints.

=head1 SYNOPSIS

    my $es = Paws->service('OpenSearch');
    my $ListVpcEndpointsResponse = $es->ListVpcEndpoints(
      NextToken => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListVpcEndpointsResponse->NextToken;
    my $VpcEndpointSummaryList =
      $ListVpcEndpointsResponse->VpcEndpointSummaryList;

    # Returns a L<Paws::OpenSearch::ListVpcEndpointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 NextToken => Str

If your initial C<ListVpcEndpoints> operation returns a C<nextToken>,
you can include the returned C<nextToken> in subsequent
C<ListVpcEndpoints> operations, which returns results in the next page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVpcEndpoints in L<Paws::OpenSearch>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

