
package Paws::Route53RecoveryControlConfig::CreateRoutingControl;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ClusterArn => (is => 'ro', isa => 'Str', required => 1);
  has ControlPanelArn => (is => 'ro', isa => 'Str');
  has RoutingControlName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateRoutingControl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/routingcontrol');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryControlConfig::CreateRoutingControlResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::CreateRoutingControl - Arguments for method CreateRoutingControl on L<Paws::Route53RecoveryControlConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateRoutingControl on the
L<AWS Route53 Recovery Control Config|Paws::Route53RecoveryControlConfig> service. Use the attributes of this class
as arguments to method CreateRoutingControl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateRoutingControl.

=head1 SYNOPSIS

    my $route53-recovery-control-config = Paws->service('Route53RecoveryControlConfig');
    my $CreateRoutingControlResponse =
      $route53 -recovery-control-config->CreateRoutingControl(
      ClusterArn         => 'My__stringMin1Max256PatternAZaZ09',
      RoutingControlName => 'My__stringMin1Max64PatternS',
      ClientToken        => 'My__stringMin1Max64PatternS',          # OPTIONAL
      ControlPanelArn    => 'My__stringMin1Max256PatternAZaZ09',    # OPTIONAL
      );

    # Results:
    my $RoutingControl = $CreateRoutingControlResponse->RoutingControl;

# Returns a L<Paws::Route53RecoveryControlConfig::CreateRoutingControlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config/CreateRoutingControl>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive string of up to 64 ASCII characters. To make
an idempotent API request with an action, specify a client token in the
request.



=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) of the cluster that includes the routing
control.



=head2 ControlPanelArn => Str

The Amazon Resource Name (ARN) of the control panel that includes the
routing control.



=head2 B<REQUIRED> RoutingControlName => Str

The name of the routing control.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateRoutingControl in L<Paws::Route53RecoveryControlConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

