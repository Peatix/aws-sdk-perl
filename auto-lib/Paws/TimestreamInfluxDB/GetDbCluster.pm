
package Paws::TimestreamInfluxDB::GetDbCluster;
  use Moose;
  has DbClusterId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dbClusterId' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDbCluster');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamInfluxDB::GetDbClusterOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamInfluxDB::GetDbCluster - Arguments for method GetDbCluster on L<Paws::TimestreamInfluxDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDbCluster on the
L<Timestream InfluxDB|Paws::TimestreamInfluxDB> service. Use the attributes of this class
as arguments to method GetDbCluster.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDbCluster.

=head1 SYNOPSIS

    my $timestream-influxdb = Paws->service('TimestreamInfluxDB');
    my $GetDbClusterOutput = $timestream -influxdb->GetDbCluster(
      DbClusterId => 'MyDbClusterId',

    );

    # Results:
    my $AllocatedStorage = $GetDbClusterOutput->AllocatedStorage;
    my $Arn              = $GetDbClusterOutput->Arn;
    my $DbInstanceType   = $GetDbClusterOutput->DbInstanceType;
    my $DbParameterGroupIdentifier =
      $GetDbClusterOutput->DbParameterGroupIdentifier;
    my $DbStorageType  = $GetDbClusterOutput->DbStorageType;
    my $DeploymentType = $GetDbClusterOutput->DeploymentType;
    my $Endpoint       = $GetDbClusterOutput->Endpoint;
    my $FailoverMode   = $GetDbClusterOutput->FailoverMode;
    my $Id             = $GetDbClusterOutput->Id;
    my $InfluxAuthParametersSecretArn =
      $GetDbClusterOutput->InfluxAuthParametersSecretArn;
    my $LogDeliveryConfiguration =
      $GetDbClusterOutput->LogDeliveryConfiguration;
    my $Name                = $GetDbClusterOutput->Name;
    my $NetworkType         = $GetDbClusterOutput->NetworkType;
    my $Port                = $GetDbClusterOutput->Port;
    my $PubliclyAccessible  = $GetDbClusterOutput->PubliclyAccessible;
    my $ReaderEndpoint      = $GetDbClusterOutput->ReaderEndpoint;
    my $Status              = $GetDbClusterOutput->Status;
    my $VpcSecurityGroupIds = $GetDbClusterOutput->VpcSecurityGroupIds;
    my $VpcSubnetIds        = $GetDbClusterOutput->VpcSubnetIds;

    # Returns a L<Paws::TimestreamInfluxDB::GetDbClusterOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb/GetDbCluster>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DbClusterId => Str

Service-generated unique identifier of the DB cluster to retrieve.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDbCluster in L<Paws::TimestreamInfluxDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

