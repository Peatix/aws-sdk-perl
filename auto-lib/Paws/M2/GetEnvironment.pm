
package Paws::M2::GetEnvironment;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/environments/{environmentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::GetEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::GetEnvironment - Arguments for method GetEnvironment on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetEnvironment on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method GetEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetEnvironment.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $GetEnvironmentResponse = $m2->GetEnvironment(
      EnvironmentId => 'MyIdentifier',

    );

    # Results:
    my $ActualCapacity = $GetEnvironmentResponse->ActualCapacity;
    my $CreationTime   = $GetEnvironmentResponse->CreationTime;
    my $Description    = $GetEnvironmentResponse->Description;
    my $EngineType     = $GetEnvironmentResponse->EngineType;
    my $EngineVersion  = $GetEnvironmentResponse->EngineVersion;
    my $EnvironmentArn = $GetEnvironmentResponse->EnvironmentArn;
    my $EnvironmentId  = $GetEnvironmentResponse->EnvironmentId;
    my $HighAvailabilityConfig =
      $GetEnvironmentResponse->HighAvailabilityConfig;
    my $InstanceType       = $GetEnvironmentResponse->InstanceType;
    my $KmsKeyId           = $GetEnvironmentResponse->KmsKeyId;
    my $LoadBalancerArn    = $GetEnvironmentResponse->LoadBalancerArn;
    my $Name               = $GetEnvironmentResponse->Name;
    my $NetworkType        = $GetEnvironmentResponse->NetworkType;
    my $PendingMaintenance = $GetEnvironmentResponse->PendingMaintenance;
    my $PreferredMaintenanceWindow =
      $GetEnvironmentResponse->PreferredMaintenanceWindow;
    my $PubliclyAccessible    = $GetEnvironmentResponse->PubliclyAccessible;
    my $SecurityGroupIds      = $GetEnvironmentResponse->SecurityGroupIds;
    my $Status                = $GetEnvironmentResponse->Status;
    my $StatusReason          = $GetEnvironmentResponse->StatusReason;
    my $StorageConfigurations = $GetEnvironmentResponse->StorageConfigurations;
    my $SubnetIds             = $GetEnvironmentResponse->SubnetIds;
    my $Tags                  = $GetEnvironmentResponse->Tags;
    my $VpcId                 = $GetEnvironmentResponse->VpcId;

    # Returns a L<Paws::M2::GetEnvironmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/GetEnvironment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentId => Str

The unique identifier of the runtime environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetEnvironment in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

