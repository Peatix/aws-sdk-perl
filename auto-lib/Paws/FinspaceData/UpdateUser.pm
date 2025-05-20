
package Paws::FinspaceData::UpdateUser;
  use Moose;
  has ApiAccess => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiAccess');
  has ApiAccessPrincipalArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiAccessPrincipalArn');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has FirstName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'firstName');
  has LastName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastName');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'userId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/user/{userId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::FinspaceData::UpdateUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::UpdateUser - Arguments for method UpdateUser on L<Paws::FinspaceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUser on the
L<FinSpace Public API|Paws::FinspaceData> service. Use the attributes of this class
as arguments to method UpdateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUser.

=head1 SYNOPSIS

    my $finspace-api = Paws->service('FinspaceData');
    my $UpdateUserResponse = $finspace -api->UpdateUser(
      UserId                => 'MyUserId',
      ApiAccess             => 'ENABLED',          # OPTIONAL
      ApiAccessPrincipalArn => 'MyRoleArn',        # OPTIONAL
      ClientToken           => 'MyClientToken',    # OPTIONAL
      FirstName             => 'MyFirstName',      # OPTIONAL
      LastName              => 'MyLastName',       # OPTIONAL
      Type                  => 'SUPER_USER',       # OPTIONAL
    );

    # Results:
    my $UserId = $UpdateUserResponse->UserId;

    # Returns a L<Paws::FinspaceData::UpdateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace-api/UpdateUser>

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



=head2 FirstName => Str

The first name of the user.



=head2 LastName => Str

The last name of the user.



=head2 Type => Str

The option to indicate the type of user.

=over

=item *

C<SUPER_USER>E<ndash> A user with permission to all the functionality
and data in FinSpace.

=item *

C<APP_USER> E<ndash> A user with specific permissions in FinSpace. The
users are assigned permissions by adding them to a permission group.

=back


Valid values are: C<"SUPER_USER">, C<"APP_USER">

=head2 B<REQUIRED> UserId => Str

The unique identifier for the user that you want to update.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUser in L<Paws::FinspaceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

