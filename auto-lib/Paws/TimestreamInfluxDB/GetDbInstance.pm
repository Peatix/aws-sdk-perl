
package Paws::TimestreamInfluxDB::GetDbInstance;
  use Moose;
  has Identifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'identifier' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDbInstance');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::TimestreamInfluxDB::GetDbInstanceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::TimestreamInfluxDB::GetDbInstance - Arguments for method GetDbInstance on L<Paws::TimestreamInfluxDB>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDbInstance on the
L<Timestream InfluxDB|Paws::TimestreamInfluxDB> service. Use the attributes of this class
as arguments to method GetDbInstance.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDbInstance.

=head1 SYNOPSIS

    my $timestream-influxdb = Paws->service('TimestreamInfluxDB');
    my $GetDbInstanceOutput = $timestream -influxdb->GetDbInstance(
      Identifier => 'MyDbInstanceIdentifier',

    );

    # Results:
    my $AllocatedStorage = $GetDbInstanceOutput->AllocatedStorage;
    my $Arn              = $GetDbInstanceOutput->Arn;
    my $AvailabilityZone = $GetDbInstanceOutput->AvailabilityZone;
    my $DbClusterId      = $GetDbInstanceOutput->DbClusterId;
    my $DbInstanceType   = $GetDbInstanceOutput->DbInstanceType;
    my $DbParameterGroupIdentifier =
      $GetDbInstanceOutput->DbParameterGroupIdentifier;
    my $DbStorageType  = $GetDbInstanceOutput->DbStorageType;
    my $DeploymentType = $GetDbInstanceOutput->DeploymentType;
    my $Endpoint       = $GetDbInstanceOutput->Endpoint;
    my $Id             = $GetDbInstanceOutput->Id;
    my $InfluxAuthParametersSecretArn =
      $GetDbInstanceOutput->InfluxAuthParametersSecretArn;
    my $InstanceMode = $GetDbInstanceOutput->InstanceMode;
    my $LogDeliveryConfiguration =
      $GetDbInstanceOutput->LogDeliveryConfiguration;
    my $Name               = $GetDbInstanceOutput->Name;
    my $NetworkType        = $GetDbInstanceOutput->NetworkType;
    my $Port               = $GetDbInstanceOutput->Port;
    my $PubliclyAccessible = $GetDbInstanceOutput->PubliclyAccessible;
    my $SecondaryAvailabilityZone =
      $GetDbInstanceOutput->SecondaryAvailabilityZone;
    my $Status              = $GetDbInstanceOutput->Status;
    my $VpcSecurityGroupIds = $GetDbInstanceOutput->VpcSecurityGroupIds;
    my $VpcSubnetIds        = $GetDbInstanceOutput->VpcSubnetIds;

    # Returns a L<Paws::TimestreamInfluxDB::GetDbInstanceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/timestream-influxdb/GetDbInstance>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Identifier => Str

The id of the DB instance.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDbInstance in L<Paws::TimestreamInfluxDB>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

