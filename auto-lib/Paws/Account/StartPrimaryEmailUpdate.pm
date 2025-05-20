
package Paws::Account::StartPrimaryEmailUpdate;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str', required => 1);
  has PrimaryEmail => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'StartPrimaryEmailUpdate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/startPrimaryEmailUpdate');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Account::StartPrimaryEmailUpdateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Account::StartPrimaryEmailUpdate - Arguments for method StartPrimaryEmailUpdate on L<Paws::Account>

=head1 DESCRIPTION

This class represents the parameters used for calling the method StartPrimaryEmailUpdate on the
L<AWS Account|Paws::Account> service. Use the attributes of this class
as arguments to method StartPrimaryEmailUpdate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to StartPrimaryEmailUpdate.

=head1 SYNOPSIS

    my $account = Paws->service('Account');
    my $StartPrimaryEmailUpdateResponse = $account->StartPrimaryEmailUpdate(
      AccountId    => 'MyAccountId',
      PrimaryEmail => 'MyPrimaryEmailAddress',

    );

    # Results:
    my $Status = $StartPrimaryEmailUpdateResponse->Status;

    # Returns a L<Paws::Account::StartPrimaryEmailUpdateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/account/StartPrimaryEmailUpdate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountId => Str

Specifies the 12-digit account ID number of the Amazon Web Services
account that you want to access or modify with this operation. To use
this parameter, the caller must be an identity in the organization's
management account
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account)
or a delegated administrator account. The specified account ID must be
a member account in the same organization. The organization must have
all features enabled
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html),
and the organization must have trusted access
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_integrate_services.html)
enabled for the Account Management service, and optionally a delegated
admin
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#delegated-admin)
account assigned.

This operation can only be called from the management account or the
delegated administrator account of an organization for a member
account.

The management account can't specify its own C<AccountId>.



=head2 B<REQUIRED> PrimaryEmail => Str

The new primary email address (also known as the root user email
address) to use in the specified account.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method StartPrimaryEmailUpdate in L<Paws::Account>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

