
package Paws::Bedrock::ListMarketplaceModelEndpoints;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has ModelSourceEquals => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'modelSourceIdentifier');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMarketplaceModelEndpoints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/marketplace-model/endpoints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Bedrock::ListMarketplaceModelEndpointsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::ListMarketplaceModelEndpoints - Arguments for method ListMarketplaceModelEndpoints on L<Paws::Bedrock>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMarketplaceModelEndpoints on the
L<Amazon Bedrock|Paws::Bedrock> service. Use the attributes of this class
as arguments to method ListMarketplaceModelEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMarketplaceModelEndpoints.

=head1 SYNOPSIS

    my $bedrock = Paws->service('Bedrock');
    my $ListMarketplaceModelEndpointsResponse =
      $bedrock->ListMarketplaceModelEndpoints(
      MaxResults        => 1,                            # OPTIONAL
      ModelSourceEquals => 'MyModelSourceIdentifier',    # OPTIONAL
      NextToken         => 'MyPaginationToken',          # OPTIONAL
      );

    # Results:
    my $MarketplaceModelEndpoints =
      $ListMarketplaceModelEndpointsResponse->MarketplaceModelEndpoints;
    my $NextToken = $ListMarketplaceModelEndpointsResponse->NextToken;

    # Returns a L<Paws::Bedrock::ListMarketplaceModelEndpointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/bedrock/ListMarketplaceModelEndpoints>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in a single call. If more
results are available, the operation returns a C<NextToken> value.



=head2 ModelSourceEquals => Str

If specified, only endpoints for the given model source identifier are
returned.



=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous C<ListMarketplaceModelEndpoints> call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMarketplaceModelEndpoints in L<Paws::Bedrock>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

