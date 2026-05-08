
package Paws::CognitoIdp::AdminListGroupsForUser;
  use Moose;
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Username => (is => 'ro', isa => 'Str', required => 1);
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AdminListGroupsForUser');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::AdminListGroupsForUserResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::AdminListGroupsForUser - Arguments for method AdminListGroupsForUser on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AdminListGroupsForUser on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method AdminListGroupsForUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AdminListGroupsForUser.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $AdminListGroupsForUserResponse = $cognito -idp->AdminListGroupsForUser(
      UserPoolId => 'MyUserPoolIdType',
      Username   => 'MyUsernameType',
      Limit      => 1,                    # OPTIONAL
      NextToken  => 'MyPaginationKey',    # OPTIONAL
    );

    # Results:
    my $Groups    = $AdminListGroupsForUserResponse->Groups;
    my $NextToken = $AdminListGroupsForUserResponse->NextToken;

    # Returns a L<Paws::CognitoIdp::AdminListGroupsForUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 Limit => Int

The maximum number of groups that you want Amazon Cognito to return in
the response.



=head2 NextToken => Str

This API operation returns a limited number of results. The pagination
token is an identifier that you can present in an additional API
request with the same parameters. When you include the pagination
token, Amazon Cognito returns the next set of items after the current
list. Subsequent requests return a new pagination token. By use of this
token, you can paginate through the full list of items.



=head2 B<REQUIRED> Username => Str

The name of the user that you want to query or modify. The value of
this parameter is typically your user's username, but it can be any of
their alias attributes. If C<username> isn't an alias attribute in your
user pool, this value must be the C<sub> of a local user or the
username of a user from a third-party IdP.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where you want to view a user's groups.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AdminListGroupsForUser in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

