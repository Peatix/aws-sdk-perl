
package Paws::RAM::CreateResourceShare;
  use Moose;
  has AllowExternalPrincipals => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'allowExternalPrincipals');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has PermissionArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'permissionArns');
  has Principals => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'principals');
  has ResourceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceArns');
  has Sources => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'sources');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::RAM::Tag]', traits => ['NameInRequest'], request_name => 'tags');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResourceShare');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/createresourceshare');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::CreateResourceShareResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::CreateResourceShare - Arguments for method CreateResourceShare on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResourceShare on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method CreateResourceShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResourceShare.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $CreateResourceShareResponse = $ram->CreateResourceShare(
      Name                    => 'MyString',
      AllowExternalPrincipals => 1,                      # OPTIONAL
      ClientToken             => 'MyString',             # OPTIONAL
      PermissionArns          => [ 'MyString', ... ],    # OPTIONAL
      Principals              => [ 'MyString', ... ],    # OPTIONAL
      ResourceArns            => [ 'MyString', ... ],    # OPTIONAL
      Sources                 => [ 'MyString', ... ],    # OPTIONAL
      Tags                    => [
        {
          Key   => 'MyTagKey',      # OPTIONAL
          Value => 'MyTagValue',    # OPTIONAL
        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $ClientToken   = $CreateResourceShareResponse->ClientToken;
    my $ResourceShare = $CreateResourceShareResponse->ResourceShare;

    # Returns a L<Paws::RAM::CreateResourceShareResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/CreateResourceShare>

=head1 ATTRIBUTES


=head2 AllowExternalPrincipals => Bool

Specifies whether principals outside your organization in Organizations
can be associated with a resource share. A value of C<true> lets you
share with individual Amazon Web Services accounts that are I<not> in
your organization. A value of C<false> only has meaning if your account
is a member of an Amazon Web Services Organization. The default value
is C<true>.



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



=head2 B<REQUIRED> Name => Str

Specifies the name of the resource share.



=head2 PermissionArns => ArrayRef[Str|Undef]

Specifies the Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the RAM permission to associate with the resource share. If you do
not specify an ARN for the permission, RAM automatically attaches the
default version of the permission for each resource type. You can
associate only one permission with each resource type included in the
resource share.



=head2 Principals => ArrayRef[Str|Undef]

Specifies a list of one or more principals to associate with the
resource share.

You can include the following values:

=over

=item *

An Amazon Web Services account ID, for example: C<123456789012>

=item *

An Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of an organization in Organizations, for example:
C<organizations::123456789012:organization/o-exampleorgid>

=item *

An ARN of an organizational unit (OU) in Organizations, for example:
C<organizations::123456789012:ou/o-exampleorgid/ou-examplerootid-exampleouid123>

=item *

An ARN of an IAM role, for example: C<iam::123456789012:role/rolename>

=item *

An ARN of an IAM user, for example: C<iam::123456789012user/username>

=back

Not all resource types can be shared with IAM roles and users. For more
information, see Sharing with IAM roles and users
(https://docs.aws.amazon.com/ram/latest/userguide/permissions.html#permissions-rbp-supported-resource-types)
in the I<Resource Access Manager User Guide>.



=head2 ResourceArns => ArrayRef[Str|Undef]

Specifies a list of one or more ARNs of the resources to associate with
the resource share.



=head2 Sources => ArrayRef[Str|Undef]

Specifies from which source accounts the service principal has access
to the resources in this resource share.



=head2 Tags => ArrayRef[L<Paws::RAM::Tag>]

Specifies one or more tags to attach to the resource share itself. It
doesn't attach the tags to the resources associated with the resource
share.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResourceShare in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

