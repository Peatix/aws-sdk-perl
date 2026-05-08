
package Paws::CognitoIdp::ListUsers;
  use Moose;
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Filter => (is => 'ro', isa => 'Str');
  has Limit => (is => 'ro', isa => 'Int');
  has PaginationToken => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUsers');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ListUsersResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListUsers - Arguments for method ListUsers on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUsers on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method ListUsers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUsers.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $ListUsersResponse = $cognito -idp->ListUsers(
      UserPoolId      => 'MyUserPoolIdType',
      AttributesToGet => [
        'MyAttributeNameType', ...    # min: 1, max: 32
      ],    # OPTIONAL
      Filter          => 'MyUserFilterType',               # OPTIONAL
      Limit           => 1,                                # OPTIONAL
      PaginationToken => 'MySearchPaginationTokenType',    # OPTIONAL
    );

    # Results:
    my $PaginationToken = $ListUsersResponse->PaginationToken;
    my $Users           = $ListUsersResponse->Users;

    # Returns a L<Paws::CognitoIdp::ListUsersResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 AttributesToGet => ArrayRef[Str|Undef]

A JSON array of user attribute names, for example C<given_name>, that
you want Amazon Cognito to include in the response for each user. When
you don't provide an C<AttributesToGet> parameter, Amazon Cognito
returns all attributes for each user.

Use C<AttributesToGet> with required attributes in your user pool, or
in conjunction with C<Filter>. Amazon Cognito returns an error if not
all users in the results have set a value for the attribute you
request. Attributes that you can't filter on, including custom
attributes, must have a value set in every user profile before an
C<AttributesToGet> parameter returns results.



=head2 Filter => Str

A filter string of the form C<"AttributeName Filter-Type
"AttributeValue">. Quotation marks within the filter string must be
escaped using the backslash (C<\>) character. For example,
C<"family_name = \"Reddy\"">.

=over

=item *

I<AttributeName>: The name of the attribute to search for. You can only
search for one attribute at a time.

=item *

I<Filter-Type>: For an exact match, use C<=>, for example,
"C<given_name = \"Jon\">". For a prefix ("starts with") match, use
C<^=>, for example, "C<given_name ^= \"Jon\">".

=item *

I<AttributeValue>: The attribute value that must be matched for each
user.

=back

If the filter string is empty, C<ListUsers> returns all users in the
user pool.

You can only search for the following standard attributes:

=over

=item *

C<username> (case-sensitive)

=item *

C<email>

=item *

C<phone_number>

=item *

C<name>

=item *

C<given_name>

=item *

C<family_name>

=item *

C<preferred_username>

=item *

C<cognito:user_status> (called B<Status> in the Console)
(case-insensitive)

=item *

C<status (called B<Enabled> in the Console) (case-sensitive)>

=item *

C<sub>

=back

Custom attributes aren't searchable.

You can also list users with a client-side filter. The server-side
filter matches no more than one attribute. For an advanced search, use
a client-side filter with the C<--query> parameter of the C<list-users>
action in the CLI. When you use a client-side filter, ListUsers returns
a paginated list of zero or more users. You can receive multiple pages
in a row with zero results. Repeat the query with each pagination token
that is returned until you receive a null pagination token value, and
then review the combined result.

For more information about server-side and client-side filtering, see
FilteringCLI output
(https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html)
in the Command Line Interface User Guide
(https://docs.aws.amazon.com/cli/latest/userguide/cli-usage-filter.html).

For more information, see Searching for Users Using the ListUsers API
(https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-using-listusers-api)
and Examples of Using the ListUsers API
(https://docs.aws.amazon.com/cognito/latest/developerguide/how-to-manage-user-accounts.html#cognito-user-pools-searching-for-users-listusers-api-examples)
in the I<Amazon Cognito Developer Guide>.



=head2 Limit => Int

The maximum number of users that you want Amazon Cognito to return in
the response.



=head2 PaginationToken => Str

This API operation returns a limited number of results. The pagination
token is an identifier that you can present in an additional API
request with the same parameters. When you include the pagination
token, Amazon Cognito returns the next set of items after the current
list. Subsequent requests return a new pagination token. By use of this
token, you can paginate through the full list of items.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where you want to display or search for users.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUsers in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

