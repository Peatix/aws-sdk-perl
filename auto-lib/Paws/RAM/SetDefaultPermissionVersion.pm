
package Paws::RAM::SetDefaultPermissionVersion;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has PermissionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'permissionArn', required => 1);
  has PermissionVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'permissionVersion', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'SetDefaultPermissionVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/setdefaultpermissionversion');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::SetDefaultPermissionVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::SetDefaultPermissionVersion - Arguments for method SetDefaultPermissionVersion on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method SetDefaultPermissionVersion on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method SetDefaultPermissionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to SetDefaultPermissionVersion.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $SetDefaultPermissionVersionResponse = $ram->SetDefaultPermissionVersion(
      PermissionArn     => 'MyString',
      PermissionVersion => 1,
      ClientToken       => 'MyString',    # OPTIONAL
    );

    # Results:
    my $ClientToken = $SetDefaultPermissionVersionResponse->ClientToken;
    my $ReturnValue = $SetDefaultPermissionVersionResponse->ReturnValue;

    # Returns a L<Paws::RAM::SetDefaultPermissionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/SetDefaultPermissionVersion>

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
of the customer managed permission whose default version you want to
change.



=head2 B<REQUIRED> PermissionVersion => Int

Specifies the version number that you want to designate as the default
for customer managed permission. To see a list of all available version
numbers, use ListPermissionVersions.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method SetDefaultPermissionVersion in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

