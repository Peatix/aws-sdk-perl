
package Paws::M2::GetApplication;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetApplication');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::M2::GetApplicationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::GetApplication - Arguments for method GetApplication on L<Paws::M2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetApplication on the
L<AWSMainframeModernization|Paws::M2> service. Use the attributes of this class
as arguments to method GetApplication.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetApplication.

=head1 SYNOPSIS

    my $m2 = Paws->service('M2');
    my $GetApplicationResponse = $m2->GetApplication(
      ApplicationId => 'MyIdentifier',

    );

    # Results:
    my $ApplicationArn      = $GetApplicationResponse->ApplicationArn;
    my $ApplicationId       = $GetApplicationResponse->ApplicationId;
    my $CreationTime        = $GetApplicationResponse->CreationTime;
    my $DeployedVersion     = $GetApplicationResponse->DeployedVersion;
    my $Description         = $GetApplicationResponse->Description;
    my $EngineType          = $GetApplicationResponse->EngineType;
    my $EnvironmentId       = $GetApplicationResponse->EnvironmentId;
    my $KmsKeyId            = $GetApplicationResponse->KmsKeyId;
    my $LastStartTime       = $GetApplicationResponse->LastStartTime;
    my $LatestVersion       = $GetApplicationResponse->LatestVersion;
    my $ListenerArns        = $GetApplicationResponse->ListenerArns;
    my $ListenerPorts       = $GetApplicationResponse->ListenerPorts;
    my $LoadBalancerDnsName = $GetApplicationResponse->LoadBalancerDnsName;
    my $LogGroups           = $GetApplicationResponse->LogGroups;
    my $Name                = $GetApplicationResponse->Name;
    my $RoleArn             = $GetApplicationResponse->RoleArn;
    my $Status              = $GetApplicationResponse->Status;
    my $StatusReason        = $GetApplicationResponse->StatusReason;
    my $Tags                = $GetApplicationResponse->Tags;
    my $TargetGroupArns     = $GetApplicationResponse->TargetGroupArns;

    # Returns a L<Paws::M2::GetApplicationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/m2/GetApplication>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the application.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetApplication in L<Paws::M2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

