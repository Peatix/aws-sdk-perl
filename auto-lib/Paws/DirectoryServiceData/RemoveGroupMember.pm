
package Paws::DirectoryServiceData::RemoveGroupMember;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DirectoryId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'DirectoryId', required => 1);
  has GroupName => (is => 'ro', isa => 'Str', required => 1);
  has MemberName => (is => 'ro', isa => 'Str', required => 1);
  has MemberRealm => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveGroupMember');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GroupMemberships/RemoveGroupMember');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectoryServiceData::RemoveGroupMemberResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectoryServiceData::RemoveGroupMember - Arguments for method RemoveGroupMember on L<Paws::DirectoryServiceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveGroupMember on the
L<AWS Directory Service Data|Paws::DirectoryServiceData> service. Use the attributes of this class
as arguments to method RemoveGroupMember.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveGroupMember.

=head1 SYNOPSIS

    my $ds-data = Paws->service('DirectoryServiceData');
    my $RemoveGroupMemberResult = $ds -data->RemoveGroupMember(
      DirectoryId => 'MyDirectoryId',
      GroupName   => 'MyGroupName',
      MemberName  => 'MyMemberName',
      ClientToken => 'MyClientToken',    # OPTIONAL
      MemberRealm => 'MyRealm',          # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds-data/RemoveGroupMember>

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

The identifier (ID) of the directory that's associated with the member.



=head2 B<REQUIRED> GroupName => Str

The name of the group.



=head2 B<REQUIRED> MemberName => Str

The C<SAMAccountName> of the user, group, or computer to remove from
the group.



=head2 MemberRealm => Str

The domain name that's associated with the group member. This parameter
defaults to the Managed Microsoft AD domain.

This parameter is optional and case insensitive.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveGroupMember in L<Paws::DirectoryServiceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

