
package Paws::RAM::CreatePermissionVersion;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has PermissionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'permissionArn', required => 1);
  has PolicyTemplate => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'policyTemplate', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreatePermissionVersion');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/createpermissionversion');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RAM::CreatePermissionVersionResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RAM::CreatePermissionVersion - Arguments for method CreatePermissionVersion on L<Paws::RAM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreatePermissionVersion on the
L<AWS Resource Access Manager|Paws::RAM> service. Use the attributes of this class
as arguments to method CreatePermissionVersion.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreatePermissionVersion.

=head1 SYNOPSIS

    my $ram = Paws->service('RAM');
    my $CreatePermissionVersionResponse = $ram->CreatePermissionVersion(
      PermissionArn  => 'MyString',
      PolicyTemplate => 'MyPolicy',
      ClientToken    => 'MyString',    # OPTIONAL
    );

    # Results:
    my $ClientToken = $CreatePermissionVersionResponse->ClientToken;
    my $Permission  = $CreatePermissionVersionResponse->Permission;

    # Returns a L<Paws::RAM::CreatePermissionVersionResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ram/CreatePermissionVersion>

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
of the customer managed permission you're creating a new version for.



=head2 B<REQUIRED> PolicyTemplate => Str

A string in JSON format string that contains the following elements of
a resource-based policy:

=over

=item *

B<Effect>: must be set to C<ALLOW>.

=item *

B<Action>: specifies the actions that are allowed by this customer
managed permission. The list must contain only actions that are
supported by the specified resource type. For a list of all actions
supported by each resource type, see Actions, resources, and condition
keys for Amazon Web Services services
(https://docs.aws.amazon.com/service-authorization/latest/reference/reference_policies_actions-resources-contextkeys.html)
in the I<Identity and Access Management User Guide>.

=item *

B<Condition>: (optional) specifies conditional parameters that must
evaluate to true when a user attempts an action for that action to be
allowed. For more information about the Condition element, see IAM
policies: Condition element
(https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_policies_elements_condition.html)
in the I<Identity and Access Management User Guide>.

=back

This template can't include either the C<Resource> or C<Principal>
elements. Those are both filled in by RAM when it instantiates the
resource-based policy on each resource shared using this managed
permission. The C<Resource> comes from the ARN of the specific resource
that you are sharing. The C<Principal> comes from the list of
identities added to the resource share.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreatePermissionVersion in L<Paws::RAM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

