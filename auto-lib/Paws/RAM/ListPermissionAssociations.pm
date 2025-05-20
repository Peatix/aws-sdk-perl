
package Paws::RAM::ListPermissionAssociations;
  use Moose;
  has AssociationStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'associationStatus');
  has DefaultVersion => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'defaultVersion');
  has FeatureSet => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'featureSet');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has PermissionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'permissionArn');
  has PermissionVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'permissionVersion');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListPermissionAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/listpermissionassociations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::ListPermissionAssociationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ListPermissionAssociations - Arguments for method ListPermissionAssociations on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListPermissionAssociations on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method ListPermissionAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListPermissionAssociations.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $ListPermissionAssociationsResponse = $ram->ListPermissionAssociations(
      AssociationStatus => 'ASSOCIATING',            # OPTIONAL
      DefaultVersion    => 1,                        # OPTIONAL
      FeatureSet        => 'CREATED_FROM_POLICY',    # OPTIONAL
      MaxResults        => 1,                        # OPTIONAL
      NextToken         => 'MyString',               # OPTIONAL
      PermissionArn     => 'MyString',               # OPTIONAL
      PermissionVersion => 1,                        # OPTIONAL
      ResourceType      => 'MyString',               # OPTIONAL
    );

    # Results:
    my $NextToken   = $ListPermissionAssociationsResponse->NextToken;
    my $Permissions = $ListPermissionAssociationsResponse->Permissions;

    # Returns a L<Paws::RAM::ListPermissionAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/ListPermissionAssociations>

=head1 ATTRIBUTES


=head2 AssociationStatus => Str

Specifies that you want to list only those associations with resource
shares that match this status.

Valid values are: C<"ASSOCIATING">, C<"ASSOCIATED">, C<"FAILED">, C<"DISASSOCIATING">, C<"DISASSOCIATED">

=head2 DefaultVersion => Bool

When C<true>, specifies that you want to list only those associations
with resource shares that use the default version of the specified
managed permission.

When C<false> (the default value), lists associations with resource
shares that use any version of the specified managed permission.



=head2 FeatureSet => Str

Specifies that you want to list only those associations with resource
shares that have a C<featureSet> with this value.

Valid values are: C<"CREATED_FROM_POLICY">, C<"PROMOTING_TO_STANDARD">, C<"STANDARD">

=head2 MaxResults => Int

Specifies the total number of results that you want included on each
page of the response. If you do not include this parameter, it defaults
to a value that is specific to the operation. If additional items exist
beyond the number you specify, the C<NextToken> response element is
returned with a value (not null). Include the specified value as the
C<NextToken> request parameter in the next call to the operation to get
the next part of the results. Note that the service might return fewer
results than the maximum even when there are more results available.
You should check C<NextToken> after every operation to ensure that you
receive all of the results.



=head2 NextToken => Str

Specifies that you want to receive the next page of results. Valid only
if you received a C<NextToken> response in the previous request. If you
did, it indicates that more output is available. Set this parameter to
the value provided by the previous call's C<NextToken> response to
request the next page of results.



=head2 PermissionArn => Str

Specifies the Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the managed permission.



=head2 PermissionVersion => Int

Specifies that you want to list only those associations with resource
shares that use this version of the managed permission. If you don't
provide a value for this parameter, then the operation returns
information about associations with resource shares that use any
version of the managed permission.



=head2 ResourceType => Str

Specifies that you want to list only those associations with resource
shares that include at least one resource of this resource type.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListPermissionAssociations in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

