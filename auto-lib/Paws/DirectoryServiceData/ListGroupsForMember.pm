
package Paws::DirectoryServiceData::ListGroupsForMember;
  use Moose;
  has DirectoryId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'DirectoryId', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int');
  has MemberRealm => (is => 'ro', isa => 'Str');
  has NextToken => (is => 'ro', isa => 'Str');
  has Realm => (is => 'ro', isa => 'Str');
  has SAMAccountName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListGroupsForMember');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GroupMemberships/ListGroupsForMember');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectoryServiceData::ListGroupsForMemberResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectoryServiceData::ListGroupsForMember - Arguments for method ListGroupsForMember on L<Paws::DirectoryServiceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListGroupsForMember on the
L<AWS Directory Service Data|Paws::DirectoryServiceData> service. Use the attributes of this class
as arguments to method ListGroupsForMember.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListGroupsForMember.

=head1 SYNOPSIS

    my $ds-data = Paws->service('DirectoryServiceData');
    my $ListGroupsForMemberResult = $ds -data->ListGroupsForMember(
      DirectoryId    => 'MyDirectoryId',
      SAMAccountName => 'MyMemberName',
      MaxResults     => 1,                 # OPTIONAL
      MemberRealm    => 'MyRealm',         # OPTIONAL
      NextToken      => 'MyNextToken',     # OPTIONAL
      Realm          => 'MyRealm',         # OPTIONAL
    );

    # Results:
    my $DirectoryId = $ListGroupsForMemberResult->DirectoryId;
    my $Groups      = $ListGroupsForMemberResult->Groups;
    my $MemberRealm = $ListGroupsForMemberResult->MemberRealm;
    my $NextToken   = $ListGroupsForMemberResult->NextToken;
    my $Realm       = $ListGroupsForMemberResult->Realm;

    # Returns a L<Paws::DirectoryServiceData::ListGroupsForMemberResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds-data/ListGroupsForMember>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DirectoryId => Str

The identifier (ID) of the directory that's associated with the member.



=head2 MaxResults => Int

The maximum number of results to be returned per request.



=head2 MemberRealm => Str

The domain name that's associated with the group member.

This parameter is optional, so you can limit your results to the group
members in a specific domain.

This parameter is case insensitive and defaults to C<Realm>



=head2 NextToken => Str

An encoded paging token for paginated calls that can be passed back to
retrieve the next page.



=head2 Realm => Str

The domain name that's associated with the group.

This parameter is optional, so you can return groups outside of your
Managed Microsoft AD domain. When no value is defined, only your
Managed Microsoft AD groups are returned.

This value is case insensitive and defaults to your Managed Microsoft
AD domain.



=head2 B<REQUIRED> SAMAccountName => Str

The C<SAMAccountName> of the user, group, or computer that's a member
of the group.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListGroupsForMember in L<Paws::DirectoryServiceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

