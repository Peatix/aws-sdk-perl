
package Paws::WorkMail::UpdateUser;
  use Moose;
  has City => (is => 'ro', isa => 'Str');
  has Company => (is => 'ro', isa => 'Str');
  has Country => (is => 'ro', isa => 'Str');
  has Department => (is => 'ro', isa => 'Str');
  has DisplayName => (is => 'ro', isa => 'Str');
  has FirstName => (is => 'ro', isa => 'Str');
  has HiddenFromGlobalAddressList => (is => 'ro', isa => 'Bool');
  has IdentityProviderUserId => (is => 'ro', isa => 'Str');
  has Initials => (is => 'ro', isa => 'Str');
  has JobTitle => (is => 'ro', isa => 'Str');
  has LastName => (is => 'ro', isa => 'Str');
  has Office => (is => 'ro', isa => 'Str');
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has Role => (is => 'ro', isa => 'Str');
  has Street => (is => 'ro', isa => 'Str');
  has Telephone => (is => 'ro', isa => 'Str');
  has UserId => (is => 'ro', isa => 'Str', required => 1);
  has ZipCode => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::UpdateUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::UpdateUser - Arguments for method UpdateUser on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUser on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method UpdateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUser.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $UpdateUserResponse = $workmail->UpdateUser(
      OrganizationId              => 'MyOrganizationId',
      UserId                      => 'MyEntityIdentifier',
      City                        => 'MyUserAttribute',      # OPTIONAL
      Company                     => 'MyUserAttribute',      # OPTIONAL
      Country                     => 'MyUserAttribute',      # OPTIONAL
      Department                  => 'MyUserAttribute',      # OPTIONAL
      DisplayName                 => 'MyUserAttribute',      # OPTIONAL
      FirstName                   => 'MyUserAttribute',      # OPTIONAL
      HiddenFromGlobalAddressList => 1,                      # OPTIONAL
      IdentityProviderUserId => 'MyIdentityProviderUserIdForUpdate',  # OPTIONAL
      Initials               => 'MyUserAttribute',                    # OPTIONAL
      JobTitle               => 'MyUserAttribute',                    # OPTIONAL
      LastName               => 'MyUserAttribute',                    # OPTIONAL
      Office                 => 'MyUserAttribute',                    # OPTIONAL
      Role                   => 'USER',                               # OPTIONAL
      Street                 => 'MyUserAttribute',                    # OPTIONAL
      Telephone              => 'MyUserAttribute',                    # OPTIONAL
      ZipCode                => 'MyUserAttribute',                    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/UpdateUser>

=head1 ATTRIBUTES


=head2 City => Str

Updates the user's city.



=head2 Company => Str

Updates the user's company.



=head2 Country => Str

Updates the user's country.



=head2 Department => Str

Updates the user's department.



=head2 DisplayName => Str

Updates the display name of the user.



=head2 FirstName => Str

Updates the user's first name.



=head2 HiddenFromGlobalAddressList => Bool

If enabled, the user is hidden from the global address list.



=head2 IdentityProviderUserId => Str

User ID from the IAM Identity Center. If this parameter is empty it
will be updated automatically when the user logs in for the first time
to the mailbox associated with WorkMail.



=head2 Initials => Str

Updates the user's initials.



=head2 JobTitle => Str

Updates the user's job title.



=head2 LastName => Str

Updates the user's last name.



=head2 Office => Str

Updates the user's office.



=head2 B<REQUIRED> OrganizationId => Str

The identifier for the organization under which the user exists.



=head2 Role => Str

Updates the user role.

You cannot pass I<SYSTEM_USER> or I<RESOURCE>.

Valid values are: C<"USER">, C<"RESOURCE">, C<"SYSTEM_USER">, C<"REMOTE_USER">

=head2 Street => Str

Updates the user's street address.



=head2 Telephone => Str

Updates the user's contact details.



=head2 B<REQUIRED> UserId => Str

The identifier for the user to be updated.

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




=head2 ZipCode => Str

Updates the user's zip code.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUser in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

