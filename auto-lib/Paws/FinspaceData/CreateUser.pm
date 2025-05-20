
package Paws::FinspaceData::CreateUser;
  use Moose;
  has ApiAccess => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiAccess');
  has ApiAccessPrincipalArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiAccessPrincipalArn');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has EmailAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'emailAddress', required => 1);
  has FirstName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'firstName');
  has LastName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastName');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/user');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::CreateUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::CreateUser - Arguments for method CreateUser on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUser on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method CreateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUser.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $CreateUserResponse = $finspace -api->CreateUser(
      EmailAddress          => 'MyEmail',
      Type                  => 'SUPER_USER',
      ApiAccess             => 'ENABLED',          # OPTIONAL
      ApiAccessPrincipalArn => 'MyRoleArn',        # OPTIONAL
      ClientToken           => 'MyClientToken',    # OPTIONAL
      FirstName             => 'MyFirstName',      # OPTIONAL
      LastName              => 'MyLastName',       # OPTIONAL
    );

    # Results:
    my $UserId = $CreateUserResponse->UserId;

    # Returns a L<Paws::FinspaceData::CreateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/CreateUser>

=head1 ATTRIBUTES


=head2 ApiAccess => Str

The option to indicate whether the user can use the
C<GetProgrammaticAccessCredentials> API to obtain credentials that can
then be used to access other FinSpace Data API operations.

=over

=item *

C<ENABLED> E<ndash> The user has permissions to use the APIs.

=item *

C<DISABLED> E<ndash> The user does not have permissions to use any
APIs.

=back


Valid values are: C<"ENABLED">, C<"DISABLED">

=head2 ApiAccessPrincipalArn => Str

The ARN identifier of an AWS user or role that is allowed to call the
C<GetProgrammaticAccessCredentials> API to obtain a credentials token
for a specific FinSpace user. This must be an IAM role within your
FinSpace account.



=head2 ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 B<REQUIRED> EmailAddress => Str

The email address of the user that you want to register. The email
address serves as a uniquer identifier for each user and cannot be
changed after it's created.



=head2 FirstName => Str

The first name of the user that you want to register.



=head2 LastName => Str

The last name of the user that you want to register.



=head2 B<REQUIRED> Type => Str

The option to indicate the type of user. Use one of the following
options to specify this parameter:

=over

=item *

C<SUPER_USER> E<ndash> A user with permission to all the functionality
and data in FinSpace.

=item *

C<APP_USER> E<ndash> A user with specific permissions in FinSpace. The
users are assigned permissions by adding them to a permission group.

=back


Valid values are: C<"SUPER_USER">, C<"APP_USER">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUser in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

