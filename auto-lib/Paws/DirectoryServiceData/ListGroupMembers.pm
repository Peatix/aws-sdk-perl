
package Paws::DirectoryServiceData::ListGroupMembers;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'DirectoryId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has MemberRealm => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Realm => (is => 'ro', isa => 'Str');
  has SAMAccountName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroupMembers');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GroupMemberships/ListGroupMembers');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectoryServiceData::ListGroupMembersResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectoryServiceData::ListGroupMembers - Arguments for method ListGroupMembers on L<Paws::DirectoryServiceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGroupMembers on the
L<AWS Directory Service Data|Paws::DirectoryServiceData> service. Use the attributes of this class
as arguments to method ListGroupMembers.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGroupMembers.

=head1 SYNOPSIS

    my $ds-data = Paws->service('DirectoryServiceData');
    my $ListGroupMembersResult = $ds -data->ListGroupMembers(
      DirectoryId    => 'MyDirectoryId',
      SAMAccountName => 'MyGroupName',
      MaxResults     => 1,                 # OPTIONAL
      MemberRealm    => 'MyRealm',         # OPTIONAL
      NextToken      => 'MyNextToken',     # OPTIONAL
      Realm          => 'MyRealm',         # OPTIONAL
    );

    # Results:
    my $DirectoryId = $ListGroupMembersResult->DirectoryId;
    my $MemberRealm = $ListGroupMembersResult->MemberRealm;
    my $Members     = $ListGroupMembersResult->Members;
    my $NextToken   = $ListGroupMembersResult->NextToken;
    my $Realm       = $ListGroupMembersResult->Realm;

    # Returns a L<Paws::DirectoryServiceData::ListGroupMembersResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds-data/ListGroupMembers>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The identifier (ID) of the directory that's associated with the group.



=head2 MaxResults => Int

The maximum number of results to be returned per request.



=head2 MemberRealm => Str

The domain name that's associated with the group member. This parameter
defaults to the Managed Microsoft AD domain.

This parameter is optional and case insensitive.



=head2 NextToken => Str

An encoded paging token for paginated calls that can be passed back to
retrieve the next page.



=head2 Realm => Str

The domain name that's associated with the group.

This parameter is optional, so you can return members from a group
outside of your Managed Microsoft AD domain. When no value is defined,
only members of your Managed Microsoft AD groups are returned.

This value is case insensitive.



=head2 B<REQUIRED> SAMAccountName => Str

The name of the group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGroupMembers in L<Paws::DirectoryServiceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

