
package Paws::Kafka::ListClusterOperationsV2;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterArn', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListClusterOperationsV2');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v2/clusters/{clusterArn}/operations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::ListClusterOperationsV2Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::ListClusterOperationsV2 - Arguments for method ListClusterOperationsV2 on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListClusterOperationsV2 on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method ListClusterOperationsV2.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListClusterOperationsV2.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $ListClusterOperationsV2Response = $kafka->ListClusterOperationsV2(
      ClusterArn => 'My__string',
      MaxResults => 1,               # OPTIONAL
      NextToken  => 'My__string',    # OPTIONAL
    );

    # Results:
    my $ClusterOperationInfoList =
      $ListClusterOperationsV2Response->ClusterOperationInfoList;
    my $NextToken = $ListClusterOperationsV2Response->NextToken;

    # Returns a L<Paws::Kafka::ListClusterOperationsV2Response> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/ListClusterOperationsV2>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

The arn of the cluster whose operations are being requested.



=head2 MaxResults => Int

The maxResults of the query.



=head2 NextToken => Str

The nextToken of the query.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListClusterOperationsV2 in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

