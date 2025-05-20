
package Paws::Organizations::CreateGovCloudAccount;
  use Moose;
  has AccountName => (is => 'ro', isa => 'Str', required => 1);
  has Email => (is => 'ro', isa => 'Str', required => 1);
  has IamUserAccessToBilling => (is => 'ro', isa => 'Str');
  has RoleName => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::Organizations::Tag]');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGovCloudAccount');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Organizations::CreateGovCloudAccountResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Organizations::CreateGovCloudAccount - Arguments for method CreateGovCloudAccount on L<Paws::Organizations>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGovCloudAccount on the
L<AWS Organizations|Paws::Organizations> service. Use the attributes of this class
as arguments to method CreateGovCloudAccount.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGovCloudAccount.

=head1 SYNOPSIS

    my $organizations = Paws->service('Organizations');
    my $CreateGovCloudAccountResponse = $organizations->CreateGovCloudAccount(
      AccountName            => 'MyCreateAccountName',
      Email                  => 'MyEmail',
      IamUserAccessToBilling => 'ALLOW',                 # OPTIONAL
      RoleName               => 'MyRoleName',            # OPTIONAL
      Tags                   => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $CreateAccountStatus =
      $CreateGovCloudAccountResponse->CreateAccountStatus;

    # Returns a L<Paws::Organizations::CreateGovCloudAccountResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/organizations/CreateGovCloudAccount>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AccountName => Str

The friendly name of the member account.

The account name can consist of only the characters [a-z],[A-Z],[0-9],
hyphen (-), or dot (.) You can't separate characters with a dash
(E<ndash>).



=head2 B<REQUIRED> Email => Str

Specifies the email address of the owner to assign to the new member
account in the commercial Region. This email address must not already
be associated with another Amazon Web Services account. You must use a
valid email address to complete account creation.

The rules for a valid email address:

=over

=item *

The address must be a minimum of 6 and a maximum of 64 characters long.

=item *

All characters must be 7-bit ASCII characters.

=item *

There must be one and only one @ symbol, which separates the local name
from the domain name.

=item *

The local name can't contain any of the following characters:

whitespace, " ' ( ) E<lt> E<gt> [ ] : ; , \ | % &

=item *

The local name can't begin with a dot (.)

=item *

The domain name can consist of only the characters [a-z],[A-Z],[0-9],
hyphen (-), or dot (.)

=item *

The domain name can't begin or end with a hyphen (-) or dot (.)

=item *

The domain name must contain at least one dot

=back

You can't access the root user of the account or remove an account that
was created with an invalid email address. Like all request parameters
for C<CreateGovCloudAccount>, the request for the email address for the
Amazon Web Services GovCloud (US) account originates from the
commercial Region, not from the Amazon Web Services GovCloud (US)
Region.



=head2 IamUserAccessToBilling => Str

If set to C<ALLOW>, the new linked account in the commercial Region
enables IAM users to access account billing information I<if> they have
the required permissions. If set to C<DENY>, only the root user of the
new account can access account billing information. For more
information, see About IAM access to the Billing and Cost Management
console
(https://docs.aws.amazon.com/awsaccountbilling/latest/aboutv2/grantaccess.html#ControllingAccessWebsite-Activate)
in the I<Amazon Web Services Billing and Cost Management User Guide>.

If you don't specify this parameter, the value defaults to C<ALLOW>,
and IAM users and roles with the required permissions can access
billing information for the new account.

Valid values are: C<"ALLOW">, C<"DENY">

=head2 RoleName => Str

(Optional)

The name of an IAM role that Organizations automatically preconfigures
in the new member accounts in both the Amazon Web Services GovCloud
(US) Region and in the commercial Region. This role trusts the
management account, allowing users in the management account to assume
the role, as permitted by the management account administrator. The
role has administrator permissions in the new member account.

If you don't specify this parameter, the role name defaults to
C<OrganizationAccountAccessRole>.

For more information about how to use this role to access the member
account, see the following links:

=over

=item *

Creating the OrganizationAccountAccessRole in an invited member account
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_accounts_access.html#orgs_manage_accounts_create-cross-account-role)
in the I<Organizations User Guide>

=item *

Steps 2 and 3 in IAM Tutorial: Delegate access across Amazon Web
Services accounts using IAM roles
(https://docs.aws.amazon.com/IAM/latest/UserGuide/tutorial_cross-account-with-roles.html)
in the I<IAM User Guide>

=back

The regex pattern (http://wikipedia.org/wiki/regex) that is used to
validate this parameter. The pattern can include uppercase letters,
lowercase letters, digits with no spaces, and any of the following
characters: =,.@-



=head2 Tags => ArrayRef[L<Paws::Organizations::Tag>]

A list of tags that you want to attach to the newly created account.
These tags are attached to the commercial account associated with the
GovCloud account, and not to the GovCloud account itself. To add tags
to the actual GovCloud account, call the TagResource operation in the
GovCloud region after the new GovCloud account exists.

For each tag in the list, you must specify both a tag key and a value.
You can set the value to an empty string, but you can't set it to
C<null>. For more information about tagging, see Tagging Organizations
resources
(https://docs.aws.amazon.com/organizations/latest/userguide/orgs_tagging.html)
in the Organizations User Guide.

If any one of the tags is not valid or if you exceed the maximum
allowed number of tags for an account, then the entire request fails
and the account is not created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGovCloudAccount in L<Paws::Organizations>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

