
package Paws::Finspace::GetKxEnvironment;
  use Moose;
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetKxEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::GetKxEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::GetKxEnvironment - Arguments for method GetKxEnvironment on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetKxEnvironment on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method GetKxEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetKxEnvironment.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $GetKxEnvironmentResponse = $finspace->GetKxEnvironment(
      EnvironmentId => 'MyIdType',

    );

    # Results:
    my $AvailabilityZoneIds = $GetKxEnvironmentResponse->AvailabilityZoneIds;
    my $AwsAccountId        = $GetKxEnvironmentResponse->AwsAccountId;
    my $CertificateAuthorityArn =
      $GetKxEnvironmentResponse->CertificateAuthorityArn;
    my $CreationTimestamp = $GetKxEnvironmentResponse->CreationTimestamp;
    my $CustomDNSConfiguration =
      $GetKxEnvironmentResponse->CustomDNSConfiguration;
    my $DedicatedServiceAccountId =
      $GetKxEnvironmentResponse->DedicatedServiceAccountId;
    my $Description    = $GetKxEnvironmentResponse->Description;
    my $DnsStatus      = $GetKxEnvironmentResponse->DnsStatus;
    my $EnvironmentArn = $GetKxEnvironmentResponse->EnvironmentArn;
    my $EnvironmentId  = $GetKxEnvironmentResponse->EnvironmentId;
    my $ErrorMessage   = $GetKxEnvironmentResponse->ErrorMessage;
    my $KmsKeyId       = $GetKxEnvironmentResponse->KmsKeyId;
    my $Name           = $GetKxEnvironmentResponse->Name;
    my $Status         = $GetKxEnvironmentResponse->Status;
    my $TgwStatus      = $GetKxEnvironmentResponse->TgwStatus;
    my $TransitGatewayConfiguration =
      $GetKxEnvironmentResponse->TransitGatewayConfiguration;
    my $UpdateTimestamp = $GetKxEnvironmentResponse->UpdateTimestamp;

    # Returns a L<Paws::Finspace::GetKxEnvironmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/GetKxEnvironment>

=head1 ATTRIBUTES


=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetKxEnvironment in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

