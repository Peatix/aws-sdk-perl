
package Paws::DirectoryServiceData::DescribeGroup;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'DirectoryId', required => 1);
  has OtherAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has Realm => (is => 'ro', isa => 'Str');
  has SAMAccountName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/Groups/DescribeGroup');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectoryServiceData::DescribeGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectoryServiceData::DescribeGroup - Arguments for method DescribeGroup on L<Paws::DirectoryServiceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeGroup on the
L<AWS Directory Service Data|Paws::DirectoryServiceData> service. Use the attributes of this class
as arguments to method DescribeGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeGroup.

=head1 SYNOPSIS

    my $ds-data = Paws->service('DirectoryServiceData');
    my $DescribeGroupResult = $ds -data->DescribeGroup(
      DirectoryId     => 'MyDirectoryId',
      SAMAccountName  => 'MyGroupName',
      OtherAttributes => [
        'MyLdapDisplayName', ...    # min: 1, max: 63
      ],    # OPTIONAL
      Realm => 'MyRealm',    # OPTIONAL
    );

    # Results:
    my $DirectoryId       = $DescribeGroupResult->DirectoryId;
    my $DistinguishedName = $DescribeGroupResult->DistinguishedName;
    my $GroupScope        = $DescribeGroupResult->GroupScope;
    my $GroupType         = $DescribeGroupResult->GroupType;
    my $OtherAttributes   = $DescribeGroupResult->OtherAttributes;
    my $Realm             = $DescribeGroupResult->Realm;
    my $SAMAccountName    = $DescribeGroupResult->SAMAccountName;
    my $SID               = $DescribeGroupResult->SID;

    # Returns a L<Paws::DirectoryServiceData::DescribeGroupResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds-data/DescribeGroup>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The Identifier (ID) of the directory associated with the group.



=head2 OtherAttributes => ArrayRef[Str|Undef]

One or more attributes to be returned for the group. For a list of
supported attributes, see Directory Service Data Attributes
(https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html).



=head2 Realm => Str

The domain name that's associated with the group.

This parameter is optional, so you can return groups outside of your
Managed Microsoft AD domain. When no value is defined, only your
Managed Microsoft AD groups are returned.

This value is case insensitive.



=head2 B<REQUIRED> SAMAccountName => Str

The name of the group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeGroup in L<Paws::DirectoryServiceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

