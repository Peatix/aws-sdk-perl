
package Paws::Kafka::DescribeClusterOperationV2;
  use Moose;
  has ClusterOperationArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterOperationArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeClusterOperationV2');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/api/v2/operations/{clusterOperationArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::DescribeClusterOperationV2Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DescribeClusterOperationV2 - Arguments for method DescribeClusterOperationV2 on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeClusterOperationV2 on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method DescribeClusterOperationV2.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeClusterOperationV2.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $DescribeClusterOperationV2Response = $kafka->DescribeClusterOperationV2(
      ClusterOperationArn => 'My__string',

    );

    # Results:
    my $ClusterOperationInfo =
      $DescribeClusterOperationV2Response->ClusterOperationInfo;

    # Returns a L<Paws::Kafka::DescribeClusterOperationV2Response> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/DescribeClusterOperationV2>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterOperationArn => Str

ARN of the cluster operation to describe.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeClusterOperationV2 in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

