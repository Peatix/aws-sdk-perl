
package Paws::RAM::ReplacePermissionAssociations;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has FromPermissionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'fromPermissionArn', required => 1);
  has FromPermissionVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'fromPermissionVersion');
  has ToPermissionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'toPermissionArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ReplacePermissionAssociations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/replacepermissionassociations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::ReplacePermissionAssociationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::ReplacePermissionAssociations - Arguments for method ReplacePermissionAssociations on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ReplacePermissionAssociations on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method ReplacePermissionAssociations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ReplacePermissionAssociations.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $ReplacePermissionAssociationsResponse =
      $ram->ReplacePermissionAssociations(
      FromPermissionArn     => 'MyString',
      ToPermissionArn       => 'MyString',
      ClientToken           => 'MyString',    # OPTIONAL
      FromPermissionVersion => 1,             # OPTIONAL
      );

    # Results:
    my $ClientToken = $ReplacePermissionAssociationsResponse->ClientToken;
    my $ReplacePermissionAssociationsWork =
      $ReplacePermissionAssociationsResponse->ReplacePermissionAssociationsWork;

    # Returns a L<Paws::RAM::ReplacePermissionAssociationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/ReplacePermissionAssociations>

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



=head2 B<REQUIRED> FromPermissionArn => Str

Specifies the Amazon Resource Name (ARN)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
of the managed permission that you want to replace.



=head2 FromPermissionVersion => Int

Specifies that you want to updated the permissions for only those
resource shares that use the specified version of the managed
permission.



=head2 B<REQUIRED> ToPermissionArn => Str

Specifies the ARN of the managed permission that you want to associate
with resource shares in place of the one specified by
C<fromPerssionArn> and C<fromPermissionVersion>.

The operation always associates the version that is currently the
default for the specified managed permission.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ReplacePermissionAssociations in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

