
package Paws::Route53RecoveryControlConfig::CreateControlPanel;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has ClusterArn => (is => 'ro', isa => 'Str', required => 1);
  has ControlPanelName => (is => 'ro', isa => 'Str', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Route53RecoveryControlConfig::__mapOf__stringMin0Max256PatternS');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateControlPanel');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/controlpanel');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryControlConfig::CreateControlPanelResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::CreateControlPanel - Arguments for method CreateControlPanel on L<Paws::Route53RecoveryControlConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateControlPanel on the
L<AWS Route53 Recovery Control Config|Paws::Route53RecoveryControlConfig> service. Use the attributes of this class
as arguments to method CreateControlPanel.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateControlPanel.

=head1 SYNOPSIS

    my $route53-recovery-control-config = Paws->service('Route53RecoveryControlConfig');
    my $CreateControlPanelResponse =
      $route53 -recovery-control-config->CreateControlPanel(
      ClusterArn       => 'My__stringMin1Max256PatternAZaZ09',
      ControlPanelName => 'My__stringMin1Max64PatternS',
      ClientToken      => 'My__stringMin1Max64PatternS',         # OPTIONAL
      Tags             => {
        'My__string' => 'My__stringMin0Max256PatternS',    # , value: max: 256
      },    # OPTIONAL
      );

    # Results:
    my $ControlPanel = $CreateControlPanelResponse->ControlPanel;

# Returns a L<Paws::Route53RecoveryControlConfig::CreateControlPanelResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config/CreateControlPanel>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique, case-sensitive string of up to 64 ASCII characters. To make
an idempotent API request with an action, specify a client token in the
request.



=head2 B<REQUIRED> ClusterArn => Str

The Amazon Resource Name (ARN) of the cluster for the control panel.



=head2 B<REQUIRED> ControlPanelName => Str

The name of the control panel.



=head2 Tags => L<Paws::Route53RecoveryControlConfig::__mapOf__stringMin0Max256PatternS>

The tags associated with the control panel.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateControlPanel in L<Paws::Route53RecoveryControlConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

