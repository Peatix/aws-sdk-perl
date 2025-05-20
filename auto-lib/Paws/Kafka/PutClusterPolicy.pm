
package Paws::Kafka::PutClusterPolicy;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterArn', required => 1);
  has CurrentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentVersion');
  has Policy => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policy', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutClusterPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/clusters/{clusterArn}/policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::PutClusterPolicyResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::PutClusterPolicy - Arguments for method PutClusterPolicy on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutClusterPolicy on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method PutClusterPolicy.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutClusterPolicy.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $PutClusterPolicyResponse = $kafka->PutClusterPolicy(
      ClusterArn     => 'My__string',
      Policy         => 'My__string',
      CurrentVersion => 'My__string',    # OPTIONAL
    );

    # Results:
    my $CurrentVersion = $PutClusterPolicyResponse->CurrentVersion;

    # Returns a L<Paws::Kafka::PutClusterPolicyResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/PutClusterPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) of the cluster.



=head2 CurrentVersion => Str

The policy version.



=head2 B<REQUIRED> Policy => Str

The policy.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutClusterPolicy in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

