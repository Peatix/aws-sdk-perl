
package Paws::WorkMail::CreateUser;
  use Moose;
  has DisplayName => (is => 'ro', isa => 'Str', required => 1);
  has FirstName => (is => 'ro', isa => 'Str');
  has HiddenFromGlobalAddressList => (is => 'ro', isa => 'Bool');
  has IdentityProviderUserId => (is => 'ro', isa => 'Str');
  has LastName => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has OrganizationId => (is => 'ro', isa => 'Str', required => 1);
  has Password => (is => 'ro', isa => 'Str');
  has Role => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::WorkMail::CreateUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WorkMail::CreateUser - Arguments for method CreateUser on L<Paws::WorkMail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUser on the
L<Amazon WorkMail|Paws::WorkMail> service. Use the attributes of this class
as arguments to method CreateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUser.

=head1 SYNOPSIS

    my $workmail = Paws->service('WorkMail');
    my $CreateUserResponse = $workmail->CreateUser(
      DisplayName                 => 'MyUserAttribute',
      Name                        => 'MyUserName',
      OrganizationId              => 'MyOrganizationId',
      FirstName                   => 'MyUserAttribute',             # OPTIONAL
      HiddenFromGlobalAddressList => 1,                             # OPTIONAL
      IdentityProviderUserId      => 'MyIdentityProviderUserId',    # OPTIONAL
      LastName                    => 'MyUserAttribute',             # OPTIONAL
      Password                    => 'MyPassword',                  # OPTIONAL
      Role                        => 'USER',                        # OPTIONAL
    );

    # Results:
    my $UserId = $CreateUserResponse->UserId;

    # Returns a L<Paws::WorkMail::CreateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/workmail/CreateUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DisplayName => Str

The display name for the new user.



=head2 FirstName => Str

The first name of the new user.



=head2 HiddenFromGlobalAddressList => Bool

If this parameter is enabled, the user will be hidden from the address
book.



=head2 IdentityProviderUserId => Str

User ID from the IAM Identity Center. If this parameter is empty it
will be updated automatically when the user logs in for the first time
to the mailbox associated with WorkMail.



=head2 LastName => Str

The last name of the new user.



=head2 B<REQUIRED> Name => Str

The name for the new user. WorkMail directory user names have a maximum
length of 64. All others have a maximum length of 20.



=head2 B<REQUIRED> OrganizationId => Str

The identifier of the organization for which the user is created.



=head2 Password => Str

The password for the new user.



=head2 Role => Str

The role of the new user.

You cannot pass I<SYSTEM_USER> or I<RESOURCE> role in a single request.
When a user role is not selected, the default role of I<USER> is
selected.

Valid values are: C<"USER">, C<"RESOURCE">, C<"SYSTEM_USER">, C<"REMOTE_USER">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUser in L<Paws::WorkMail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

