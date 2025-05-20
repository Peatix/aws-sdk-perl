
package Paws::DirectoryServiceData::UpdateGroup;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has DirectoryId => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'DirectoryId', required => 1);
  has GroupScope => (is => 'ro', isa => 'Str');
  has GroupType => (is => 'ro', isa => 'Str');
  has OtherAttributes => (is => 'ro', isa => 'Paws::DirectoryServiceData::Attributes');
  has SAMAccountName => (is => 'ro', isa => 'Str', required => 1);
  has UpdateType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateGroup');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/Groups/UpdateGroup');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::DirectoryServiceData::UpdateGroupResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DirectoryServiceData::UpdateGroup - Arguments for method UpdateGroup on L<Paws::DirectoryServiceData>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateGroup on the
L<AWS Directory Service Data|Paws::DirectoryServiceData> service. Use the attributes of this class
as arguments to method UpdateGroup.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateGroup.

=head1 SYNOPSIS

    my $ds-data = Paws->service('DirectoryServiceData');
    my $UpdateGroupResult = $ds -data->UpdateGroup(
      DirectoryId     => 'MyDirectoryId',
      SAMAccountName  => 'MyGroupName',
      ClientToken     => 'MyClientToken',    # OPTIONAL
      GroupScope      => 'DomainLocal',      # OPTIONAL
      GroupType       => 'Distribution',     # OPTIONAL
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
      UpdateType => 'ADD',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ds-data/UpdateGroup>

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

The identifier (ID) of the directory that's associated with the group.



=head2 GroupScope => Str

The scope of the AD group. For details, see Active Directory security
groups
(https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#group-scope).

Valid values are: C<"DomainLocal">, C<"Global">, C<"Universal">, C<"BuiltinLocal">

=head2 GroupType => Str

The AD group type. For details, see Active Directory security group
type
(https://learn.microsoft.com/en-us/windows-server/identity/ad-ds/manage/understand-security-groups#how-active-directory-security-groups-work).

Valid values are: C<"Distribution">, C<"Security">

=head2 OtherAttributes => L<Paws::DirectoryServiceData::Attributes>

An expression that defines one or more attributes with the data type
and the value of each attribute.



=head2 B<REQUIRED> SAMAccountName => Str

The name of the group.



=head2 UpdateType => Str

The type of update to be performed. If no value exists for the
attribute, use C<ADD>. Otherwise, use C<REPLACE> to change an attribute
value or C<REMOVE> to clear the attribute value.

Valid values are: C<"ADD">, C<"REPLACE">, C<"REMOVE">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateGroup in L<Paws::DirectoryServiceData>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

