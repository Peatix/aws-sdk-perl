
package Paws::Route53RecoveryCluster::UpdateRoutingControlStates;
  use Moose;
  has SafetyRulesToOverride => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has UpdateRoutingControlStateEntries => (is => 'ro', isa => 'ArrayRef[Paws::Route53RecoveryCluster::UpdateRoutingControlStateEntry]', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRoutingControlStates');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryCluster::UpdateRoutingControlStatesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryCluster::UpdateRoutingControlStates - Arguments for method UpdateRoutingControlStates on L<Paws::Route53RecoveryCluster>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRoutingControlStates on the
L<Route53 Recovery Cluster|Paws::Route53RecoveryCluster> service. Use the attributes of this class
as arguments to method UpdateRoutingControlStates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRoutingControlStates.

=head1 SYNOPSIS

    my $route53-recovery-cluster = Paws->service('Route53RecoveryCluster');
    my $UpdateRoutingControlStatesResponse =
      $route53 -recovery-cluster->UpdateRoutingControlStates(
      UpdateRoutingControlStateEntries => [
        {
          RoutingControlArn   => 'MyArn',    # min: 1, max: 255
          RoutingControlState => 'On',       # values: On, Off

        },
        ...
      ],
      SafetyRulesToOverride => [
        'MyArn',
        ...    # min: 1, max: 255
      ],    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster/UpdateRoutingControlStates>

=head1 ATTRIBUTES


=head2 SafetyRulesToOverride => ArrayRef[Str|Undef]

The Amazon Resource Names (ARNs) for the safety rules that you want to
override when you're updating routing control states. You can override
one safety rule or multiple safety rules by including one or more ARNs,
separated by commas.

For more information, see Override safety rules to reroute traffic
(https://docs.aws.amazon.com/r53recovery/latest/dg/routing-control.override-safety-rule.html)
in the Amazon Route 53 Application Recovery Controller Developer Guide.



=head2 B<REQUIRED> UpdateRoutingControlStateEntries => ArrayRef[L<Paws::Route53RecoveryCluster::UpdateRoutingControlStateEntry>]

A set of routing control entries that you want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRoutingControlStates in L<Paws::Route53RecoveryCluster>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

