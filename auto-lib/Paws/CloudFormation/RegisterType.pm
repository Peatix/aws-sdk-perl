
package Paws::CloudFormation::RegisterType;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has ExecutionRoleArn => (is => 'ro', isa => 'Str');
  has LoggingConfig => (is => 'ro', isa => 'Paws::CloudFormation::LoggingConfig');
  has SchemaHandlerPackage => (is => 'ro', isa => 'Str', required => 1);
  has Type => (is => 'ro', isa => 'Str');
  has TypeName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RegisterType');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFormation::RegisterTypeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'RegisterTypeResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::RegisterType - Arguments for method RegisterType on L<Paws::CloudFormation>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RegisterType on the
L<AWS CloudFormation|Paws::CloudFormation> service. Use the attributes of this class
as arguments to method RegisterType.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RegisterType.

=head1 SYNOPSIS

    my $cloudformation = Paws->service('CloudFormation');
    my $RegisterTypeOutput = $cloudformation->RegisterType(
      SchemaHandlerPackage => 'MyS3Url',
      TypeName             => 'MyTypeName',
      ClientRequestToken   => 'MyRequestToken',    # OPTIONAL
      ExecutionRoleArn     => 'MyRoleArn',         # OPTIONAL
      LoggingConfig        => {
        LogGroupName => 'MyLogGroupName',          # min: 1, max: 512
        LogRoleArn   => 'MyRoleArn',               # min: 1, max: 256

      },    # OPTIONAL
      Type => 'RESOURCE',    # OPTIONAL
    );

    # Results:
    my $RegistrationToken = $RegisterTypeOutput->RegistrationToken;

    # Returns a L<Paws::CloudFormation::RegisterTypeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudformation/RegisterType>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique identifier that acts as an idempotency key for this
registration request. Specifying a client request token prevents
CloudFormation from generating more than one version of an extension
from the same registration request, even if the request is submitted
multiple times.



=head2 ExecutionRoleArn => Str

The Amazon Resource Name (ARN) of the IAM role for CloudFormation to
assume when invoking the extension.

For CloudFormation to assume the specified execution role, the role
must contain a trust relationship with the CloudFormation service
principal (C<resources.cloudformation.amazonaws.com>). For more
information about adding trust relationships, see Modifying a role
trust policy
(https://docs.aws.amazon.com/IAM/latest/UserGuide/roles-managingrole-editing-console.html#roles-managingrole_edit-trust-policy)
in the I<Identity and Access Management User Guide>.

If your extension calls Amazon Web Services APIs in any of its
handlers, you must create an I< IAM execution role
(https://docs.aws.amazon.com/IAM/latest/UserGuide/id_roles.html) > that
includes the necessary permissions to call those Amazon Web Services
APIs, and provision that execution role in your account. When
CloudFormation needs to invoke the resource type handler,
CloudFormation assumes this execution role to create a temporary
session token, which it then passes to the resource type handler,
thereby supplying your resource type with the appropriate credentials.



=head2 LoggingConfig => L<Paws::CloudFormation::LoggingConfig>

Specifies logging configuration information for an extension.



=head2 B<REQUIRED> SchemaHandlerPackage => Str

A URL to the S3 bucket containing the extension project package that
contains the necessary files for the extension you want to register.

For information about generating a schema handler package for the
extension you want to register, see submit
(https://docs.aws.amazon.com/cloudformation-cli/latest/userguide/resource-type-cli-submit.html)
in the I<CloudFormation Command Line Interface (CLI) User Guide>.

The user registering the extension must be able to access the package
in the S3 bucket. That's, the user needs to have GetObject
(https://docs.aws.amazon.com/AmazonS3/latest/API/API_GetObject.html)
permissions for the schema handler package. For more information, see
Actions, Resources, and Condition Keys for Amazon S3
(https://docs.aws.amazon.com/IAM/latest/UserGuide/list_amazons3.html)
in the I<Identity and Access Management User Guide>.



=head2 Type => Str

The kind of extension.

Valid values are: C<"RESOURCE">, C<"MODULE">, C<"HOOK">

=head2 B<REQUIRED> TypeName => Str

The name of the extension being registered.

We suggest that extension names adhere to the following patterns:

=over

=item *

For resource types, C<company_or_organization::service::type>.

=item *

For modules, C<company_or_organization::service::type::MODULE>.

=item *

For Hooks, C<MyCompany::Testing::MyTestHook>.

=back

The following organization namespaces are reserved and can't be used in
your extension names:

=over

=item *

C<Alexa>

=item *

C<AMZN>

=item *

C<Amazon>

=item *

C<AWS>

=item *

C<Custom>

=item *

C<Dev>

=back





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RegisterType in L<Paws::CloudFormation>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

