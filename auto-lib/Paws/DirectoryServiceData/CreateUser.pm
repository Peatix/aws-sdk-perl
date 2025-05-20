
package Paws::DirectoryServiceData::CreateUser;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DirectoryId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'DirectoryId', required => 1);
  has EmailAddress => (is => 'ro', isa => 'Str');
  has GivenName => (is => 'ro', isa => 'Str');
  has OtherAttributes => (is => 'ro', isa => 'Paws::DirectoryServiceData::Attributes');
  has SAMAccountName => (is => 'ro', isa => 'Str', required => 1);
  has Surname => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/Users/CreateUser');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectoryServiceData::CreateUserResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectoryServiceData::CreateUser - Arguments for method CreateUser on L<Paws::DirectoryServiceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateUser on the
L<AWS Directory Service Data|Paws::DirectoryServiceData> service. Use the attributes of this class
as arguments to method CreateUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateUser.

=head1 SYNOPSIS

    my $ds-data = Paws->service('DirectoryServiceData');
    my $CreateUserResult = $ds -data->CreateUser(
      DirectoryId     => 'MyDirectoryId',
      SAMAccountName  => 'MyUserName',
      ClientToken     => 'MyClientToken',     # OPTIONAL
      EmailAddress    => 'MyEmailAddress',    # OPTIONAL
      GivenName       => 'MyGivenName',       # OPTIONAL
      OtherAttributes => {
        'MyLdapDisplayName' => {
          BOOL => 1,                           # OPTIONAL
          N    => 1,                           # OPTIONAL
          S    => 'MyStringAttributeValue',    # min: 1, max: 1024; OPTIONAL
          SS   => [
            'MyStringAttributeValue', ...      # min: 1, max: 1024; OPTIONAL
          ],    # max: 25; OPTIONAL
        },    # key: min: 1, max: 63
      },    # OPTIONAL
      Surname => 'MySurname',    # OPTIONAL
    );

    # Results:
    my $DirectoryId    = $CreateUserResult->DirectoryId;
    my $SAMAccountName = $CreateUserResult->SAMAccountName;
    my $SID            = $CreateUserResult->SID;

    # Returns a L<Paws::DirectoryServiceData::CreateUserResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds-data/CreateUser>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique and case-sensitive identifier that you provide to make sure
the idempotency of the request, so multiple identical calls have the
same effect as one single call.

A client token is valid for 8 hours after the first request that uses
it completes. After 8 hours, any request with the same client token is
treated as a new request. If the request succeeds, any future uses of
that token will be idempotent for another 8 hours.

If you submit a request with the same client token but change one of
the other parameters within the 8-hour idempotency window, Directory
Service Data returns an C<ConflictException>.

This parameter is optional when using the CLI or SDK.



=head2 B<REQUIRED> DirectoryId => Str

The identifier (ID) of the directory thatE<rsquo>s associated with the
user.



=head2 EmailAddress => Str

The email address of the user.



=head2 GivenName => Str

The first name of the user.



=head2 OtherAttributes => L<Paws::DirectoryServiceData::Attributes>

An expression that defines one or more attribute names with the data
type and value of each attribute. A key is an attribute name, and the
value is a list of maps. For a list of supported attributes, see
Directory Service Data Attributes
(https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html).

Attribute names are case insensitive.



=head2 B<REQUIRED> SAMAccountName => Str

The name of the user.



=head2 Surname => Str

The last name of the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateUser in L<Paws::DirectoryServiceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

