
package Paws::Kafka::DescribeReplicator;
  use Moose;
  has ReplicatorArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'replicatorArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeReplicator');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/replication/v1/replicators/{replicatorArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::DescribeReplicatorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DescribeReplicator - Arguments for method DescribeReplicator on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeReplicator on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method DescribeReplicator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeReplicator.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $DescribeReplicatorResponse = $kafka->DescribeReplicator(
      ReplicatorArn => 'My__string',

    );

    # Results:
    my $CreationTime   = $DescribeReplicatorResponse->CreationTime;
    my $CurrentVersion = $DescribeReplicatorResponse->CurrentVersion;
    my $IsReplicatorReference =
      $DescribeReplicatorResponse->IsReplicatorReference;
    my $KafkaClusters       = $DescribeReplicatorResponse->KafkaClusters;
    my $ReplicationInfoList = $DescribeReplicatorResponse->ReplicationInfoList;
    my $ReplicatorArn       = $DescribeReplicatorResponse->ReplicatorArn;
    my $ReplicatorDescription =
      $DescribeReplicatorResponse->ReplicatorDescription;
    my $ReplicatorName = $DescribeReplicatorResponse->ReplicatorName;
    my $ReplicatorResourceArn =
      $DescribeReplicatorResponse->ReplicatorResourceArn;
    my $ReplicatorState = $DescribeReplicatorResponse->ReplicatorState;
    my $ServiceExecutionRoleArn =
      $DescribeReplicatorResponse->ServiceExecutionRoleArn;
    my $StateInfo = $DescribeReplicatorResponse->StateInfo;
    my $Tags      = $DescribeReplicatorResponse->Tags;

    # Returns a L<Paws::Kafka::DescribeReplicatorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/DescribeReplicator>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ReplicatorArn => Str

The Amazon Resource Name (ARN) of the replicator to be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeReplicator in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

