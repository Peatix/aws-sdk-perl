
package Paws::WellArchitected::UpdateGlobalSettings;
  use Moose;
  has DiscoveryIntegrationStatus => (is => 'ro', isa => 'Str');
  has JiraConfiguration => (is => 'ro', isa => 'Paws::WellArchitected::AccountJiraConfigurationInput');
  has OrganizationSharingStatus => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGlobalSettings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/global-settings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PATCH');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::UpdateGlobalSettings - Arguments for method UpdateGlobalSettings on L<Paws::WellArchitected>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGlobalSettings on the
L<AWS Well-Architected Tool|Paws::WellArchitected> service. Use the attributes of this class
as arguments to method UpdateGlobalSettings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGlobalSettings.

=head1 SYNOPSIS

    my $wellarchitected = Paws->service('WellArchitected');
    $wellarchitected->UpdateGlobalSettings(
      DiscoveryIntegrationStatus => 'ENABLED',    # OPTIONAL
      JiraConfiguration          => {
        IntegrationStatus =>
          'NOT_CONFIGURED',    # values: NOT_CONFIGURED; OPTIONAL
        IssueManagementStatus =>
          'ENABLED',           # values: ENABLED, DISABLED; OPTIONAL
        IssueManagementType => 'AUTO',    # values: AUTO, MANUAL; OPTIONAL
        JiraProjectKey      => 'MyJiraProjectKey',  # min: 1, max: 100; OPTIONAL
      },    # OPTIONAL
      OrganizationSharingStatus => 'ENABLED',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wellarchitected/UpdateGlobalSettings>

=head1 ATTRIBUTES


=head2 DiscoveryIntegrationStatus => Str

The status of discovery support settings.

Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 JiraConfiguration => L<Paws::WellArchitected::AccountJiraConfigurationInput>

The status of Jira integration settings.



=head2 OrganizationSharingStatus => Str

The status of organization sharing settings.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGlobalSettings in L<Paws::WellArchitected>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

