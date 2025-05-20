
package Paws::Kafka::DeleteReplicator;
  use Moose;
  has CurrentVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'currentVersion');
  has ReplicatorArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'replicatorArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteReplicator');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/replication/v1/replicators/{replicatorArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::DeleteReplicatorResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::DeleteReplicator - Arguments for method DeleteReplicator on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteReplicator on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method DeleteReplicator.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteReplicator.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $DeleteReplicatorResponse = $kafka->DeleteReplicator(
      ReplicatorArn  => 'My__string',
      CurrentVersion => 'My__string',    # OPTIONAL
    );

    # Results:
    my $ReplicatorArn   = $DeleteReplicatorResponse->ReplicatorArn;
    my $ReplicatorState = $DeleteReplicatorResponse->ReplicatorState;

    # Returns a L<Paws::Kafka::DeleteReplicatorResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/DeleteReplicator>

=head1 ATTRIBUTES


=head2 CurrentVersion => Str

The current version of the replicator.



=head2 B<REQUIRED> ReplicatorArn => Str

The Amazon Resource Name (ARN) of the replicator to be deleted.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteReplicator in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

