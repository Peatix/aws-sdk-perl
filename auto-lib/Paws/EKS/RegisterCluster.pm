
package Paws::EKS::RegisterCluster;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientRequestToken');
  has ConnectorConfig => (is => 'ro', isa => 'Paws::EKS::ConnectorConfigRequest', traits => ['NameInRequest'], request_name => 'connectorConfig', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::EKS::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterCluster');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/cluster-registrations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EKS::RegisterClusterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EKS::RegisterCluster - Arguments for method RegisterCluster on L<Paws::EKS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterCluster on the
L<Amazon Elastic Kubernetes Service|Paws::EKS> service. Use the attributes of this class
as arguments to method RegisterCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterCluster.

=head1 SYNOPSIS

    my $eks = Paws->service('EKS');
    my $RegisterClusterResponse = $eks->RegisterCluster(
      ConnectorConfig => {
        Provider => 'EKS_ANYWHERE'
        , # values: EKS_ANYWHERE, ANTHOS, GKE, AKS, OPENSHIFT, TANZU, RANCHER, EC2, OTHER
        RoleArn => 'MyString',

      },
      Name               => 'MyClusterName',
      ClientRequestToken => 'MyString',        # OPTIONAL
      Tags               => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Cluster = $RegisterClusterResponse->Cluster;

    # Returns a L<Paws::EKS::RegisterClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/eks/RegisterCluster>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request.



=head2 B<REQUIRED> ConnectorConfig => L<Paws::EKS::ConnectorConfigRequest>

The configuration settings required to connect the Kubernetes cluster
to the Amazon EKS control plane.



=head2 B<REQUIRED> Name => Str

A unique name for this cluster in your Amazon Web Services Region.



=head2 Tags => L<Paws::EKS::TagMap>

Metadata that assists with categorization and organization. Each tag
consists of a key and an optional value. You define both. Tags don't
propagate to any other cluster or Amazon Web Services resources.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterCluster in L<Paws::EKS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

