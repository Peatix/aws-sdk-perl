
package Paws::Route53RecoveryControlConfig::ListSafetyRules;
  use Moose;
  has ControlPanelArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'ControlPanelArn', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'MaxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'NextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListSafetyRules');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/controlpanel/{ControlPanelArn}/safetyrules');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Route53RecoveryControlConfig::ListSafetyRulesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryControlConfig::ListSafetyRules - Arguments for method ListSafetyRules on L<Paws::Route53RecoveryControlConfig>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListSafetyRules on the
L<AWS Route53 Recovery Control Config|Paws::Route53RecoveryControlConfig> service. Use the attributes of this class
as arguments to method ListSafetyRules.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListSafetyRules.

=head1 SYNOPSIS

    my $route53-recovery-control-config = Paws->service('Route53RecoveryControlConfig');
    my $ListSafetyRulesResponse =
      $route53 -recovery-control-config->ListSafetyRules(
      ControlPanelArn => 'My__string',
      MaxResults      => 1,               # OPTIONAL
      NextToken       => 'My__string',    # OPTIONAL
      );

    # Results:
    my $NextToken   = $ListSafetyRulesResponse->NextToken;
    my $SafetyRules = $ListSafetyRulesResponse->SafetyRules;

# Returns a L<Paws::Route53RecoveryControlConfig::ListSafetyRulesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/route53-recovery-control-config/ListSafetyRules>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ControlPanelArn => Str

The Amazon Resource Name (ARN) of the control panel.



=head2 MaxResults => Int

The number of objects that you want to return with this call.



=head2 NextToken => Str

The token that identifies which batch of results you want to see.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListSafetyRules in L<Paws::Route53RecoveryControlConfig>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

