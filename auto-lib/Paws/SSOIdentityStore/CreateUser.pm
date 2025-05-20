
package Paws::SSOIdentityStore::CreateUser;
  use Moose;
  has Addresses => (is => 'ro', isa => 'ArrayRef[Paws::SSOIdentityStore::Address]');
  has DisplayName => (is => 'ro', isa => 'Str');
  has Emails => (is => 'ro', isa => 'ArrayRef[Paws::SSOIdentityStore::Email]');
  has IdentityStoreId => (is => 'ro', isa => 'Str', required => 1);
  has Locale => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Paws::SSOIdentityStore::Name');
  has NickName => (is => 'ro', isa => 'Str');
  has PhoneNumbers => (is => 'ro', isa => 'ArrayRef[Paws::SSOIdentityStore::PhoneNumber]');
  has PreferredLanguage => (is => 'ro', isa => 'Str');
  has ProfileUrl => (is => 'ro', isa => 'Str');
  has Timezone => (is => 'ro', isa => 'Str');
  has Title => (is => 'ro', isa => 'Str');
  has UserName => (is => 'ro', isa => 'Str');
  has UserType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSOIdentityStore::CreateUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSOIdentityStore::CreateUser - Arguments for method CreateUser on L<Paws::SSOIdentityStore>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUser on the
L<AWS SSO Identity Store|Paws::SSOIdentityStore> service. Use the attributes of this class
as arguments to method CreateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUser.

=head1 SYNOPSIS

    my $identitystore = Paws->service('SSOIdentityStore');
    my $CreateUserResponse = $identitystore->CreateUser(
      IdentityStoreId => 'MyIdentityStoreId',
      Addresses       => [
        {
          Country    => 'MySensitiveStringType',   # min: 1, max: 1024; OPTIONAL
          Formatted  => 'MySensitiveStringType',   # min: 1, max: 1024; OPTIONAL
          Locality   => 'MySensitiveStringType',   # min: 1, max: 1024; OPTIONAL
          PostalCode => 'MySensitiveStringType',   # min: 1, max: 1024; OPTIONAL
          Primary    => 1,                         # OPTIONAL
          Region     => 'MySensitiveStringType',   # min: 1, max: 1024; OPTIONAL
          StreetAddress =>
            'MySensitiveStringType',               # min: 1, max: 1024; OPTIONAL
          Type => 'MySensitiveStringType',         # min: 1, max: 1024; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      DisplayName => 'MySensitiveStringType',    # OPTIONAL
      Emails      => [
        {
          Primary => 1,                          # OPTIONAL
          Type    => 'MySensitiveStringType',    # min: 1, max: 1024; OPTIONAL
          Value   => 'MySensitiveStringType',    # min: 1, max: 1024; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      Locale => 'MySensitiveStringType',    # OPTIONAL
      Name   => {
        FamilyName => 'MySensitiveStringType',    # min: 1, max: 1024; OPTIONAL
        Formatted  => 'MySensitiveStringType',    # min: 1, max: 1024; OPTIONAL
        GivenName  => 'MySensitiveStringType',    # min: 1, max: 1024; OPTIONAL
        HonorificPrefix =>
          'MySensitiveStringType',                # min: 1, max: 1024; OPTIONAL
        HonorificSuffix =>
          'MySensitiveStringType',                # min: 1, max: 1024; OPTIONAL
        MiddleName => 'MySensitiveStringType',    # min: 1, max: 1024; OPTIONAL
      },    # OPTIONAL
      NickName     => 'MySensitiveStringType',    # OPTIONAL
      PhoneNumbers => [
        {
          Primary => 1,                          # OPTIONAL
          Type    => 'MySensitiveStringType',    # min: 1, max: 1024; OPTIONAL
          Value   => 'MySensitiveStringType',    # min: 1, max: 1024; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      PreferredLanguage => 'MySensitiveStringType',    # OPTIONAL
      ProfileUrl        => 'MySensitiveStringType',    # OPTIONAL
      Timezone          => 'MySensitiveStringType',    # OPTIONAL
      Title             => 'MySensitiveStringType',    # OPTIONAL
      UserName          => 'MyUserName',               # OPTIONAL
      UserType          => 'MySensitiveStringType',    # OPTIONAL
    );

    # Results:
    my $IdentityStoreId = $CreateUserResponse->IdentityStoreId;
    my $UserId          = $CreateUserResponse->UserId;

    # Returns a L<Paws::SSOIdentityStore::CreateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/identitystore/CreateUser>

=head1 ATTRIBUTES


=head2 Addresses => ArrayRef[L<Paws::SSOIdentityStore::Address>]

A list of C<Address> objects containing addresses associated with the
user.



=head2 DisplayName => Str

A string containing the name of the user. This value is typically
formatted for display when the user is referenced. For example, "John
Doe."



=head2 Emails => ArrayRef[L<Paws::SSOIdentityStore::Email>]

A list of C<Email> objects containing email addresses associated with
the user.



=head2 B<REQUIRED> IdentityStoreId => Str

The globally unique identifier for the identity store.



=head2 Locale => Str

A string containing the geographical region or location of the user.



=head2 Name => L<Paws::SSOIdentityStore::Name>

An object containing the name of the user.



=head2 NickName => Str

A string containing an alternate name for the user.



=head2 PhoneNumbers => ArrayRef[L<Paws::SSOIdentityStore::PhoneNumber>]

A list of C<PhoneNumber> objects containing phone numbers associated
with the user.



=head2 PreferredLanguage => Str

A string containing the preferred language of the user. For example,
"American English" or "en-us."



=head2 ProfileUrl => Str

A string containing a URL that might be associated with the user.



=head2 Timezone => Str

A string containing the time zone of the user.



=head2 Title => Str

A string containing the title of the user. Possible values are left
unspecified. The value can vary based on your specific use case.



=head2 UserName => Str

A unique string used to identify the user. The length limit is 128
characters. This value can consist of letters, accented characters,
symbols, numbers, and punctuation. This value is specified at the time
the user is created and stored as an attribute of the user object in
the identity store. C<Administrator> and C<AWSAdministrators> are
reserved names and can't be used for users or groups.



=head2 UserType => Str

A string indicating the type of user. Possible values are left
unspecified. The value can vary based on your specific use case.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUser in L<Paws::SSOIdentityStore>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

