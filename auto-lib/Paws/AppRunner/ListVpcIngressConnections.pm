
package Paws::AppRunner::ListVpcIngressConnections;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::AppRunner::ListVpcIngressConnectionsFilter');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVpcIngressConnections');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::AppRunner::ListVpcIngressConnectionsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppRunner::ListVpcIngressConnections - Arguments for method ListVpcIngressConnections on L<Paws::AppRunner>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVpcIngressConnections on the
L<AWS App Runner|Paws::AppRunner> service. Use the attributes of this class
as arguments to method ListVpcIngressConnections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVpcIngressConnections.

=head1 SYNOPSIS

    my $apprunner = Paws->service('AppRunner');
    my $ListVpcIngressConnectionsResponse =
      $apprunner->ListVpcIngressConnections(
      Filter => {
        ServiceArn    => 'MyAppRunnerResourceArn', # min: 1, max: 1011; OPTIONAL
        VpcEndpointId => 'MyString',               # max: 51200; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                # OPTIONAL
      NextToken  => 'MyNextToken',    # OPTIONAL
      );

    # Results:
    my $NextToken = $ListVpcIngressConnectionsResponse->NextToken;
    my $VpcIngressConnectionSummaryList =
      $ListVpcIngressConnectionsResponse->VpcIngressConnectionSummaryList;

    # Returns a L<Paws::AppRunner::ListVpcIngressConnectionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/apprunner/ListVpcIngressConnections>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::AppRunner::ListVpcIngressConnectionsFilter>

The VPC Ingress Connections to be listed based on either the Service
Arn or Vpc Endpoint Id, or both.



=head2 MaxResults => Int

The maximum number of results to include in each response (result
page). It's used for a paginated request.

If you don't specify C<MaxResults>, the request retrieves all available
results in a single response.



=head2 NextToken => Str

A token from a previous result page. It's used for a paginated request.
The request retrieves the next result page. All other parameter values
must be identical to the ones that are specified in the initial
request.

If you don't specify C<NextToken>, the request retrieves the first
result page.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVpcIngressConnections in L<Paws::AppRunner>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

