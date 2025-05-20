
package Paws::VPCLattice::UpdateTargetGroup;
  use Moose;
  has HealthCheck => (is => 'ro', isa => 'Paws::VPCLattice::HealthCheckConfig', traits => ['NameInRequest'], request_name => 'healthCheck', required => 1);
  has TargetGroupIdentifier => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'targetGroupIdentifier', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateTargetGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/targetgroups/{targetGroupIdentifier}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::VPCLattice::UpdateTargetGroupResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::VPCLattice::UpdateTargetGroup - Arguments for method UpdateTargetGroup on L<Paws::VPCLattice>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateTargetGroup on the
L<Amazon VPC Lattice|Paws::VPCLattice> service. Use the attributes of this class
as arguments to method UpdateTargetGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateTargetGroup.

=head1 SYNOPSIS

    my $vpc-lattice = Paws->service('VPCLattice');
    my $UpdateTargetGroupResponse = $vpc -lattice->UpdateTargetGroup(
      HealthCheck => {
        Enabled                    => 1,    # OPTIONAL
        HealthCheckIntervalSeconds => 1,    # max: 300; OPTIONAL
        HealthCheckTimeoutSeconds  => 1,    # max: 120; OPTIONAL
        HealthyThresholdCount      => 1,    # max: 10; OPTIONAL
        Matcher                    => {
          HttpCode => 'MyHttpCodeMatcher',    # max: 2000; OPTIONAL
        },    # OPTIONAL
        Path     => 'MyHealthCheckPath',    # max: 2048; OPTIONAL
        Port     => 1,                      # max: 65535; OPTIONAL
        Protocol => 'HTTP',                 # values: HTTP, HTTPS, TCP; OPTIONAL
        ProtocolVersion         => 'HTTP1', # values: HTTP1, HTTP2; OPTIONAL
        UnhealthyThresholdCount => 1,       # max: 10; OPTIONAL
      },
      TargetGroupIdentifier => 'MyTargetGroupIdentifier',

    );

    # Results:
    my $Arn    = $UpdateTargetGroupResponse->Arn;
    my $Config = $UpdateTargetGroupResponse->Config;
    my $Id     = $UpdateTargetGroupResponse->Id;
    my $Name   = $UpdateTargetGroupResponse->Name;
    my $Status = $UpdateTargetGroupResponse->Status;
    my $Type   = $UpdateTargetGroupResponse->Type;

    # Returns a L<Paws::VPCLattice::UpdateTargetGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/vpc-lattice/UpdateTargetGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> HealthCheck => L<Paws::VPCLattice::HealthCheckConfig>

The health check configuration.



=head2 B<REQUIRED> TargetGroupIdentifier => Str

The ID or ARN of the target group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateTargetGroup in L<Paws::VPCLattice>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

