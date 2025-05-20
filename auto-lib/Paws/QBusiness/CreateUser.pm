
package Paws::QBusiness::CreateUser;
  use Moose;
  has ApplicationId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'applicationId', required => 1);
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has UserAliases => (is => 'ro', isa => 'ArrayRef[Paws::QBusiness::UserAlias]', traits => ['NameInRequest'], request_name => 'userAliases');
  has UserId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'userId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/applications/{applicationId}/users');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QBusiness::CreateUserResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QBusiness::CreateUser - Arguments for method CreateUser on L<Paws::QBusiness>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUser on the
L<QBusiness|Paws::QBusiness> service. Use the attributes of this class
as arguments to method CreateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUser.

=head1 SYNOPSIS

    my $qbusiness = Paws->service('QBusiness');
    my $CreateUserResponse = $qbusiness->CreateUser(
      ApplicationId => 'MyApplicationId',
      UserId        => 'MyString',
      ClientToken   => 'MyClientToken',     # OPTIONAL
      UserAliases   => [
        {
          UserId       => 'MyString',          # min: 1, max: 2048
          DataSourceId => 'MyDataSourceId',    # min: 36, max: 36; OPTIONAL
          IndexId      => 'MyIndexId',         # min: 36, max: 36; OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/qbusiness/CreateUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationId => Str

The identifier of the application for which the user mapping will be
created.



=head2 ClientToken => Str

A token that you provide to identify the request to create your Amazon
Q Business user mapping.



=head2 UserAliases => ArrayRef[L<Paws::QBusiness::UserAlias>]

The list of user aliases in the mapping.



=head2 B<REQUIRED> UserId => Str

The user emails attached to a user mapping.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUser in L<Paws::QBusiness>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

