
package Paws::Account::GetAccountInformation;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAccountInformation');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/getAccountInformation');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Account::GetAccountInformationResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Account::GetAccountInformation - Arguments for method GetAccountInformation on L<Paws::Account>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAccountInformation on the
L<AWS Account|Paws::Account> service. Use the attributes of this class
as arguments to method GetAccountInformation.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAccountInformation.

=head1 SYNOPSIS

    my $account = Paws->service('Account');
    my $GetAccountInformationResponse = $account->GetAccountInformation(
      AccountId => 'MyAccountId',    # OPTIONAL
    );

    # Results:
    my $AccountCreatedDate = $GetAccountInformationResponse->AccountCreatedDate;
    my $AccountId          = $GetAccountInformationResponse->AccountId;
    my $AccountName        = $GetAccountInformationResponse->AccountName;

    # Returns a L<Paws::Account::GetAccountInformationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/account/GetAccountInformation>

=head1 ATTRIBUTES


=head2 AccountId => Str

Specifies the 12 digit account ID number of the Amazon Web Services
account that you want to access or modify with this operation.

If you do not specify this parameter, it defaults to the Amazon Web
Services account of the identity used to call the operation.

To use this parameter, the caller must be an identity in the
organization's management account
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_getting-started_concepts.html#account)
or a delegated administrator account, and the specified account ID must
be a member account in the same organization. The organization must
have all features enabled
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_org_support-all-features.html),
and the organization must have trusted access
(https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-trusted-access.html)
enabled for the Account Management service, and optionally a delegated
admin
(https://docs.aws.amazon.com/organizations/latest/userguide/using-orgs-delegated-admin.html)
account assigned.

The management account can't specify its own C<AccountId>; it must call
the operation in standalone context by not including the C<AccountId>
parameter.

To call this operation on an account that is not a member of an
organization, then don't specify this parameter, and call the operation
using an identity belonging to the account whose contacts you wish to
retrieve or modify.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAccountInformation in L<Paws::Account>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

