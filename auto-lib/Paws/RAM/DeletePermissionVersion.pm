
package Paws::RAM::DeletePermissionVersion;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken');
  has PermissionArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'permissionArn', required => 1);
  has PermissionVersion => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'permissionVersion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeletePermissionVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/deletepermissionversion');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::DeletePermissionVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::DeletePermissionVersion - Arguments for method DeletePermissionVersion on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeletePermissionVersion on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method DeletePermissionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeletePermissionVersion.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $DeletePermissionVersionResponse = $ram->DeletePermissionVersion(
      PermissionArn     => 'MyString',
      PermissionVersion => 1,
      ClientToken       => 'MyString',    # OPTIONAL
    );

    # Results:
    my $ClientToken      = $DeletePermissionVersionResponse->ClientToken;
    my $PermissionStatus = $DeletePermissionVersionResponse->PermissionStatus;
    my $ReturnValue      = $DeletePermissionVersionResponse->ReturnValue;

    # Returns a L<Paws::RAM::DeletePermissionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/DeletePermissionVersion>

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
of the permission with the version you want to delete.



=head2 B<REQUIRED> PermissionVersion => Int

Specifies the version number to delete.

You can't delete the default version for a customer managed permission.

You can't delete a version if it's the only version of the permission.
You must either first create another version, or delete the permission
completely.

You can't delete a version if it is attached to any resource shares. If
the version is the default, you must first use
SetDefaultPermissionVersion to set a different version as the default
for the customer managed permission, and then use
AssociateResourceSharePermission to update your resource shares to use
the new default version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeletePermissionVersion in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

