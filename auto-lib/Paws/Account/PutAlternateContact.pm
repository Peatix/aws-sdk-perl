
package Paws::Account::PutAlternateContact;
  use Moose;
  has AccountId => (is => 'ro', isa => 'Str');
  has AlternateContactType => (is => 'ro', isa => 'Str', required => 1);
  has EmailAddress => (is => 'ro', isa => 'Str', required => 1);
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has PhoneNumber => (is => 'ro', isa => 'Str', required => 1);
  has Title => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutAlternateContact');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/putAlternateContact');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Account::PutAlternateContact - Arguments for method PutAlternateContact on L<Paws::Account>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutAlternateContact on the
L<AWS Account|Paws::Account> service. Use the attributes of this class
as arguments to method PutAlternateContact.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutAlternateContact.

=head1 SYNOPSIS

    my $account = Paws->service('Account');
    $account->PutAlternateContact(
      AlternateContactType => 'BILLING',
      EmailAddress         => 'MyEmailAddress',
      Name                 => 'MyName',
      PhoneNumber          => 'MyPhoneNumber',
      Title                => 'MyTitle',
      AccountId            => 'MyAccountId',      # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/account/PutAlternateContact>

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



=head2 B<REQUIRED> AlternateContactType => Str

Specifies which alternate contact you want to create or update.

Valid values are: C<"BILLING">, C<"OPERATIONS">, C<"SECURITY">

=head2 B<REQUIRED> EmailAddress => Str

Specifies an email address for the alternate contact.



=head2 B<REQUIRED> Name => Str

Specifies a name for the alternate contact.



=head2 B<REQUIRED> PhoneNumber => Str

Specifies a phone number for the alternate contact.



=head2 B<REQUIRED> Title => Str

Specifies a title for the alternate contact.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutAlternateContact in L<Paws::Account>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

