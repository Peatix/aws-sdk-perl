
package Paws::Macie2::UpdateAutomatedDiscoveryConfiguration;
  use Moose;
  has AutoEnableOrganizationMembers => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'autoEnableOrganizationMembers');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAutomatedDiscoveryConfiguration');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/automated-discovery/configuration');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Macie2::UpdateAutomatedDiscoveryConfigurationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Macie2::UpdateAutomatedDiscoveryConfiguration - Arguments for method UpdateAutomatedDiscoveryConfiguration on L<Paws::Macie2>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAutomatedDiscoveryConfiguration on the
L<Amazon Macie 2|Paws::Macie2> service. Use the attributes of this class
as arguments to method UpdateAutomatedDiscoveryConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAutomatedDiscoveryConfiguration.

=head1 SYNOPSIS

    my $macie2 = Paws->service('Macie2');
    my $UpdateAutomatedDiscoveryConfigurationResponse =
      $macie2->UpdateAutomatedDiscoveryConfiguration(
      Status                        => 'ENABLED',
      AutoEnableOrganizationMembers => 'ALL',       # OPTIONAL
      );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/macie2/UpdateAutomatedDiscoveryConfiguration>

=head1 ATTRIBUTES


=head2 AutoEnableOrganizationMembers => Str

Specifies whether to automatically enable automated sensitive data
discovery for accounts in the organization. Valid values are: ALL
(default), enable it for all existing accounts and new member accounts;
NEW, enable it only for new member accounts; and, NONE, don't enable it
for any accounts.

If you specify NEW or NONE, automated sensitive data discovery
continues to be enabled for any existing accounts that it's currently
enabled for. To enable or disable it for individual member accounts,
specify NEW or NONE, and then enable or disable it for each account by
using the BatchUpdateAutomatedDiscoveryAccounts operation.

Valid values are: C<"ALL">, C<"NEW">, C<"NONE">

=head2 B<REQUIRED> Status => Str

The new status of automated sensitive data discovery for the
organization or account. Valid values are: ENABLED, start or resume all
automated sensitive data discovery activities; and, DISABLED, stop
performing all automated sensitive data discovery activities.

If you specify DISABLED for an administrator account, you also disable
automated sensitive data discovery for all member accounts in the
organization.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAutomatedDiscoveryConfiguration in L<Paws::Macie2>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

