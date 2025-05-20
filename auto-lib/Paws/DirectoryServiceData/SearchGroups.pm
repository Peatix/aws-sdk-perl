
package Paws::DirectoryServiceData::SearchGroups;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'DirectoryId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has Realm => (is => 'ro', isa => 'Str');
  has SearchAttributes => (is => 'ro', isa => 'ArrayRef[Str|Undef]', required => 1);
  has SearchString => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SearchGroups');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/Groups/SearchGroups');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectoryServiceData::SearchGroupsResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectoryServiceData::SearchGroups - Arguments for method SearchGroups on L<Paws::DirectoryServiceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SearchGroups on the
L<AWS Directory Service Data|Paws::DirectoryServiceData> service. Use the attributes of this class
as arguments to method SearchGroups.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SearchGroups.

=head1 SYNOPSIS

    my $ds-data = Paws->service('DirectoryServiceData');
    my $SearchGroupsResult = $ds -data->SearchGroups(
      DirectoryId      => 'MyDirectoryId',
      SearchAttributes => [
        'MyLdapDisplayName', ...    # min: 1, max: 63
      ],
      SearchString => 'MySearchString',
      MaxResults   => 1,                  # OPTIONAL
      NextToken    => 'MyNextToken',      # OPTIONAL
      Realm        => 'MyRealm',          # OPTIONAL
    );

    # Results:
    my $DirectoryId = $SearchGroupsResult->DirectoryId;
    my $Groups      = $SearchGroupsResult->Groups;
    my $NextToken   = $SearchGroupsResult->NextToken;
    my $Realm       = $SearchGroupsResult->Realm;

    # Returns a L<Paws::DirectoryServiceData::SearchGroupsResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds-data/SearchGroups>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The identifier (ID) of the directory that's associated with the group.



=head2 MaxResults => Int

The maximum number of results to be returned per request.



=head2 NextToken => Str

An encoded paging token for paginated calls that can be passed back to
retrieve the next page.



=head2 Realm => Str

The domain name that's associated with the group.

This parameter is optional, so you can return groups outside of your
Managed Microsoft AD domain. When no value is defined, only your
Managed Microsoft AD groups are returned.

This value is case insensitive.



=head2 B<REQUIRED> SearchAttributes => ArrayRef[Str|Undef]

One or more data attributes that are used to search for a group. For a
list of supported attributes, see Directory Service Data Attributes
(https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html).



=head2 B<REQUIRED> SearchString => Str

The attribute value that you want to search for.

Wildcard C<(*)> searches aren't supported. For a list of supported
attributes, see Directory Service Data Attributes
(https://docs.aws.amazon.com/directoryservice/latest/admin-guide/ad_data_attributes.html).




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SearchGroups in L<Paws::DirectoryServiceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

