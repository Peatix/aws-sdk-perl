package Paws::Chime;
  use Moose;
  sub service { 'chime' }
  sub signing_name { 'chime' }
  sub version { '2018-05-01' }
  sub flattened_arrays { 0 }
  has max_attempts => (is => 'ro', isa => 'Int', default => 5);
  has retry => (is => 'ro', isa => 'HashRef', default => sub {
    { base => 'rand', type => 'exponential', growth_factor => 2 }
  });
  has retriables => (is => 'ro', isa => 'ArrayRef', default => sub { [
  ] });

  with 'Paws::API::Caller', 'Paws::API::EndpointResolver', 'Paws::Net::V4Signature', 'Paws::Net::RestJsonCaller';

  
  sub AssociatePhoneNumberWithUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::AssociatePhoneNumberWithUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub AssociateSigninDelegateGroupsWithAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::AssociateSigninDelegateGroupsWithAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchCreateRoomMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::BatchCreateRoomMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchDeletePhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::BatchDeletePhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchSuspendUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::BatchSuspendUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUnsuspendUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::BatchUnsuspendUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdatePhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::BatchUpdatePhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub BatchUpdateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::BatchUpdateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateMeetingDialOut {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateMeetingDialOut', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreatePhoneNumberOrder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreatePhoneNumberOrder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateRoomMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateRoomMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub CreateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::CreateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteEventsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteEventsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeletePhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeletePhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DeleteRoomMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DeleteRoomMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociatePhoneNumberFromUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DisassociatePhoneNumberFromUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub DisassociateSigninDelegateGroupsFromAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::DisassociateSigninDelegateGroupsFromAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetEventsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetEventsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetGlobalSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetGlobalSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetPhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPhoneNumberOrder {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetPhoneNumberOrder', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetPhoneNumberSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetPhoneNumberSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRetentionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetRetentionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub GetUserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::GetUserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub InviteUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::InviteUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListAccounts {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListAccounts', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListBots {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListBots', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPhoneNumberOrders {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListPhoneNumberOrders', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListPhoneNumbers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListPhoneNumbers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRoomMemberships {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListRoomMemberships', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListRooms {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListRooms', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListSupportedPhoneNumberCountries {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListSupportedPhoneNumberCountries', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ListUsers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ListUsers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub LogoutUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::LogoutUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutEventsConfiguration {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::PutEventsConfiguration', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub PutRetentionSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::PutRetentionSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RedactConversationMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::RedactConversationMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RedactRoomMessage {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::RedactRoomMessage', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RegenerateSecurityToken {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::RegenerateSecurityToken', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub ResetPersonalPIN {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::ResetPersonalPIN', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub RestorePhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::RestorePhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub SearchAvailablePhoneNumbers {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::SearchAvailablePhoneNumbers', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccount {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateAccount', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateAccountSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateAccountSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateBot {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateBot', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateGlobalSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateGlobalSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePhoneNumber {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdatePhoneNumber', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdatePhoneNumberSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdatePhoneNumberSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoom {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateRoom', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateRoomMembership {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateRoomMembership', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUser {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateUser', @_);
    return $self->caller->do_call($self, $call_object);
  }
  sub UpdateUserSettings {
    my $self = shift;
    my $call_object = $self->new_with_coercions('Paws::Chime::UpdateUserSettings', @_);
    return $self->caller->do_call($self, $call_object);
  }
  
  sub ListAllAccounts {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListAccounts(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListAccounts(@_, NextToken => $next_result->NextToken);
        push @{ $result->Accounts }, @{ $next_result->Accounts };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Accounts') foreach (@{ $result->Accounts });
        $result = $self->ListAccounts(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Accounts') foreach (@{ $result->Accounts });
    }

    return undef
  }
  sub ListAllUsers {
    my $self = shift;

    my $callback = shift @_ if (ref($_[0]) eq 'CODE');
    my $result = $self->ListUsers(@_);
    my $next_result = $result;

    if (not defined $callback) {
      while ($next_result->NextToken) {
        $next_result = $self->ListUsers(@_, NextToken => $next_result->NextToken);
        push @{ $result->Users }, @{ $next_result->Users };
      }
      return $result;
    } else {
      while ($result->NextToken) {
        $callback->($_ => 'Users') foreach (@{ $result->Users });
        $result = $self->ListUsers(@_, NextToken => $result->NextToken);
      }
      $callback->($_ => 'Users') foreach (@{ $result->Users });
    }

    return undef
  }


  sub operations { qw/AssociatePhoneNumberWithUser AssociateSigninDelegateGroupsWithAccount BatchCreateRoomMembership BatchDeletePhoneNumber BatchSuspendUser BatchUnsuspendUser BatchUpdatePhoneNumber BatchUpdateUser CreateAccount CreateBot CreateMeetingDialOut CreatePhoneNumberOrder CreateRoom CreateRoomMembership CreateUser DeleteAccount DeleteEventsConfiguration DeletePhoneNumber DeleteRoom DeleteRoomMembership DisassociatePhoneNumberFromUser DisassociateSigninDelegateGroupsFromAccount GetAccount GetAccountSettings GetBot GetEventsConfiguration GetGlobalSettings GetPhoneNumber GetPhoneNumberOrder GetPhoneNumberSettings GetRetentionSettings GetRoom GetUser GetUserSettings InviteUsers ListAccounts ListBots ListPhoneNumberOrders ListPhoneNumbers ListRoomMemberships ListRooms ListSupportedPhoneNumberCountries ListUsers LogoutUser PutEventsConfiguration PutRetentionSettings RedactConversationMessage RedactRoomMessage RegenerateSecurityToken ResetPersonalPIN RestorePhoneNumber SearchAvailablePhoneNumbers UpdateAccount UpdateAccountSettings UpdateBot UpdateGlobalSettings UpdatePhoneNumber UpdatePhoneNumberSettings UpdateRoom UpdateRoomMembership UpdateUser UpdateUserSettings / }

1;

### main pod documentation begin ###

=head1 NAME

Paws::Chime - Perl Interface to AWS Amazon Chime

=head1 SYNOPSIS

  use Paws;

  my $obj = Paws->service('Chime');
  my $res = $obj->Method(
    Arg1 => $val1,
    Arg2 => [ 'V1', 'V2' ],
    # if Arg3 is an object, the HashRef will be used as arguments to the constructor
    # of the arguments type
    Arg3 => { Att1 => 'Val1' },
    # if Arg4 is an array of objects, the HashRefs will be passed as arguments to
    # the constructor of the arguments type
    Arg4 => [ { Att1 => 'Val1'  }, { Att1 => 'Val2' } ],
  );

=head1 DESCRIPTION

B<Most of these APIs are no longer supported and will not be updated.>
We recommend using the latest versions in the Amazon Chime SDK API
reference
(https://docs.aws.amazon.com/chime-sdk/latest/APIReference/welcome.html),
in the Amazon Chime SDK.

Using the latest versions requires migrating to dedicated namespaces.
For more information, refer to Migrating from the Amazon Chime
namespace
(https://docs.aws.amazon.com/chime-sdk/latest/dg/migrate-from-chm-namespace.html)
in the I<Amazon Chime SDK Developer Guide>.

The Amazon Chime application programming interface (API) is designed so
administrators can perform key tasks, such as creating and managing
Amazon Chime accounts, users, and Voice Connectors. This guide provides
detailed information about the Amazon Chime API, including operations,
types, inputs and outputs, and error codes.

You can use an AWS SDK, the AWS Command Line Interface (AWS CLI), or
the REST API to make API calls for Amazon Chime. We recommend using an
AWS SDK or the AWS CLI. The page for each API action contains a I<See
Also> section that includes links to information about using the action
with a language-specific AWS SDK or the AWS CLI.

=over

=item Using an AWS SDK

You don't need to write code to calculate a signature for request
authentication. The SDK clients authenticate your requests by using
access keys that you provide. For more information about AWS SDKs, see
the AWS Developer Center (http://aws.amazon.com/developer/).

=item Using the AWS CLI

Use your access keys with the AWS CLI to make API calls. For
information about setting up the AWS CLI, see Installing the AWS
Command Line Interface
(https://docs.aws.amazon.com/cli/latest/userguide/installing.html) in
the I<AWS Command Line Interface User Guide>. For a list of available
Amazon Chime commands, see the Amazon Chime commands
(https://docs.aws.amazon.com/cli/latest/reference/chime/index.html) in
the I<AWS CLI Command Reference>.

=item Using REST APIs

If you use REST to make API calls, you must authenticate your request
by providing a signature. Amazon Chime supports Signature Version 4.
For more information, see Signature Version 4 Signing Process
(https://docs.aws.amazon.com/general/latest/gr/signature-version-4.html)
in the I<Amazon Web Services General Reference>.

When making REST API calls, use the service name C<chime> and REST
endpoint C<https://service.chime.aws.amazon.com>.

=back

Administrative permissions are controlled using AWS Identity and Access
Management (IAM). For more information, see Identity and Access
Management for Amazon Chime
(https://docs.aws.amazon.com/chime/latest/ag/security-iam.html) in the
I<Amazon Chime Administration Guide>.

For the AWS API documentation, see L<https://aws.amazon.com/documentation/>


=head1 METHODS

=head2 AssociatePhoneNumberWithUser

=over

=item AccountId => Str

=item E164PhoneNumber => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Chime::AssociatePhoneNumberWithUser>

Returns: a L<Paws::Chime::AssociatePhoneNumberWithUserResponse> instance

Associates a phone number with the specified Amazon Chime user.


=head2 AssociateSigninDelegateGroupsWithAccount

=over

=item AccountId => Str

=item SigninDelegateGroups => ArrayRef[L<Paws::Chime::SigninDelegateGroup>]


=back

Each argument is described in detail in: L<Paws::Chime::AssociateSigninDelegateGroupsWithAccount>

Returns: a L<Paws::Chime::AssociateSigninDelegateGroupsWithAccountResponse> instance

Associates the specified sign-in delegate groups with the specified
Amazon Chime account.


=head2 BatchCreateRoomMembership

=over

=item AccountId => Str

=item MembershipItemList => ArrayRef[L<Paws::Chime::MembershipItem>]

=item RoomId => Str


=back

Each argument is described in detail in: L<Paws::Chime::BatchCreateRoomMembership>

Returns: a L<Paws::Chime::BatchCreateRoomMembershipResponse> instance

Adds up to 50 members to a chat room in an Amazon Chime Enterprise
account. Members can be users or bots. The member role designates
whether the member is a chat room administrator or a general chat room
member.


=head2 BatchDeletePhoneNumber

=over

=item PhoneNumberIds => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Chime::BatchDeletePhoneNumber>

Returns: a L<Paws::Chime::BatchDeletePhoneNumberResponse> instance

Moves phone numbers into the B<Deletion queue>. Phone numbers must be
disassociated from any users or Amazon Chime Voice Connectors before
they can be deleted.

Phone numbers remain in the B<Deletion queue> for 7 days before they
are deleted permanently.


=head2 BatchSuspendUser

=over

=item AccountId => Str

=item UserIdList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Chime::BatchSuspendUser>

Returns: a L<Paws::Chime::BatchSuspendUserResponse> instance

Suspends up to 50 users from a C<Team> or C<EnterpriseLWA> Amazon Chime
account. For more information about different account types, see
Managing Your Amazon Chime Accounts
(https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html)
in the I<Amazon Chime Administration Guide>.

Users suspended from a C<Team> account are disassociated from the
account,but they can continue to use Amazon Chime as free users. To
remove the suspension from suspended C<Team> account users, invite them
to the C<Team> account again. You can use the InviteUsers action to do
so.

Users suspended from an C<EnterpriseLWA> account are immediately signed
out of Amazon Chime and can no longer sign in. To remove the suspension
from suspended C<EnterpriseLWA> account users, use the
BatchUnsuspendUser action.

To sign out users without suspending them, use the LogoutUser action.


=head2 BatchUnsuspendUser

=over

=item AccountId => Str

=item UserIdList => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Chime::BatchUnsuspendUser>

Returns: a L<Paws::Chime::BatchUnsuspendUserResponse> instance

Removes the suspension from up to 50 previously suspended users for the
specified Amazon Chime C<EnterpriseLWA> account. Only users on
C<EnterpriseLWA> accounts can be unsuspended using this action. For
more information about different account types, see Managing Your
Amazon Chime Accounts
(https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html)
in the account types, in the I<Amazon Chime Administration Guide>.

Previously suspended users who are unsuspended using this action are
returned to C<Registered> status. Users who are not previously
suspended are ignored.


=head2 BatchUpdatePhoneNumber

=over

=item UpdatePhoneNumberRequestItems => ArrayRef[L<Paws::Chime::UpdatePhoneNumberRequestItem>]


=back

Each argument is described in detail in: L<Paws::Chime::BatchUpdatePhoneNumber>

Returns: a L<Paws::Chime::BatchUpdatePhoneNumberResponse> instance

Updates phone number product types or calling names. You can update one
attribute at a time for each C<UpdatePhoneNumberRequestItem>. For
example, you can update the product type or the calling name.

For toll-free numbers, you cannot use the Amazon Chime Business Calling
product type. For numbers outside the U.S., you must use the Amazon
Chime SIP Media Application Dial-In product type.

Updates to outbound calling names can take up to 72 hours to complete.
Pending updates to outbound calling names must be complete before you
can request another update.


=head2 BatchUpdateUser

=over

=item AccountId => Str

=item UpdateUserRequestItems => ArrayRef[L<Paws::Chime::UpdateUserRequestItem>]


=back

Each argument is described in detail in: L<Paws::Chime::BatchUpdateUser>

Returns: a L<Paws::Chime::BatchUpdateUserResponse> instance

Updates user details within the UpdateUserRequestItem object for up to
20 users for the specified Amazon Chime account. Currently, only
C<LicenseType> updates are supported for this action.


=head2 CreateAccount

=over

=item Name => Str


=back

Each argument is described in detail in: L<Paws::Chime::CreateAccount>

Returns: a L<Paws::Chime::CreateAccountResponse> instance

Creates an Amazon Chime account under the administrator's AWS account.
Only C<Team> account types are currently supported for this action. For
more information about different account types, see Managing Your
Amazon Chime Accounts
(https://docs.aws.amazon.com/chime/latest/ag/manage-chime-account.html)
in the I<Amazon Chime Administration Guide>.


=head2 CreateBot

=over

=item AccountId => Str

=item DisplayName => Str

=item [Domain => Str]


=back

Each argument is described in detail in: L<Paws::Chime::CreateBot>

Returns: a L<Paws::Chime::CreateBotResponse> instance

Creates a bot for an Amazon Chime Enterprise account.


=head2 CreateMeetingDialOut

=over

=item FromPhoneNumber => Str

=item JoinToken => Str

=item MeetingId => Str

=item ToPhoneNumber => Str


=back

Each argument is described in detail in: L<Paws::Chime::CreateMeetingDialOut>

Returns: a L<Paws::Chime::CreateMeetingDialOutResponse> instance

Uses the join token and call metadata in a meeting request (From
number, To number, and so forth) to initiate an outbound call to a
public switched telephone network (PSTN) and join them into a Chime
meeting. Also ensures that the From number belongs to the customer.

To play welcome audio or implement an interactive voice response (IVR),
use the C<CreateSipMediaApplicationCall> action with the corresponding
SIP media application ID.

B<This API is not available in a dedicated namespace.>


=head2 CreatePhoneNumberOrder

=over

=item E164PhoneNumbers => ArrayRef[Str|Undef]

=item ProductType => Str


=back

Each argument is described in detail in: L<Paws::Chime::CreatePhoneNumberOrder>

Returns: a L<Paws::Chime::CreatePhoneNumberOrderResponse> instance

Creates an order for phone numbers to be provisioned. For toll-free
numbers, you cannot use the Amazon Chime Business Calling product type.
For numbers outside the U.S., you must use the Amazon Chime SIP Media
Application Dial-In product type.


=head2 CreateRoom

=over

=item AccountId => Str

=item Name => Str

=item [ClientRequestToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::CreateRoom>

Returns: a L<Paws::Chime::CreateRoomResponse> instance

Creates a chat room for the specified Amazon Chime Enterprise account.


=head2 CreateRoomMembership

=over

=item AccountId => Str

=item MemberId => Str

=item RoomId => Str

=item [Role => Str]


=back

Each argument is described in detail in: L<Paws::Chime::CreateRoomMembership>

Returns: a L<Paws::Chime::CreateRoomMembershipResponse> instance

Adds a member to a chat room in an Amazon Chime Enterprise account. A
member can be either a user or a bot. The member role designates
whether the member is a chat room administrator or a general chat room
member.


=head2 CreateUser

=over

=item AccountId => Str

=item [Email => Str]

=item [Username => Str]

=item [UserType => Str]


=back

Each argument is described in detail in: L<Paws::Chime::CreateUser>

Returns: a L<Paws::Chime::CreateUserResponse> instance

Creates a user under the specified Amazon Chime account.


=head2 DeleteAccount

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteAccount>

Returns: a L<Paws::Chime::DeleteAccountResponse> instance

Deletes the specified Amazon Chime account. You must suspend all users
before deleting C<Team> account. You can use the BatchSuspendUser
action to dodo.

For C<EnterpriseLWA> and C<EnterpriseAD> accounts, you must release the
claimed domains for your Amazon Chime account before deletion. As soon
as you release the domain, all users under that account are suspended.

Deleted accounts appear in your C<Disabled> accounts list for 90 days.
To restore deleted account from your C<Disabled> accounts list, you
must contact AWS Support.

After 90 days, deleted accounts are permanently removed from your
C<Disabled> accounts list.


=head2 DeleteEventsConfiguration

=over

=item AccountId => Str

=item BotId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteEventsConfiguration>

Returns: nothing

Deletes the events configuration that allows a bot to receive outgoing
events.


=head2 DeletePhoneNumber

=over

=item PhoneNumberId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeletePhoneNumber>

Returns: nothing

Moves the specified phone number into the B<Deletion queue>. A phone
number must be disassociated from any users or Amazon Chime Voice
Connectors before it can be deleted.

Deleted phone numbers remain in the B<Deletion queue> for 7 days before
they are deleted permanently.


=head2 DeleteRoom

=over

=item AccountId => Str

=item RoomId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteRoom>

Returns: nothing

Deletes a chat room in an Amazon Chime Enterprise account.


=head2 DeleteRoomMembership

=over

=item AccountId => Str

=item MemberId => Str

=item RoomId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DeleteRoomMembership>

Returns: nothing

Removes a member from a chat room in an Amazon Chime Enterprise
account.


=head2 DisassociatePhoneNumberFromUser

=over

=item AccountId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Chime::DisassociatePhoneNumberFromUser>

Returns: a L<Paws::Chime::DisassociatePhoneNumberFromUserResponse> instance

Disassociates the primary provisioned phone number from the specified
Amazon Chime user.


=head2 DisassociateSigninDelegateGroupsFromAccount

=over

=item AccountId => Str

=item GroupNames => ArrayRef[Str|Undef]


=back

Each argument is described in detail in: L<Paws::Chime::DisassociateSigninDelegateGroupsFromAccount>

Returns: a L<Paws::Chime::DisassociateSigninDelegateGroupsFromAccountResponse> instance

Disassociates the specified sign-in delegate groups from the specified
Amazon Chime account.


=head2 GetAccount

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetAccount>

Returns: a L<Paws::Chime::GetAccountResponse> instance

Retrieves details for the specified Amazon Chime account, such as
account type and supported licenses.


=head2 GetAccountSettings

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetAccountSettings>

Returns: a L<Paws::Chime::GetAccountSettingsResponse> instance

Retrieves account settings for the specified Amazon Chime account ID,
such as remote control and dialout settings. For more information about
these settings, see Use the Policies Page
(https://docs.aws.amazon.com/chime/latest/ag/policies.html) in the
I<Amazon Chime Administration Guide>.


=head2 GetBot

=over

=item AccountId => Str

=item BotId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetBot>

Returns: a L<Paws::Chime::GetBotResponse> instance

Retrieves details for the specified bot, such as bot email address, bot
type, status, and display name.


=head2 GetEventsConfiguration

=over

=item AccountId => Str

=item BotId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetEventsConfiguration>

Returns: a L<Paws::Chime::GetEventsConfigurationResponse> instance

Gets details for an events configuration that allows a bot to receive
outgoing events, such as an HTTPS endpoint or Lambda function ARN.


=head2 GetGlobalSettings

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Chime::GetGlobalSettings>

Returns: a L<Paws::Chime::GetGlobalSettingsResponse> instance

Retrieves global settings for the administrator's AWS account, such as
Amazon Chime Business Calling and Amazon Chime Voice Connector
settings.


=head2 GetPhoneNumber

=over

=item PhoneNumberId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetPhoneNumber>

Returns: a L<Paws::Chime::GetPhoneNumberResponse> instance

Retrieves details for the specified phone number ID, such as
associations, capabilities, and product type.


=head2 GetPhoneNumberOrder

=over

=item PhoneNumberOrderId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetPhoneNumberOrder>

Returns: a L<Paws::Chime::GetPhoneNumberOrderResponse> instance

Retrieves details for the specified phone number order, such as the
order creation timestamp, phone numbers in E.164 format, product type,
and order status.


=head2 GetPhoneNumberSettings

=over

=item  => 


=back

Each argument is described in detail in: L<Paws::Chime::GetPhoneNumberSettings>

Returns: a L<Paws::Chime::GetPhoneNumberSettingsResponse> instance

Retrieves the phone number settings for the administrator's AWS
account, such as the default outbound calling name.


=head2 GetRetentionSettings

=over

=item AccountId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetRetentionSettings>

Returns: a L<Paws::Chime::GetRetentionSettingsResponse> instance

Gets the retention settings for the specified Amazon Chime Enterprise
account. For more information about retention settings, see Managing
Chat Retention Policies
(https://docs.aws.amazon.com/chime/latest/ag/chat-retention.html) in
the I<Amazon Chime Administration Guide>.


=head2 GetRoom

=over

=item AccountId => Str

=item RoomId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetRoom>

Returns: a L<Paws::Chime::GetRoomResponse> instance

Retrieves room details, such as the room name, for a room in an Amazon
Chime Enterprise account.


=head2 GetUser

=over

=item AccountId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetUser>

Returns: a L<Paws::Chime::GetUserResponse> instance

Retrieves details for the specified user ID, such as primary email
address, license type,and personal meeting PIN.

To retrieve user details with an email address instead of a user ID,
use the ListUsers action, and then filter by email address.


=head2 GetUserSettings

=over

=item AccountId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Chime::GetUserSettings>

Returns: a L<Paws::Chime::GetUserSettingsResponse> instance

Retrieves settings for the specified user ID, such as any associated
phone number settings.


=head2 InviteUsers

=over

=item AccountId => Str

=item UserEmailList => ArrayRef[Str|Undef]

=item [UserType => Str]


=back

Each argument is described in detail in: L<Paws::Chime::InviteUsers>

Returns: a L<Paws::Chime::InviteUsersResponse> instance

Sends email to a maximum of 50 users, inviting them to the specified
Amazon Chime C<Team> account. Only C<Team> account types are currently
supported for this action.


=head2 ListAccounts

=over

=item [MaxResults => Int]

=item [Name => Str]

=item [NextToken => Str]

=item [UserEmail => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListAccounts>

Returns: a L<Paws::Chime::ListAccountsResponse> instance

Lists the Amazon Chime accounts under the administrator's AWS account.
You can filter accounts by account name prefix. To find out which
Amazon Chime account a user belongs to, you can filter by the user's
email address, which returns one account result.


=head2 ListBots

=over

=item AccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListBots>

Returns: a L<Paws::Chime::ListBotsResponse> instance

Lists the bots associated with the administrator's Amazon Chime
Enterprise account ID.


=head2 ListPhoneNumberOrders

=over

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListPhoneNumberOrders>

Returns: a L<Paws::Chime::ListPhoneNumberOrdersResponse> instance

Lists the phone number orders for the administrator's Amazon Chime
account.


=head2 ListPhoneNumbers

=over

=item [FilterName => Str]

=item [FilterValue => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [ProductType => Str]

=item [Status => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListPhoneNumbers>

Returns: a L<Paws::Chime::ListPhoneNumbersResponse> instance

Lists the phone numbers for the specified Amazon Chime account, Amazon
Chime user, Amazon Chime Voice Connector, or Amazon Chime Voice
Connector group.


=head2 ListRoomMemberships

=over

=item AccountId => Str

=item RoomId => Str

=item [MaxResults => Int]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListRoomMemberships>

Returns: a L<Paws::Chime::ListRoomMembershipsResponse> instance

Lists the membership details for the specified room in an Amazon Chime
Enterprise account, such as the members' IDs, email addresses, and
names.


=head2 ListRooms

=over

=item AccountId => Str

=item [MaxResults => Int]

=item [MemberId => Str]

=item [NextToken => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListRooms>

Returns: a L<Paws::Chime::ListRoomsResponse> instance

Lists the room details for the specified Amazon Chime Enterprise
account. Optionally, filter the results by a member ID (user ID or bot
ID) to see a list of rooms that the member belongs to.


=head2 ListSupportedPhoneNumberCountries

=over

=item ProductType => Str


=back

Each argument is described in detail in: L<Paws::Chime::ListSupportedPhoneNumberCountries>

Returns: a L<Paws::Chime::ListSupportedPhoneNumberCountriesResponse> instance

Lists supported phone number countries.


=head2 ListUsers

=over

=item AccountId => Str

=item [MaxResults => Int]

=item [NextToken => Str]

=item [UserEmail => Str]

=item [UserType => Str]


=back

Each argument is described in detail in: L<Paws::Chime::ListUsers>

Returns: a L<Paws::Chime::ListUsersResponse> instance

Lists the users that belong to the specified Amazon Chime account. You
can specify an email address to list only the user that the email
address belongs to.


=head2 LogoutUser

=over

=item AccountId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Chime::LogoutUser>

Returns: a L<Paws::Chime::LogoutUserResponse> instance

Logs out the specified user from all of the devices they are currently
logged into.


=head2 PutEventsConfiguration

=over

=item AccountId => Str

=item BotId => Str

=item [LambdaFunctionArn => Str]

=item [OutboundEventsHTTPSEndpoint => Str]


=back

Each argument is described in detail in: L<Paws::Chime::PutEventsConfiguration>

Returns: a L<Paws::Chime::PutEventsConfigurationResponse> instance

Creates an events configuration that allows a bot to receive outgoing
events sent by Amazon Chime. Choose either an HTTPS endpoint or a
Lambda function ARN. For more information, see Bot.


=head2 PutRetentionSettings

=over

=item AccountId => Str

=item RetentionSettings => L<Paws::Chime::RetentionSettings>


=back

Each argument is described in detail in: L<Paws::Chime::PutRetentionSettings>

Returns: a L<Paws::Chime::PutRetentionSettingsResponse> instance

Puts retention settings for the specified Amazon Chime Enterprise
account. We recommend using AWS CloudTrail to monitor usage of this API
for your account. For more information, see Logging Amazon Chime API
Calls with AWS CloudTrail
(https://docs.aws.amazon.com/chime/latest/ag/cloudtrail.html) in the
I<Amazon Chime Administration Guide>.

To turn off existing retention settings, remove the number of days from
the corresponding B<RetentionDays> field in the B<RetentionSettings>
object. For more information about retention settings, see Managing
Chat Retention Policies
(https://docs.aws.amazon.com/chime/latest/ag/chat-retention.html) in
the I<Amazon Chime Administration Guide>.


=head2 RedactConversationMessage

=over

=item AccountId => Str

=item ConversationId => Str

=item MessageId => Str


=back

Each argument is described in detail in: L<Paws::Chime::RedactConversationMessage>

Returns: a L<Paws::Chime::RedactConversationMessageResponse> instance

Redacts the specified message from the specified Amazon Chime
conversation.


=head2 RedactRoomMessage

=over

=item AccountId => Str

=item MessageId => Str

=item RoomId => Str


=back

Each argument is described in detail in: L<Paws::Chime::RedactRoomMessage>

Returns: a L<Paws::Chime::RedactRoomMessageResponse> instance

Redacts the specified message from the specified Amazon Chime channel.


=head2 RegenerateSecurityToken

=over

=item AccountId => Str

=item BotId => Str


=back

Each argument is described in detail in: L<Paws::Chime::RegenerateSecurityToken>

Returns: a L<Paws::Chime::RegenerateSecurityTokenResponse> instance

Regenerates the security token for a bot.


=head2 ResetPersonalPIN

=over

=item AccountId => Str

=item UserId => Str


=back

Each argument is described in detail in: L<Paws::Chime::ResetPersonalPIN>

Returns: a L<Paws::Chime::ResetPersonalPINResponse> instance

Resets the personal meeting PIN for the specified user on an Amazon
Chime account. Returns the User object with the updated personal
meeting PIN.


=head2 RestorePhoneNumber

=over

=item PhoneNumberId => Str


=back

Each argument is described in detail in: L<Paws::Chime::RestorePhoneNumber>

Returns: a L<Paws::Chime::RestorePhoneNumberResponse> instance

Moves a phone number from the B<Deletion queue> back into the phone
number B<Inventory>.


=head2 SearchAvailablePhoneNumbers

=over

=item [AreaCode => Str]

=item [City => Str]

=item [Country => Str]

=item [MaxResults => Int]

=item [NextToken => Str]

=item [PhoneNumberType => Str]

=item [State => Str]

=item [TollFreePrefix => Str]


=back

Each argument is described in detail in: L<Paws::Chime::SearchAvailablePhoneNumbers>

Returns: a L<Paws::Chime::SearchAvailablePhoneNumbersResponse> instance

Searches for phone numbers that can be ordered. For US numbers, provide
at least one of the following search filters: C<AreaCode>, C<City>,
C<State>, or C<TollFreePrefix>. If you provide C<City>, you must also
provide C<State>. Numbers outside the US only support the
C<PhoneNumberType> filter, which you must use.


=head2 UpdateAccount

=over

=item AccountId => Str

=item [DefaultLicense => Str]

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateAccount>

Returns: a L<Paws::Chime::UpdateAccountResponse> instance

Updates account details for the specified Amazon Chime account.
Currently, only account name and default license updates are supported
for this action.


=head2 UpdateAccountSettings

=over

=item AccountId => Str

=item AccountSettings => L<Paws::Chime::AccountSettings>


=back

Each argument is described in detail in: L<Paws::Chime::UpdateAccountSettings>

Returns: a L<Paws::Chime::UpdateAccountSettingsResponse> instance

Updates the settings for the specified Amazon Chime account. You can
update settings for remote control of shared screens, or for the
dial-out option. For more information about these settings, see Use the
Policies Page
(https://docs.aws.amazon.com/chime/latest/ag/policies.html) in the
I<Amazon Chime Administration Guide>.


=head2 UpdateBot

=over

=item AccountId => Str

=item BotId => Str

=item [Disabled => Bool]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateBot>

Returns: a L<Paws::Chime::UpdateBotResponse> instance

Updates the status of the specified bot, such as starting or stopping
the bot from running in your Amazon Chime Enterprise account.


=head2 UpdateGlobalSettings

=over

=item [BusinessCalling => L<Paws::Chime::BusinessCallingSettings>]

=item [VoiceConnector => L<Paws::Chime::VoiceConnectorSettings>]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateGlobalSettings>

Returns: nothing

Updates global settings for the administrator's AWS account, such as
Amazon Chime Business Calling and Amazon Chime Voice Connector
settings.


=head2 UpdatePhoneNumber

=over

=item PhoneNumberId => Str

=item [CallingName => Str]

=item [ProductType => Str]


=back

Each argument is described in detail in: L<Paws::Chime::UpdatePhoneNumber>

Returns: a L<Paws::Chime::UpdatePhoneNumberResponse> instance

Updates phone number details, such as product type or calling name, for
the specified phone number ID. You can update one phone number detail
at a time. For example, you can update either the product type or the
calling name in one action.

For toll-free numbers, you cannot use the Amazon Chime Business Calling
product type. For numbers outside the U.S., you must use the Amazon
Chime SIP Media Application Dial-In product type.

Updates to outbound calling names can take 72 hours to complete.
Pending updates to outbound calling names must be complete before you
can request another update.


=head2 UpdatePhoneNumberSettings

=over

=item CallingName => Str


=back

Each argument is described in detail in: L<Paws::Chime::UpdatePhoneNumberSettings>

Returns: nothing

Updates the phone number settings for the administrator's AWS account,
such as the default outbound calling name. You can update the default
outbound calling name once every seven days. Outbound calling names can
take up to 72 hours to update.


=head2 UpdateRoom

=over

=item AccountId => Str

=item RoomId => Str

=item [Name => Str]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateRoom>

Returns: a L<Paws::Chime::UpdateRoomResponse> instance

Updates room details, such as the room name, for a room in an Amazon
Chime Enterprise account.


=head2 UpdateRoomMembership

=over

=item AccountId => Str

=item MemberId => Str

=item RoomId => Str

=item [Role => Str]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateRoomMembership>

Returns: a L<Paws::Chime::UpdateRoomMembershipResponse> instance

Updates room membership details, such as the member role, for a room in
an Amazon Chime Enterprise account. The member role designates whether
the member is a chat room administrator or a general chat room member.
The member role can be updated only for user IDs.


=head2 UpdateUser

=over

=item AccountId => Str

=item UserId => Str

=item [AlexaForBusinessMetadata => L<Paws::Chime::AlexaForBusinessMetadata>]

=item [LicenseType => Str]

=item [UserType => Str]


=back

Each argument is described in detail in: L<Paws::Chime::UpdateUser>

Returns: a L<Paws::Chime::UpdateUserResponse> instance

Updates user details for a specified user ID. Currently, only
C<LicenseType> updates are supported for this action.


=head2 UpdateUserSettings

=over

=item AccountId => Str

=item UserId => Str

=item UserSettings => L<Paws::Chime::UserSettings>


=back

Each argument is described in detail in: L<Paws::Chime::UpdateUserSettings>

Returns: nothing

Updates the settings for the specified user, such as phone number
settings.




=head1 PAGINATORS

Paginator methods are helpers that repetively call methods that return partial results

=head2 ListAllAccounts(sub { },[MaxResults => Int, Name => Str, NextToken => Str, UserEmail => Str])

=head2 ListAllAccounts([MaxResults => Int, Name => Str, NextToken => Str, UserEmail => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Accounts, passing the object as the first parameter, and the string 'Accounts' as the second parameter 

If not, it will return a a L<Paws::Chime::ListAccountsResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.


=head2 ListAllUsers(sub { },AccountId => Str, [MaxResults => Int, NextToken => Str, UserEmail => Str, UserType => Str])

=head2 ListAllUsers(AccountId => Str, [MaxResults => Int, NextToken => Str, UserEmail => Str, UserType => Str])


If passed a sub as first parameter, it will call the sub for each element found in :

 - Users, passing the object as the first parameter, and the string 'Users' as the second parameter 

If not, it will return a a L<Paws::Chime::ListUsersResponse> instance with all the C<param>s;  from all the responses. Please take into account that this mode can potentially consume vasts ammounts of memory.





=head1 SEE ALSO

This service class forms part of L<Paws>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

