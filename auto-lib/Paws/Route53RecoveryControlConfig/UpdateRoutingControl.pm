
package Paws::Route53RecoveryControlConfig::UpdateRoutingControl;
  use Moose;
  has RoutingControlArn => (is => 'ro', isa => 'Str', required => 1);
  has RoutingControlName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateRoutingControl');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/routingcontrol');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryControlConfig::UpdateRoutingControlResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::UpdateRoutingControl - Arguments for method UpdateRoutingControl on L<Paws::Route53RecoveryControlConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateRoutingControl on the
L<AWS Route53 Recovery Control Config|Paws::Route53RecoveryControlConfig> service. Use the attributes of this class
as arguments to method UpdateRoutingControl.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateRoutingControl.

=head1 SYNOPSIS

    my $route53-recovery-control-config = Paws->service('Route53RecoveryControlConfig');
    my $UpdateRoutingControlResponse =
      $route53 -recovery-control-config->UpdateRoutingControl(
      RoutingControlArn  => 'My__stringMin1Max256PatternAZaZ09',
      RoutingControlName => 'My__stringMin1Max64PatternS',

      );

    # Results:
    my $RoutingControl = $UpdateRoutingControlResponse->RoutingControl;

# Returns a L<Paws::Route53RecoveryControlConfig::UpdateRoutingControlResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config/UpdateRoutingControl>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RoutingControlArn => Str

The Amazon Resource Name (ARN) of the routing control.



=head2 B<REQUIRED> RoutingControlName => Str

The name of the routing control.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateRoutingControl in L<Paws::Route53RecoveryControlConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

