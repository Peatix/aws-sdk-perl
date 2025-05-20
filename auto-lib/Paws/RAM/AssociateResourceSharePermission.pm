
package Paws::RAM::AssociateResourceSharePermission;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has PermissionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'permissionArn', required => 1);
  has PermissionVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'permissionVersion');
  has Replace => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'replace');
  has ResourceShareArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceShareArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AssociateResourceSharePermission');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/associateresourcesharepermission');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::AssociateResourceSharePermissionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::AssociateResourceSharePermission - Arguments for method AssociateResourceSharePermission on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AssociateResourceSharePermission on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method AssociateResourceSharePermission.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AssociateResourceSharePermission.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $AssociateResourceSharePermissionResponse =
      $ram->AssociateResourceSharePermission(
      PermissionArn     => 'MyString',
      ResourceShareArn  => 'MyString',
      ClientToken       => 'MyString',    # OPTIONAL
      PermissionVersion => 1,             # OPTIONAL
      Replace           => 1,             # OPTIONAL
      );

    # Results:
    my $ClientToken = $AssociateResourceSharePermissionResponse->ClientToken;
    my $ReturnValue = $AssociateResourceSharePermissionResponse->ReturnValue;

    # Returns a L<Paws::RAM::AssociateResourceSharePermissionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/AssociateResourceSharePermission>

=head1 ATTRIBUTES


=head2 ClientToken => Str

Specifies a unique, case-sensitive identifier that you provide to
ensure the idempotency of the request. This lets you safely retry the
request without accidentally performing the same operation a second
time. Passing the same value to a later call to an operation requires
that you also pass the same value for all other parameters. We
recommend that you use a UUID type of value.
(https://wikipedia.org/wiki/Universally_unique_identifier).

If you don't provide this value, then Amazon Web Services generates a
random one for you.

If you retry the operation with the same C<ClientToken>, but with
different parameters, the retry fails with an
C<IdempotentParameterMismatch> error.



=head2 B<REQUIRED> PermissionArn => Str

Specifies the Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the RAM permission to associate with the resource share. To find the
ARN for a permission, use either the ListPermissions operation or go to
the Permissions library
(https://console.aws.amazon.com/ram/home#Permissions:) page in the RAM
console and then choose the name of the permission. The ARN is
displayed on the detail page.



=head2 PermissionVersion => Int

Specifies the version of the RAM permission to associate with the
resource share. You can specify I<only> the version that is currently
set as the default version for the permission. If you also set the
C<replace> pararameter to C<true>, then this operation updates an
outdated version of the permission to the current default version.

You don't need to specify this parameter because the default behavior
is to use the version that is currently set as the default version for
the permission. This parameter is supported for backwards
compatibility.



=head2 Replace => Bool

Specifies whether the specified permission should replace the existing
permission associated with the resource share. Use C<true> to replace
the current permissions. Use C<false> to add the permission to a
resource share that currently doesn't have a permission. The default
value is C<false>.

A resource share can have only one permission per resource type. If a
resource share already has a permission for the specified resource type
and you don't set C<replace> to C<true> then the operation returns an
error. This helps prevent accidental overwriting of a permission.



=head2 B<REQUIRED> ResourceShareArn => Str

Specifies the Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the resource share to which you want to add or replace permissions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AssociateResourceSharePermission in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

