
package Paws::RAM::DisassociateResourceShare;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has Principals => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'principals');
  has ResourceArns => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceArns');
  has ResourceShareArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceShareArn', required => 1);
  has Sources => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'sources');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DisassociateResourceShare');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/disassociateresourceshare');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::DisassociateResourceShareResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::DisassociateResourceShare - Arguments for method DisassociateResourceShare on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DisassociateResourceShare on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method DisassociateResourceShare.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DisassociateResourceShare.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $DisassociateResourceShareResponse = $ram->DisassociateResourceShare(
      ResourceShareArn => 'MyString',
      ClientToken      => 'MyString',             # OPTIONAL
      Principals       => [ 'MyString', ... ],    # OPTIONAL
      ResourceArns     => [ 'MyString', ... ],    # OPTIONAL
      Sources          => [ 'MyString', ... ],    # OPTIONAL
    );

    # Results:
    my $ClientToken = $DisassociateResourceShareResponse->ClientToken;
    my $ResourceShareAssociations =
      $DisassociateResourceShareResponse->ResourceShareAssociations;

    # Returns a L<Paws::RAM::DisassociateResourceShareResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/DisassociateResourceShare>

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



=head2 Principals => ArrayRef[Str|Undef]

Specifies a list of one or more principals that no longer are to have
access to the resources in this resource share.

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

Specifies a list of Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
for one or more resources that you want to remove from the resource
share. After the operation runs, these resources are no longer shared
with principals associated with the resource share.



=head2 B<REQUIRED> ResourceShareArn => Str

Specifies Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the resource share that you want to remove resources or principals
from.



=head2 Sources => ArrayRef[Str|Undef]

Specifies from which source accounts the service principal no longer
has access to the resources in this resource share.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DisassociateResourceShare in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

