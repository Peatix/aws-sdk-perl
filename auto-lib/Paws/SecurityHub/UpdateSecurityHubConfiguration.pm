
package Paws::SecurityHub::UpdateSecurityHubConfiguration;
  use Moose;
  has AutoEnableControls => (is => 'ro', isa => 'Bool');
  has ControlFindingGenerator => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateSecurityHubConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/accounts');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityHub::UpdateSecurityHubConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityHub::UpdateSecurityHubConfiguration - Arguments for method UpdateSecurityHubConfiguration on L<Paws::SecurityHub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateSecurityHubConfiguration on the
L<AWS SecurityHub|Paws::SecurityHub> service. Use the attributes of this class
as arguments to method UpdateSecurityHubConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateSecurityHubConfiguration.

=head1 SYNOPSIS

    my $securityhub = Paws->service('SecurityHub');
    my $UpdateSecurityHubConfigurationResponse =
      $securityhub->UpdateSecurityHubConfiguration(
      AutoEnableControls      => 1,                     # OPTIONAL
      ControlFindingGenerator => 'STANDARD_CONTROL',    # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securityhub/UpdateSecurityHubConfiguration>

=head1 ATTRIBUTES


=head2 AutoEnableControls => Bool

Whether to automatically enable new controls when they are added to
standards that are enabled.

By default, this is set to C<true>, and new controls are enabled
automatically. To not automatically enable new controls, set this to
C<false>.

When you automatically enable new controls, you can interact with the
controls in the console and programmatically immediately after release.
However, automatically enabled controls have a temporary default status
of C<DISABLED>. It can take up to several days for Security Hub to
process the control release and designate the control as C<ENABLED> in
your account. During the processing period, you can manually enable or
disable a control, and Security Hub will maintain that designation
regardless of whether you have C<AutoEnableControls> set to C<true>.



=head2 ControlFindingGenerator => Str

Updates whether the calling account has consolidated control findings
turned on. If the value for this field is set to C<SECURITY_CONTROL>,
Security Hub generates a single finding for a control check even when
the check applies to multiple enabled standards.

If the value for this field is set to C<STANDARD_CONTROL>, Security Hub
generates separate findings for a control check when the check applies
to multiple enabled standards.

For accounts that are part of an organization, this value can only be
updated in the administrator account.

Valid values are: C<"STANDARD_CONTROL">, C<"SECURITY_CONTROL">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateSecurityHubConfiguration in L<Paws::SecurityHub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

