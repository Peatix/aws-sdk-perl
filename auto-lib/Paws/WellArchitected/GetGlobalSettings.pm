
package Paws::WellArchitected::GetGlobalSettings;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetGlobalSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WellArchitected::GetGlobalSettingsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::GetGlobalSettings - Arguments for method GetGlobalSettings on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetGlobalSettings on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method GetGlobalSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetGlobalSettings.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    my $GetGlobalSettingsOutput = $wellarchitected->GetGlobalSettings();

    # Results:
    my $DiscoveryIntegrationStatus =
      $GetGlobalSettingsOutput->DiscoveryIntegrationStatus;
    my $JiraConfiguration = $GetGlobalSettingsOutput->JiraConfiguration;
    my $OrganizationSharingStatus =
      $GetGlobalSettingsOutput->OrganizationSharingStatus;

    # Returns a L<Paws::WellArchitected::GetGlobalSettingsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/GetGlobalSettings>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetGlobalSettings in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

