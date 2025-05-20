
package Paws::TimestreamInfluxDB::DeleteDbInstance;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identifier' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDbInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamInfluxDB::DeleteDbInstanceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamInfluxDB::DeleteDbInstance - Arguments for method DeleteDbInstance on L<Paws::TimestreamInfluxDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDbInstance on the
L<Timestream InfluxDB|Paws::TimestreamInfluxDB> service. Use the attributes of this class
as arguments to method DeleteDbInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDbInstance.

=head1 SYNOPSIS

    my $timestream-influxdb = Paws->service('TimestreamInfluxDB');
    my $DeleteDbInstanceOutput = $timestream -influxdb->DeleteDbInstance(
      Identifier => 'MyDbInstanceIdentifier',

    );

    # Results:
    my $AllocatedStorage = $DeleteDbInstanceOutput->AllocatedStorage;
    my $Arn              = $DeleteDbInstanceOutput->Arn;
    my $AvailabilityZone = $DeleteDbInstanceOutput->AvailabilityZone;
    my $DbClusterId      = $DeleteDbInstanceOutput->DbClusterId;
    my $DbInstanceType   = $DeleteDbInstanceOutput->DbInstanceType;
    my $DbParameterGroupIdentifier =
      $DeleteDbInstanceOutput->DbParameterGroupIdentifier;
    my $DbStorageType  = $DeleteDbInstanceOutput->DbStorageType;
    my $DeploymentType = $DeleteDbInstanceOutput->DeploymentType;
    my $Endpoint       = $DeleteDbInstanceOutput->Endpoint;
    my $Id             = $DeleteDbInstanceOutput->Id;
    my $InfluxAuthParametersSecretArn =
      $DeleteDbInstanceOutput->InfluxAuthParametersSecretArn;
    my $InstanceMode = $DeleteDbInstanceOutput->InstanceMode;
    my $LogDeliveryConfiguration =
      $DeleteDbInstanceOutput->LogDeliveryConfiguration;
    my $Name               = $DeleteDbInstanceOutput->Name;
    my $NetworkType        = $DeleteDbInstanceOutput->NetworkType;
    my $Port               = $DeleteDbInstanceOutput->Port;
    my $PubliclyAccessible = $DeleteDbInstanceOutput->PubliclyAccessible;
    my $SecondaryAvailabilityZone =
      $DeleteDbInstanceOutput->SecondaryAvailabilityZone;
    my $Status              = $DeleteDbInstanceOutput->Status;
    my $VpcSecurityGroupIds = $DeleteDbInstanceOutput->VpcSecurityGroupIds;
    my $VpcSubnetIds        = $DeleteDbInstanceOutput->VpcSubnetIds;

    # Returns a L<Paws::TimestreamInfluxDB::DeleteDbInstanceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb/DeleteDbInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The id of the DB instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDbInstance in L<Paws::TimestreamInfluxDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

