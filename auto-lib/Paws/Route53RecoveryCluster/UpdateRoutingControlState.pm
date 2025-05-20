
package Paws::Route53RecoveryCluster::UpdateRoutingControlState;
  use Moose;
  has RoutingControlArn => (is => 'ro', isa => 'Str', required => 1);
  has RoutingControlState => (is => 'ro', isa => 'Str', required => 1);
  has SafetyRulesToOverride => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRoutingControlState');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryCluster::UpdateRoutingControlStateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryCluster::UpdateRoutingControlState - Arguments for method UpdateRoutingControlState on L<Paws::Route53RecoveryCluster>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRoutingControlState on the
L<Route53 Recovery Cluster|Paws::Route53RecoveryCluster> service. Use the attributes of this class
as arguments to method UpdateRoutingControlState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRoutingControlState.

=head1 SYNOPSIS

    my $route53-recovery-cluster = Paws->service('Route53RecoveryCluster');
    my $UpdateRoutingControlStateResponse =
      $route53 -recovery-cluster->UpdateRoutingControlState(
      RoutingControlArn     => 'MyArn',
      RoutingControlState   => 'On',
      SafetyRulesToOverride => [
        'MyArn', ...    # min: 1, max: 255
      ],    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster/UpdateRoutingControlState>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RoutingControlArn => Str

The Amazon Resource Name (ARN) for the routing control that you want to
update the state for.



=head2 B<REQUIRED> RoutingControlState => Str

The state of the routing control. You can set the value to ON or OFF.

Valid values are: C<"On">, C<"Off">

=head2 SafetyRulesToOverride => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) for the safety rules that you want to
override when you're updating the state of a routing control. You can
override one safety rule or multiple safety rules by including one or
more ARNs, separated by commas.

For more information, see Override safety rules to reroute traffic
(https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html)
in the Amazon Route 53 Application Recovery Controller Developer Guide.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRoutingControlState in L<Paws::Route53RecoveryCluster>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

