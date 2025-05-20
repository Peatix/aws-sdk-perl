
package Paws::VPCLattice::CreateTargetGroup;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Config => (is => 'ro', isa => 'Paws::VPCLattice::TargetGroupConfig', traits => ['NameInRequest'], request_name => 'config');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::VPCLattice::TagMap', traits => ['NameInRequest'], request_name => 'tags');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateTargetGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/targetgroups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::CreateTargetGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::CreateTargetGroup - Arguments for method CreateTargetGroup on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateTargetGroup on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method CreateTargetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateTargetGroup.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $CreateTargetGroupResponse = $vpc -lattice->CreateTargetGroup(
      Name        => 'MyTargetGroupName',
      Type        => 'IP',
      ClientToken => 'MyClientToken',       # OPTIONAL
      Config      => {
        HealthCheck => {
          Enabled                    => 1,    # OPTIONAL
          HealthCheckIntervalSeconds => 1,    # max: 300; OPTIONAL
          HealthCheckTimeoutSeconds  => 1,    # max: 120; OPTIONAL
          HealthyThresholdCount      => 1,    # max: 10; OPTIONAL
          Matcher                    => {
            HttpCode => 'MyHttpCodeMatcher',    # max: 2000; OPTIONAL
          },    # OPTIONAL
          Path     => 'MyHealthCheckPath',  # max: 2048; OPTIONAL
          Port     => 1,                    # max: 65535; OPTIONAL
          Protocol => 'HTTP',               # values: HTTP, HTTPS, TCP; OPTIONAL
          ProtocolVersion         => 'HTTP1',   # values: HTTP1, HTTP2; OPTIONAL
          UnhealthyThresholdCount => 1,         # max: 10; OPTIONAL
        },    # OPTIONAL
        IpAddressType               => 'IPV4',    # values: IPV4, IPV6; OPTIONAL
        LambdaEventStructureVersion => 'V1',      # values: V1, V2; OPTIONAL
        Port                        => 1,         # min: 1, max: 65535; OPTIONAL
        Protocol        => 'HTTP',       # values: HTTP, HTTPS, TCP; OPTIONAL
        ProtocolVersion => 'HTTP1',      # values: HTTP1, HTTP2, GRPC; OPTIONAL
        VpcIdentifier   => 'MyVpcId',    # min: 5, max: 50; OPTIONAL
      },    # OPTIONAL
      Tags => {
        'MyTagKey' => 'MyTagValue',    # key: min: 1, max: 128, value: max: 256
      },    # OPTIONAL
    );

    # Results:
    my $Arn    = $CreateTargetGroupResponse->Arn;
    my $Config = $CreateTargetGroupResponse->Config;
    my $Id     = $CreateTargetGroupResponse->Id;
    my $Name   = $CreateTargetGroupResponse->Name;
    my $Status = $CreateTargetGroupResponse->Status;
    my $Type   = $CreateTargetGroupResponse->Type;

    # Returns a L<Paws::VPCLattice::CreateTargetGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/CreateTargetGroup>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If you retry a request that completed
successfully using the same client token and parameters, the retry
succeeds without performing any actions. If the parameters aren't
identical, the retry fails.



=head2 Config => L<Paws::VPCLattice::TargetGroupConfig>

The target group configuration.



=head2 B<REQUIRED> Name => Str

The name of the target group. The name must be unique within the
account. The valid characters are a-z, 0-9, and hyphens (-). You can't
use a hyphen as the first or last character, or immediately after
another hyphen.



=head2 Tags => L<Paws::VPCLattice::TagMap>

The tags for the target group.



=head2 B<REQUIRED> Type => Str

The type of target group.

Valid values are: C<"IP">, C<"LAMBDA">, C<"INSTANCE">, C<"ALB">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateTargetGroup in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

