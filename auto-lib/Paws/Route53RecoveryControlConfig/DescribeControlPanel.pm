
package Paws::Route53RecoveryControlConfig::DescribeControlPanel;
  use Moose;
  has ControlPanelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ControlPanelArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeControlPanel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/controlpanel/{ControlPanelArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryControlConfig::DescribeControlPanelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::DescribeControlPanel - Arguments for method DescribeControlPanel on L<Paws::Route53RecoveryControlConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeControlPanel on the
L<AWS Route53 Recovery Control Config|Paws::Route53RecoveryControlConfig> service. Use the attributes of this class
as arguments to method DescribeControlPanel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeControlPanel.

=head1 SYNOPSIS

    my $route53-recovery-control-config = Paws->service('Route53RecoveryControlConfig');
    my $DescribeControlPanelResponse =
      $route53 -recovery-control-config->DescribeControlPanel(
      ControlPanelArn => 'My__string',

      );

    # Results:
    my $ControlPanel = $DescribeControlPanelResponse->ControlPanel;

# Returns a L<Paws::Route53RecoveryControlConfig::DescribeControlPanelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config/DescribeControlPanel>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ControlPanelArn => Str

The Amazon Resource Name (ARN) of the control panel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeControlPanel in L<Paws::Route53RecoveryControlConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

