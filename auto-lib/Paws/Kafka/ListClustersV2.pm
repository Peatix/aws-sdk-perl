
package Paws::Kafka::ListClustersV2;
  use Moose;
  has ClusterNameFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clusterNameFilter');
  has ClusterTypeFilter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clusterTypeFilter');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListClustersV2');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v2/clusters');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::ListClustersV2Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListClustersV2 - Arguments for method ListClustersV2 on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListClustersV2 on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method ListClustersV2.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListClustersV2.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $ListClustersV2Response = $kafka->ListClustersV2(
      ClusterNameFilter => 'My__string',    # OPTIONAL
      ClusterTypeFilter => 'My__string',    # OPTIONAL
      MaxResults        => 1,               # OPTIONAL
      NextToken         => 'My__string',    # OPTIONAL
    );

    # Results:
    my $ClusterInfoList = $ListClustersV2Response->ClusterInfoList;
    my $NextToken       = $ListClustersV2Response->NextToken;

    # Returns a L<Paws::Kafka::ListClustersV2Response> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/ListClustersV2>

=head1 ATTRIBUTES


=head2 ClusterNameFilter => Str

Specify a prefix of the names of the clusters that you want to list.
The service lists all the clusters whose names start with this prefix.



=head2 ClusterTypeFilter => Str

Specify either PROVISIONED or SERVERLESS.



=head2 MaxResults => Int

The maximum number of results to return in the response. If there are
more results, the response includes a NextToken parameter.



=head2 NextToken => Str

The paginated results marker. When the result of the operation is
truncated, the call returns NextToken in the response. To get the next
batch, provide this token in your next request.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListClustersV2 in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

