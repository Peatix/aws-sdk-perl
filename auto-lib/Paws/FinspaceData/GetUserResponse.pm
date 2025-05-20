
package Paws::FinspaceData::GetUserResponse;
  use Moose;
  has ApiAccess => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiAccess');
  has ApiAccessPrincipalArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'apiAccessPrincipalArn');
  has CreateTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'createTime');
  has EmailAddress => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'emailAddress');
  has FirstName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'firstName');
  has LastDisabledTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'lastDisabledTime');
  has LastEnabledTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'lastEnabledTime');
  has LastLoginTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'lastLoginTime');
  has LastModifiedTime => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'lastModifiedTime');
  has LastName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastName');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type');
  has UserId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userId');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::FinspaceData::GetUserResponse

=head1 ATTRIBUTES


=head2 ApiAccess => Str

Indicates whether the user can use the
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


=head2 CreateTime => Int

The timestamp at which the user was created in FinSpace. The value is
determined as epoch time in milliseconds.


=head2 EmailAddress => Str

The email address that is associated with the user.


=head2 FirstName => Str

The first name of the user.


=head2 LastDisabledTime => Int

Describes the last time the user was deactivated. The value is
determined as epoch time in milliseconds.


=head2 LastEnabledTime => Int

Describes the last time the user was activated. The value is determined
as epoch time in milliseconds.


=head2 LastLoginTime => Int

Describes the last time that the user logged into their account. The
value is determined as epoch time in milliseconds.


=head2 LastModifiedTime => Int

Describes the last time the user details were updated. The value is
determined as epoch time in milliseconds.


=head2 LastName => Str

The last name of the user.


=head2 Status => Str

The current status of the user.

=over

=item *

C<CREATING> E<ndash> The creation is in progress.

=item *

C<ENABLED> E<ndash> The user is created and is currently active.

=item *

C<DISABLED> E<ndash> The user is currently inactive.

=back


Valid values are: C<"CREATING">, C<"ENABLED">, C<"DISABLED">
=head2 Type => Str

Indicates the type of user.

=over

=item *

C<SUPER_USER> E<ndash> A user with permission to all the functionality
and data in FinSpace.

=back

=over

=item *

C<APP_USER> E<ndash> A user with specific permissions in FinSpace. The
users are assigned permissions by adding them to a permission group.

=back


Valid values are: C<"SUPER_USER">, C<"APP_USER">
=head2 UserId => Str

The unique identifier for the user that is retrieved.


=head2 _request_id => Str


=cut

