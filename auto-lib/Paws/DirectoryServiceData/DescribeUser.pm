
package Paws::DirectoryServiceData::DescribeUser;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'DirectoryId', required => 1);
  has OtherAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Realm => (is => 'ro', isa => 'Str');
  has SAMAccountName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeUser');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/Users/DescribeUser');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectoryServiceData::DescribeUserResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectoryServiceData::DescribeUser - Arguments for method DescribeUser on L<Paws::DirectoryServiceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeUser on the
L<AWS Directory Service Data|Paws::DirectoryServiceData> service. Use the attributes of this class
as arguments to method DescribeUser.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeUser.

=head1 SYNOPSIS

    my $ds-data = Paws->service('DirectoryServiceData');
    my $DescribeUserResult = $ds -data->DescribeUser(
      DirectoryId     => 'MyDirectoryId',
      SAMAccountName  => 'MyUserName',
      OtherAttributes => [
        'MyLdapDisplayName', ...    # min: 1, max: 63
      ],    # OPTIONAL
      Realm => 'MyRealm',    # OPTIONAL
    );

    # Results:
    my $DirectoryId       = $DescribeUserResult->DirectoryId;
    my $DistinguishedName = $DescribeUserResult->DistinguishedName;
    my $EmailAddress      = $DescribeUserResult->EmailAddress;
    my $Enabled           = $DescribeUserResult->Enabled;
    my $GivenName         = $DescribeUserResult->GivenName;
    my $OtherAttributes   = $DescribeUserResult->OtherAttributes;
    my $Realm             = $DescribeUserResult->Realm;
    my $SAMAccountName    = $DescribeUserResult->SAMAccountName;
    my $SID               = $DescribeUserResult->SID;
    my $Surname           = $DescribeUserResult->Surname;
    my $UserPrincipalName = $DescribeUserResult->UserPrincipalName;

    # Returns a L<Paws::DirectoryServiceData::DescribeUserResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds-data/DescribeUser>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The identifier (ID) of the directory that's associated with the user.



=head2 OtherAttributes => ArrayRef[Str|Undef]

One or more attribute names to be returned for the user. A key is an
attribute name, and the value is a list of maps. For a list of
supported attributes, see Directory Service Data Attributes
(https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html).



=head2 Realm => Str

The domain name that's associated with the user.

This parameter is optional, so you can return users outside your
Managed Microsoft AD domain. When no value is defined, only your
Managed Microsoft AD users are returned.

This value is case insensitive.



=head2 B<REQUIRED> SAMAccountName => Str

The name of the user.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeUser in L<Paws::DirectoryServiceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

