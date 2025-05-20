
package Paws::Account::GetAccountInformationResponse;
  use Moose;
  has AccountCreatedDate => (is => 'ro', isa => 'Str');
  has AccountId => (is => 'ro', isa => 'Str');
  has AccountName => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Account::GetAccountInformationResponse

=head1 ATTRIBUTES


=head2 AccountCreatedDate => Str

The date and time the account was created.


=head2 AccountId => Str

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


=head2 AccountName => Str

The name of the account.


=head2 _request_id => Str


=cut

