
package Paws::ES::ListVpcEndpoints;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVpcEndpoints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2015-01-01/es/vpcEndpoints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ES::ListVpcEndpointsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ES::ListVpcEndpoints - Arguments for method ListVpcEndpoints on L<Paws::ES>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVpcEndpoints on the
L<Amazon Elasticsearch Service|Paws::ES> service. Use the attributes of this class
as arguments to method ListVpcEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVpcEndpoints.

=head1 SYNOPSIS

    my $es = Paws->service('ES');
    my $ListVpcEndpointsResponse = $es->ListVpcEndpoints(
      NextToken => 'MyNextToken',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListVpcEndpointsResponse->NextToken;
    my $VpcEndpointSummaryList =
      $ListVpcEndpointsResponse->VpcEndpointSummaryList;

    # Returns a L<Paws::ES::ListVpcEndpointsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 NextToken => Str

Identifier to allow retrieval of paginated results.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVpcEndpoints in L<Paws::ES>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

