
package Paws::CloudControl::DeleteResource;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str');
  has Identifier => (is => 'ro', isa => 'Str', required => 1);
  has RoleArn => (is => 'ro', isa => 'Str');
  has TypeName => (is => 'ro', isa => 'Str', required => 1);
  has TypeVersionId => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteResource');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudControl::DeleteResourceOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudControl::DeleteResource - Arguments for method DeleteResource on L<Paws::CloudControl>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteResource on the
L<AWS Cloud Control API|Paws::CloudControl> service. Use the attributes of this class
as arguments to method DeleteResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteResource.

=head1 SYNOPSIS

    my $cloudcontrolapi = Paws->service('CloudControl');
    my $DeleteResourceOutput = $cloudcontrolapi->DeleteResource(
      Identifier    => 'MyIdentifier',
      TypeName      => 'MyTypeName',
      ClientToken   => 'MyClientToken',      # OPTIONAL
      RoleArn       => 'MyRoleArn',          # OPTIONAL
      TypeVersionId => 'MyTypeVersionId',    # OPTIONAL
    );

    # Results:
    my $ProgressEvent = $DeleteResourceOutput->ProgressEvent;

    # Returns a L<Paws::CloudControl::DeleteResourceOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudcontrolapi/DeleteResource>

=head1 ATTRIBUTES


=head2 ClientToken => Str

A unique identifier to ensure the idempotency of the resource request.
As a best practice, specify this token to ensure idempotency, so that
Amazon Web Services Cloud Control API can accurately distinguish
between request retries and new resource requests. You might retry a
resource request to ensure that it was successfully received.

A client token is valid for 36 hours once used. After that, a resource
request with the same client token is treated as a new request.

If you do not specify a client token, one is generated for inclusion in
the request.

For more information, see Ensuring resource operation requests are
unique
(https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-idempotency)
in the I<Amazon Web Services Cloud Control API User Guide>.



=head2 B<REQUIRED> Identifier => Str

The identifier for the resource.

You can specify the primary identifier, or any secondary identifier
defined for the resource type in its resource schema. You can only
specify one identifier. Primary identifiers can be specified as a
string or JSON; secondary identifiers must be specified as JSON.

For compound primary identifiers (that is, one that consists of
multiple resource properties strung together), to specify the primary
identifier as a string, list the property values I<in the order they
are specified> in the primary identifier definition, separated by C<|>.

For more information, see Identifying resources
(https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-identifier.html)
in the I<Amazon Web Services Cloud Control API User Guide>.



=head2 RoleArn => Str

The Amazon Resource Name (ARN) of the Identity and Access Management
(IAM) role for Cloud Control API to use when performing this resource
operation. The role specified must have the permissions required for
this operation. The necessary permissions for each event handler are
defined in the C< handlers
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html#schema-properties-handlers)
> section of the resource type definition schema
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-schema.html).

If you do not specify a role, Cloud Control API uses a temporary
session created using your Amazon Web Services user credentials.

For more information, see Specifying credentials
(https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/resource-operations.html#resource-operations-permissions)
in the I<Amazon Web Services Cloud Control API User Guide>.



=head2 B<REQUIRED> TypeName => Str

The name of the resource type.



=head2 TypeVersionId => Str

For private resource types, the type version to use in this resource
operation. If you do not specify a resource version, CloudFormation
uses the default version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteResource in L<Paws::CloudControl>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

