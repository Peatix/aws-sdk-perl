
package Paws::LicenseManagerLinuxSubscriptions::UpdateServiceSettings;
  use Moose;
  has AllowUpdate => (is => 'ro', isa => 'Bool');
  has LinuxSubscriptionsDiscovery => (is => 'ro', isa => 'Str', required => 1);
  has LinuxSubscriptionsDiscoverySettings => (is => 'ro', isa => 'Paws::LicenseManagerLinuxSubscriptions::LinuxSubscriptionsDiscoverySettings', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateServiceSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/subscription/UpdateServiceSettings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManagerLinuxSubscriptions::UpdateServiceSettingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerLinuxSubscriptions::UpdateServiceSettings - Arguments for method UpdateServiceSettings on L<Paws::LicenseManagerLinuxSubscriptions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateServiceSettings on the
L<AWS License Manager Linux Subscriptions|Paws::LicenseManagerLinuxSubscriptions> service. Use the attributes of this class
as arguments to method UpdateServiceSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateServiceSettings.

=head1 SYNOPSIS

    my $license-manager-linux-subscriptions = Paws->service('LicenseManagerLinuxSubscriptions');
    my $UpdateServiceSettingsResponse =
      $license -manager-linux-subscriptions->UpdateServiceSettings(
      LinuxSubscriptionsDiscovery         => 'Enabled',
      LinuxSubscriptionsDiscoverySettings => {
        OrganizationIntegration => 'Enabled',    # values: Enabled, Disabled
        SourceRegions           => [
          'MyStringListMemberString', ...        # min: 1, max: 100
        ],    # min: 1, max: 100

      },
      AllowUpdate => 1,    # OPTIONAL
      );

    # Results:
    my $HomeRegions = $UpdateServiceSettingsResponse->HomeRegions;
    my $LinuxSubscriptionsDiscovery =
      $UpdateServiceSettingsResponse->LinuxSubscriptionsDiscovery;
    my $LinuxSubscriptionsDiscoverySettings =
      $UpdateServiceSettingsResponse->LinuxSubscriptionsDiscoverySettings;
    my $Status        = $UpdateServiceSettingsResponse->Status;
    my $StatusMessage = $UpdateServiceSettingsResponse->StatusMessage;

# Returns a L<Paws::LicenseManagerLinuxSubscriptions::UpdateServiceSettingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions/UpdateServiceSettings>

=head1 ATTRIBUTES


=head2 AllowUpdate => Bool

Describes if updates are allowed to the service settings for Linux
subscriptions. If you allow updates, you can aggregate Linux
subscription data in more than one home Region.



=head2 B<REQUIRED> LinuxSubscriptionsDiscovery => Str

Describes if the discovery of Linux subscriptions is enabled.

Valid values are: C<"Enabled">, C<"Disabled">

=head2 B<REQUIRED> LinuxSubscriptionsDiscoverySettings => L<Paws::LicenseManagerLinuxSubscriptions::LinuxSubscriptionsDiscoverySettings>

The settings defined for Linux subscriptions discovery. The settings
include if Organizations integration has been enabled, and which
Regions data will be aggregated from.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateServiceSettings in L<Paws::LicenseManagerLinuxSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

