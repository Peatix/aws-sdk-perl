
package Paws::WorkMail::DescribeUser;
  use Moose;
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has UserId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::DescribeUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::DescribeUser - Arguments for method DescribeUser on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeUser on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method DescribeUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeUser.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $DescribeUserResponse = $workmail->DescribeUser(
      OrganizationId => 'MyOrganizationId',
      UserId         => 'MyEntityIdentifier',

    );

    # Results:
    my $City         = $DescribeUserResponse->City;
    my $Company      = $DescribeUserResponse->Company;
    my $Country      = $DescribeUserResponse->Country;
    my $Department   = $DescribeUserResponse->Department;
    my $DisabledDate = $DescribeUserResponse->DisabledDate;
    my $DisplayName  = $DescribeUserResponse->DisplayName;
    my $Email        = $DescribeUserResponse->Email;
    my $EnabledDate  = $DescribeUserResponse->EnabledDate;
    my $FirstName    = $DescribeUserResponse->FirstName;
    my $HiddenFromGlobalAddressList =
      $DescribeUserResponse->HiddenFromGlobalAddressList;
    my $IdentityProviderIdentityStoreId =
      $DescribeUserResponse->IdentityProviderIdentityStoreId;
    my $IdentityProviderUserId = $DescribeUserResponse->IdentityProviderUserId;
    my $Initials               = $DescribeUserResponse->Initials;
    my $JobTitle               = $DescribeUserResponse->JobTitle;
    my $LastName               = $DescribeUserResponse->LastName;
    my $MailboxDeprovisionedDate =
      $DescribeUserResponse->MailboxDeprovisionedDate;
    my $MailboxProvisionedDate = $DescribeUserResponse->MailboxProvisionedDate;
    my $Name                   = $DescribeUserResponse->Name;
    my $Office                 = $DescribeUserResponse->Office;
    my $State                  = $DescribeUserResponse->State;
    my $Street                 = $DescribeUserResponse->Street;
    my $Telephone              = $DescribeUserResponse->Telephone;
    my $UserId                 = $DescribeUserResponse->UserId;
    my $UserRole               = $DescribeUserResponse->UserRole;
    my $ZipCode                = $DescribeUserResponse->ZipCode;

    # Returns a L<Paws::WorkMail::DescribeUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/DescribeUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> OrganizationId => Str

The identifier for the organization under which the user exists.



=head2 B<REQUIRED> UserId => Str

The identifier for the user to be described.

The identifier can be the I<UserId>, I<Username>, or I<email>. The
following identity formats are available:

=over

=item *

User ID: 12345678-1234-1234-1234-123456789012 or
S-1-1-12-1234567890-123456789-123456789-1234

=item *

Email address: user@domain.tld

=item *

User name: user

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeUser in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

