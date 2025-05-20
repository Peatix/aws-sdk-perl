
package Paws::Finspace::UpdateKxEnvironment;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateKxEnvironment');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::UpdateKxEnvironmentResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::UpdateKxEnvironment - Arguments for method UpdateKxEnvironment on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateKxEnvironment on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method UpdateKxEnvironment.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateKxEnvironment.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $UpdateKxEnvironmentResponse = $finspace->UpdateKxEnvironment(
      EnvironmentId => 'MyIdType',
      ClientToken   => 'MyClientToken',          # OPTIONAL
      Description   => 'MyDescription',          # OPTIONAL
      Name          => 'MyKxEnvironmentName',    # OPTIONAL
    );

    # Results:
    my $AvailabilityZoneIds = $UpdateKxEnvironmentResponse->AvailabilityZoneIds;
    my $AwsAccountId        = $UpdateKxEnvironmentResponse->AwsAccountId;
    my $CreationTimestamp   = $UpdateKxEnvironmentResponse->CreationTimestamp;
    my $CustomDNSConfiguration =
      $UpdateKxEnvironmentResponse->CustomDNSConfiguration;
    my $DedicatedServiceAccountId =
      $UpdateKxEnvironmentResponse->DedicatedServiceAccountId;
    my $Description    = $UpdateKxEnvironmentResponse->Description;
    my $DnsStatus      = $UpdateKxEnvironmentResponse->DnsStatus;
    my $EnvironmentArn = $UpdateKxEnvironmentResponse->EnvironmentArn;
    my $EnvironmentId  = $UpdateKxEnvironmentResponse->EnvironmentId;
    my $ErrorMessage   = $UpdateKxEnvironmentResponse->ErrorMessage;
    my $KmsKeyId       = $UpdateKxEnvironmentResponse->KmsKeyId;
    my $Name           = $UpdateKxEnvironmentResponse->Name;
    my $Status         = $UpdateKxEnvironmentResponse->Status;
    my $TgwStatus      = $UpdateKxEnvironmentResponse->TgwStatus;
    my $TransitGatewayConfiguration =
      $UpdateKxEnvironmentResponse->TransitGatewayConfiguration;
    my $UpdateTimestamp = $UpdateKxEnvironmentResponse->UpdateTimestamp;

    # Returns a L<Paws::Finspace::UpdateKxEnvironmentResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/UpdateKxEnvironment>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 Description => Str

A description of the kdb environment.



=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment.



=head2 Name => Str

The name of the kdb environment.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateKxEnvironment in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

