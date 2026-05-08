
package Paws::CognitoIdp::CreateGroup;
  use Moose;
  has Description => (is => 'ro', isa => 'Str');
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has Precedence => (is => 'ro', isa => 'Int');
  has RoleArn => (is => 'ro', isa => 'Str');
  has UserPoolId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateGroup');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CognitoIdp::CreateGroupResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CognitoIdp::CreateGroup - Arguments for method CreateGroup on L<Paws::CognitoIdp>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateGroup on the
L<Amazon Cognito Identity Provider|Paws::CognitoIdp> service. Use the attributes of this class
as arguments to method CreateGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateGroup.

=head1 SYNOPSIS

    my $cognito-idp = Paws->service('CognitoIdp');
    my $CreateGroupResponse = $cognito -idp->CreateGroup(
      GroupName   => 'MyGroupNameType',
      UserPoolId  => 'MyUserPoolIdType',
      Description => 'MyDescriptionType',    # OPTIONAL
      Precedence  => 1,                      # OPTIONAL
      RoleArn     => 'MyArnType',            # OPTIONAL
    );

    # Results:
    my $Group = $CreateGroupResponse->Group;

    # Returns a L<Paws::CognitoIdp::CreateGroupResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://aws.amazon.com/documentation/>

=head1 ATTRIBUTES


=head2 Description => Str

A description of the group that you're creating.



=head2 B<REQUIRED> GroupName => Str

A name for the group. This name must be unique in your user pool.



=head2 Precedence => Int

A non-negative integer value that specifies the precedence of this
group relative to the other groups that a user can belong to in the
user pool. Zero is the highest precedence value. Groups with lower
C<Precedence> values take precedence over groups with higher or null
C<Precedence> values. If a user belongs to two or more groups, it is
the group with the lowest precedence value whose role ARN is given in
the user's tokens for the C<cognito:roles> and
C<cognito:preferred_role> claims.

Two groups can have the same C<Precedence> value. If this happens,
neither group takes precedence over the other. If two groups with the
same C<Precedence> have the same role ARN, that role is used in the
C<cognito:preferred_role> claim in tokens for users in each group. If
the two groups have different role ARNs, the C<cognito:preferred_role>
claim isn't set in users' tokens.

The default C<Precedence> value is null. The maximum C<Precedence>
value is C<2^31-1>.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) for the IAM role that you want to
associate with the group. A group role primarily declares a preferred
role for the credentials that you get from an identity pool. Amazon
Cognito ID tokens have a C<cognito:preferred_role> claim that presents
the highest-precedence group that a user belongs to. Both ID and access
tokens also contain a C<cognito:groups> claim that list all the groups
that a user is a member of.



=head2 B<REQUIRED> UserPoolId => Str

The ID of the user pool where you want to create a user group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateGroup in L<Paws::CognitoIdp>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

