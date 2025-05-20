
package Paws::QBusiness::UpdateUser;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has UserAliasesToDelete => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::UserAlias]', traits => ['NameInRequest'], request_name => 'userAliasesToDelete');
  has UserAliasesToUpdate => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::UserAlias]', traits => ['NameInRequest'], request_name => 'userAliasesToUpdate');
  has UserId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'userId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/users/{userId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::UpdateUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::UpdateUser - Arguments for method UpdateUser on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateUser on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method UpdateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateUser.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $UpdateUserResponse = $qbusiness->UpdateUser(
      ApplicationId       => 'MyApplicationId',
      UserId              => 'MyString',
      UserAliasesToDelete => [
        {
          UserId       => 'MyString',          # min: 1, max: 2048
          DataSourceId => 'MyDataSourceId',    # min: 36, max: 36; OPTIONAL
          IndexId      => 'MyIndexId',         # min: 36, max: 36; OPTIONAL
        },
        ...
      ],    # OPTIONAL
      UserAliasesToUpdate => [
        {
          UserId       => 'MyString',          # min: 1, max: 2048
          DataSourceId => 'MyDataSourceId',    # min: 36, max: 36; OPTIONAL
          IndexId      => 'MyIndexId',         # min: 36, max: 36; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $UserAliasesAdded   = $UpdateUserResponse->UserAliasesAdded;
    my $UserAliasesDeleted = $UpdateUserResponse->UserAliasesDeleted;
    my $UserAliasesUpdated = $UpdateUserResponse->UserAliasesUpdated;

    # Returns a L<Paws::QBusiness::UpdateUserResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/UpdateUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the application the user is attached to.



=head2 UserAliasesToDelete => ArrayRef[L<Paws::QBusiness::UserAlias>]

The user aliases attached to the user id that are to be deleted.



=head2 UserAliasesToUpdate => ArrayRef[L<Paws::QBusiness::UserAlias>]

The user aliases attached to the user id that are to be updated.



=head2 B<REQUIRED> UserId => Str

The email id attached to the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateUser in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

