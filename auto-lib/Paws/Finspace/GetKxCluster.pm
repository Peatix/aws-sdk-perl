
package Paws::Finspace::GetKxCluster;
  use Moose;
  has ClusterName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'clusterName', required => 1);
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetKxCluster');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/clusters/{clusterName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::GetKxClusterResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::GetKxCluster - Arguments for method GetKxCluster on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetKxCluster on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method GetKxCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetKxCluster.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $GetKxClusterResponse = $finspace->GetKxCluster(
      ClusterName   => 'MyKxClusterName',
      EnvironmentId => 'MyKxEnvironmentId',

    );

    # Results:
    my $AutoScalingConfiguration =
      $GetKxClusterResponse->AutoScalingConfiguration;
    my $AvailabilityZoneId = $GetKxClusterResponse->AvailabilityZoneId;
    my $AzMode             = $GetKxClusterResponse->AzMode;
    my $CacheStorageConfigurations =
      $GetKxClusterResponse->CacheStorageConfigurations;
    my $CapacityConfiguration = $GetKxClusterResponse->CapacityConfiguration;
    my $ClusterDescription    = $GetKxClusterResponse->ClusterDescription;
    my $ClusterName           = $GetKxClusterResponse->ClusterName;
    my $ClusterType           = $GetKxClusterResponse->ClusterType;
    my $Code                  = $GetKxClusterResponse->Code;
    my $CommandLineArguments  = $GetKxClusterResponse->CommandLineArguments;
    my $CreatedTimestamp      = $GetKxClusterResponse->CreatedTimestamp;
    my $Databases             = $GetKxClusterResponse->Databases;
    my $ExecutionRole         = $GetKxClusterResponse->ExecutionRole;
    my $InitializationScript  = $GetKxClusterResponse->InitializationScript;
    my $LastModifiedTimestamp = $GetKxClusterResponse->LastModifiedTimestamp;
    my $ReleaseLabel          = $GetKxClusterResponse->ReleaseLabel;
    my $SavedownStorageConfiguration =
      $GetKxClusterResponse->SavedownStorageConfiguration;
    my $ScalingGroupConfiguration =
      $GetKxClusterResponse->ScalingGroupConfiguration;
    my $Status       = $GetKxClusterResponse->Status;
    my $StatusReason = $GetKxClusterResponse->StatusReason;
    my $TickerplantLogConfiguration =
      $GetKxClusterResponse->TickerplantLogConfiguration;
    my $Volumes          = $GetKxClusterResponse->Volumes;
    my $VpcConfiguration = $GetKxClusterResponse->VpcConfiguration;

    # Returns a L<Paws::Finspace::GetKxClusterResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/GetKxCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClusterName => Str

The name of the cluster that you want to retrieve.



=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetKxCluster in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

