
package Paws::DirectoryServiceData::ListUsers;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'DirectoryId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Realm => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListUsers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/Users/ListUsers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectoryServiceData::ListUsersResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectoryServiceData::ListUsers - Arguments for method ListUsers on L<Paws::DirectoryServiceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListUsers on the
L<AWS Directory Service Data|Paws::DirectoryServiceData> service. Use the attributes of this class
as arguments to method ListUsers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListUsers.

=head1 SYNOPSIS

    my $ds-data = Paws->service('DirectoryServiceData');
    my $ListUsersResult = $ds -data->ListUsers(
      DirectoryId => 'MyDirectoryId',
      MaxResults  => 1,                 # OPTIONAL
      NextToken   => 'MyNextToken',     # OPTIONAL
      Realm       => 'MyRealm',         # OPTIONAL
    );

    # Results:
    my $DirectoryId = $ListUsersResult->DirectoryId;
    my $NextToken   = $ListUsersResult->NextToken;
    my $Realm       = $ListUsersResult->Realm;
    my $Users       = $ListUsersResult->Users;

    # Returns a L<Paws::DirectoryServiceData::ListUsersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds-data/ListUsers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The identifier (ID) of the directory that's associated with the user.



=head2 MaxResults => Int

The maximum number of results to be returned per request.



=head2 NextToken => Str

An encoded paging token for paginated calls that can be passed back to
retrieve the next page.



=head2 Realm => Str

The domain name that's associated with the user.

This parameter is optional, so you can return users outside of your
Managed Microsoft AD domain. When no value is defined, only your
Managed Microsoft AD users are returned.

This value is case insensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListUsers in L<Paws::DirectoryServiceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

