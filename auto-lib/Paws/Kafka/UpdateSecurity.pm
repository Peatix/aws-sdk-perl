
package Paws::Kafka::UpdateSecurity;
  use Moose;
  has ClientAuthentication => (is => 'ro', isa => 'Paws::Kafka::ClientAuthentication', traits => ['NameInRequest'], request_name => 'clientAuthentication');
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterArn', required => 1);
  has CurrentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentVersion', required => 1);
  has EncryptionInfo => (is => 'ro', isa => 'Paws::Kafka::EncryptionInfo', traits => ['NameInRequest'], request_name => 'encryptionInfo');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSecurity');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/clusters/{clusterArn}/security');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::UpdateSecurityResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::UpdateSecurity - Arguments for method UpdateSecurity on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSecurity on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method UpdateSecurity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSecurity.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $UpdateSecurityResponse = $kafka->UpdateSecurity(
      ClusterArn           => 'My__string',
      CurrentVersion       => 'My__string',
      ClientAuthentication => {
        Sasl => {
          Iam => {
            Enabled => 1,    # OPTIONAL
          },    # OPTIONAL
          Scram => {
            Enabled => 1,    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
        Tls => {
          CertificateAuthorityArnList => [ 'My__string', ... ],    # OPTIONAL
          Enabled                     => 1,                        # OPTIONAL
        },    # OPTIONAL
        Unauthenticated => {
          Enabled => 1,    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
      EncryptionInfo => {
        EncryptionAtRest => {
          DataVolumeKMSKeyId => 'My__string',

        },    # OPTIONAL
        EncryptionInTransit => {
          ClientBroker =>
            'TLS',    # values: TLS, TLS_PLAINTEXT, PLAINTEXT; OPTIONAL
          InCluster => 1,    # OPTIONAL
        },    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ClusterArn          = $UpdateSecurityResponse->ClusterArn;
    my $ClusterOperationArn = $UpdateSecurityResponse->ClusterOperationArn;

    # Returns a L<Paws::Kafka::UpdateSecurityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/UpdateSecurity>

=head1 ATTRIBUTES


=head2 ClientAuthentication => L<Paws::Kafka::ClientAuthentication>

Includes all client authentication related information.



=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) that uniquely identifies the cluster.



=head2 B<REQUIRED> CurrentVersion => Str

The version of the MSK cluster to update. Cluster versions aren't
simple numbers. You can describe an MSK cluster to find its version.
When this update operation is successful, it generates a new cluster
version.



=head2 EncryptionInfo => L<Paws::Kafka::EncryptionInfo>

Includes all encryption-related information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSecurity in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

