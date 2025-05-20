
package Paws::Route53RecoveryCluster::GetRoutingControlState;
  use Moose;
  has RoutingControlArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetRoutingControlState');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryCluster::GetRoutingControlStateResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryCluster::GetRoutingControlState - Arguments for method GetRoutingControlState on L<Paws::Route53RecoveryCluster>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetRoutingControlState on the
L<Route53 Recovery Cluster|Paws::Route53RecoveryCluster> service. Use the attributes of this class
as arguments to method GetRoutingControlState.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetRoutingControlState.

=head1 SYNOPSIS

    my $route53-recovery-cluster = Paws->service('Route53RecoveryCluster');
    my $GetRoutingControlStateResponse =
      $route53 -recovery-cluster->GetRoutingControlState(
      RoutingControlArn => 'MyArn',

      );

    # Results:
    my $RoutingControlArn = $GetRoutingControlStateResponse->RoutingControlArn;
    my $RoutingControlName =
      $GetRoutingControlStateResponse->RoutingControlName;
    my $RoutingControlState =
      $GetRoutingControlStateResponse->RoutingControlState;

# Returns a L<Paws::Route53RecoveryCluster::GetRoutingControlStateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster/GetRoutingControlState>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RoutingControlArn => Str

The Amazon Resource Name (ARN) for the routing control that you want to
get the state for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetRoutingControlState in L<Paws::Route53RecoveryCluster>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

