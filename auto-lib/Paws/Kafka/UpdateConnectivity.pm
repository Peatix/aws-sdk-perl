
package Paws::Kafka::UpdateConnectivity;
  use Moose;
  has ClusterArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterArn', required => 1);
  has ConnectivityInfo => (is => 'ro', isa => 'Paws::Kafka::ConnectivityInfo', traits => ['NameInRequest'], request_name => 'connectivityInfo', required => 1);
  has CurrentVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'currentVersion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateConnectivity');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/clusters/{clusterArn}/connectivity');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Kafka::UpdateConnectivityResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Kafka::UpdateConnectivity - Arguments for method UpdateConnectivity on L<Paws::Kafka>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateConnectivity on the
L<Managed Streaming for Kafka|Paws::Kafka> service. Use the attributes of this class
as arguments to method UpdateConnectivity.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateConnectivity.

=head1 SYNOPSIS

    my $kafka = Paws->service('Kafka');
    my $UpdateConnectivityResponse = $kafka->UpdateConnectivity(
      ClusterArn       => 'My__string',
      ConnectivityInfo => {
        PublicAccess    => { Type => 'My__string', },    # OPTIONAL
        VpcConnectivity => {
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
              Enabled => 1,    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
        },    # OPTIONAL
      },
      CurrentVersion => 'My__string',

    );

    # Results:
    my $ClusterArn          = $UpdateConnectivityResponse->ClusterArn;
    my $ClusterOperationArn = $UpdateConnectivityResponse->ClusterOperationArn;

    # Returns a L<Paws::Kafka::UpdateConnectivityResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/kafka/UpdateConnectivity>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) of the configuration.



=head2 B<REQUIRED> ConnectivityInfo => L<Paws::Kafka::ConnectivityInfo>

Information about the broker access configuration.



=head2 B<REQUIRED> CurrentVersion => Str

The version of the MSK cluster to update. Cluster versions aren't
simple numbers. You can describe an MSK cluster to find its version.
When this update operation is successful, it generates a new cluster
version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateConnectivity in L<Paws::Kafka>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

