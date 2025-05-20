
package Paws::GameLift::RegisterCompute;
  use Moose;
  has CertificatePath => (is => 'ro', isa => 'Str');
  has ComputeName => (is => 'ro', isa => 'Str', required => 1);
  has DnsName => (is => 'ro', isa => 'Str');
  has FleetId => (is => 'ro', isa => 'Str', required => 1);
  has IpAddress => (is => 'ro', isa => 'Str');
  has Location => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterCompute');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::GameLift::RegisterComputeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::GameLift::RegisterCompute - Arguments for method RegisterCompute on L<Paws::GameLift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterCompute on the
L<Amazon GameLift|Paws::GameLift> service. Use the attributes of this class
as arguments to method RegisterCompute.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterCompute.

=head1 SYNOPSIS

    my $gamelift = Paws->service('GameLift');
    my $RegisterComputeOutput = $gamelift->RegisterCompute(
      ComputeName     => 'MyComputeName',
      FleetId         => 'MyFleetIdOrArn',
      CertificatePath => 'MyNonZeroAndMaxString',    # OPTIONAL
      DnsName         => 'MyDnsNameInput',           # OPTIONAL
      IpAddress       => 'MyIpAddress',              # OPTIONAL
      Location        => 'MyLocationStringModel',    # OPTIONAL
    );

    # Results:
    my $Compute = $RegisterComputeOutput->Compute;

    # Returns a L<Paws::GameLift::RegisterComputeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/gamelift/RegisterCompute>

=head1 ATTRIBUTES


=head2 CertificatePath => Str

The path to a TLS certificate on your compute resource. Amazon GameLift
doesn't validate the path and certificate.



=head2 B<REQUIRED> ComputeName => Str

A descriptive label for the compute resource.



=head2 DnsName => Str

The DNS name of the compute resource. Amazon GameLift requires either a
DNS name or IP address.



=head2 B<REQUIRED> FleetId => Str

A unique identifier for the fleet to register the compute to. You can
use either the fleet ID or ARN value.



=head2 IpAddress => Str

The IP address of the compute resource. Amazon GameLift requires either
a DNS name or IP address. When registering an Anywhere fleet, an IP
address is required.



=head2 Location => Str

The name of a custom location to associate with the compute resource
being registered. This parameter is required when registering a compute
for an Anywhere fleet.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterCompute in L<Paws::GameLift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

