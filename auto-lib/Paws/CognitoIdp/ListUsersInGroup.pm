
package Paws::CognitoIdp::ListUsersInGroup;
  use Moose;
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Limit => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUsersInGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::ListUsersInGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::ListUsersInGroup - Arguments for method ListUsersInGroup on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUsersInGroup on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method ListUsersInGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUsersInGroup.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $ListUsersInGroupResponse = $cognito -idp->ListUsersInGroup(
      GroupName  => 'MyGroupNameType',
      UserPoolId => 'MyUserPoolIdType',
      Limit      => 1,                    # OPTIONAL
      NextToken  => 'MyPaginationKey',    # OPTIONAL
    );

    # Results:
    my $NextToken = $ListUsersInGroupResponse->NextToken;
    my $Users     = $ListUsersInGroupResponse->Users;

    # Returns a L<Paws::CognitoIdp::ListUsersInGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 B<REQUIRED> GroupName => Str

The name of the group that you want to query for user membership.



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



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where you want to view the membership of the
requested group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUsersInGroup in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

