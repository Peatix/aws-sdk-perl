
package Paws::Route53RecoveryCluster::ListRoutingControls;
  use Moose;
  has ControlPanelArn => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListRoutingControls');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryCluster::ListRoutingControlsResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryCluster::ListRoutingControls - Arguments for method ListRoutingControls on L<Paws::Route53RecoveryCluster>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListRoutingControls on the
L<Route53 Recovery Cluster|Paws::Route53RecoveryCluster> service. Use the attributes of this class
as arguments to method ListRoutingControls.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListRoutingControls.

=head1 SYNOPSIS

    my $route53-recovery-cluster = Paws->service('Route53RecoveryCluster');
    my $ListRoutingControlsResponse =
      $route53 -recovery-cluster->ListRoutingControls(
      ControlPanelArn => 'MyArn',          # OPTIONAL
      MaxResults      => 1,                # OPTIONAL
      NextToken       => 'MyPageToken',    # OPTIONAL
      );

    # Results:
    my $NextToken       = $ListRoutingControlsResponse->NextToken;
    my $RoutingControls = $ListRoutingControlsResponse->RoutingControls;

# Returns a L<Paws::Route53RecoveryCluster::ListRoutingControlsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-cluster/ListRoutingControls>

=head1 ATTRIBUTES


=head2 ControlPanelArn => Str

The Amazon Resource Name (ARN) of the control panel of the routing
controls to list.



=head2 MaxResults => Int

The number of routing controls objects that you want to return with
this call. The default value is 500.



=head2 NextToken => Str

The token for the next set of results. You receive this token from a
previous call.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListRoutingControls in L<Paws::Route53RecoveryCluster>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

