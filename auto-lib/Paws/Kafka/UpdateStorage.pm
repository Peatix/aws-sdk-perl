
package Paws::Kafka::UpdateStorage;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterArn', required => 1);
  has CurrentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentVersion', required => 1);
  has ProvisionedThroughput => (is => 'ro', isa => 'Paws::Kafka::ProvisionedThroughput', traits => ['NameInRequest'], request_name => 'provisionedThroughput');
  has StorageMode => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storageMode');
  has VolumeSizeGB => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'volumeSizeGB');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateStorage');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/clusters/{clusterArn}/storage');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::UpdateStorageResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::UpdateStorage - Arguments for method UpdateStorage on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateStorage on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method UpdateStorage.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateStorage.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $UpdateStorageResponse = $kafka->UpdateStorage(
      ClusterArn            => 'My__string',
      CurrentVersion        => 'My__string',
      ProvisionedThroughput => {
        Enabled          => 1,    # OPTIONAL
        VolumeThroughput => 1,    # OPTIONAL
      },    # OPTIONAL
      StorageMode  => 'LOCAL',    # OPTIONAL
      VolumeSizeGB => 1,          # OPTIONAL
    );

    # Results:
    my $ClusterArn          = $UpdateStorageResponse->ClusterArn;
    my $ClusterOperationArn = $UpdateStorageResponse->ClusterOperationArn;

    # Returns a L<Paws::Kafka::UpdateStorageResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/UpdateStorage>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) of the cluster to be updated.



=head2 B<REQUIRED> CurrentVersion => Str

The version of cluster to update from. A successful operation will then
generate a new version.



=head2 ProvisionedThroughput => L<Paws::Kafka::ProvisionedThroughput>

EBS volume provisioned throughput information.



=head2 StorageMode => Str

Controls storage mode for supported storage tiers.

Valid values are: C<"LOCAL">, C<"TIERED">

=head2 VolumeSizeGB => Int

size of the EBS volume to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateStorage in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

