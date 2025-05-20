
package Paws::Kafka::ListVpcConnections;
  use Moose;
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListVpcConnections');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/vpc-connections');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::ListVpcConnectionsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListVpcConnections - Arguments for method ListVpcConnections on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListVpcConnections on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method ListVpcConnections.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListVpcConnections.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $ListVpcConnectionsResponse = $kafka->ListVpcConnections(
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $NextToken      = $ListVpcConnectionsResponse->NextToken;
    my $VpcConnections = $ListVpcConnectionsResponse->VpcConnections;

    # Returns a L<Paws::Kafka::ListVpcConnectionsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/ListVpcConnections>

=head1 ATTRIBUTES


=head2 MaxResults => Int

The maximum number of results to return in the response. If there are
more results, the response includes a NextToken parameter.



=head2 NextToken => Str

The paginated results marker. When the result of the operation is
truncated, the call returns NextToken in the response. To get the next
batch, provide this token in your next request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListVpcConnections in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

