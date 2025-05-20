
package Paws::SSM::PutParameter;
  use Moose;
  has AllowedPattern => (is => 'ro', isa => 'Str');
  has DataType => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has KeyId => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Overwrite => (is => 'ro', isa => 'Bool');
  has Policies => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'ArrayRef[Paws::SSM::Tag]');
  has Tier => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str');
  has Value => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutParameter');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SSM::PutParameterResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSM::PutParameter - Arguments for method PutParameter on L<Paws::SSM>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutParameter on the
L<Amazon Simple Systems Manager (SSM)|Paws::SSM> service. Use the attributes of this class
as arguments to method PutParameter.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutParameter.

=head1 SYNOPSIS

    my $ssm = Paws->service('SSM');
    my $PutParameterResult = $ssm->PutParameter(
      Name           => 'MyPSParameterName',
      Value          => 'MyPSParameterValue',
      AllowedPattern => 'MyAllowedPattern',          # OPTIONAL
      DataType       => 'MyParameterDataType',       # OPTIONAL
      Description    => 'MyParameterDescription',    # OPTIONAL
      KeyId          => 'MyParameterKeyId',          # OPTIONAL
      Overwrite      => 1,                           # OPTIONAL
      Policies       => 'MyParameterPolicies',       # OPTIONAL
      Tags           => [
        {
          Key   => 'MyTagKey',      # min: 1, max: 128
          Value => 'MyTagValue',    # max: 256

        },
        ...
      ],    # OPTIONAL
      Tier => 'Standard',    # OPTIONAL
      Type => 'String',      # OPTIONAL
    );

    # Results:
    my $Tier    = $PutParameterResult->Tier;
    my $Version = $PutParameterResult->Version;

    # Returns a L<Paws::SSM::PutParameterResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/ssm/PutParameter>

=head1 ATTRIBUTES


=head2 AllowedPattern => Str

A regular expression used to validate the parameter value. For example,
for String types with values restricted to numbers, you can specify the
following: AllowedPattern=^\d+$



=head2 DataType => Str

The data type for a C<String> parameter. Supported data types include
plain text and Amazon Machine Image (AMI) IDs.

B<The following data type values are supported.>

=over

=item *

C<text>

=item *

C<aws:ec2:image>

=item *

C<aws:ssm:integration>

=back

When you create a C<String> parameter and specify C<aws:ec2:image>,
Amazon Web Services Systems Manager validates the parameter value is in
the required format, such as C<ami-12345abcdeEXAMPLE>, and that the
specified AMI is available in your Amazon Web Services account.

If the action is successful, the service sends back an HTTP 200
response which indicates a successful C<PutParameter> call for all
cases except for data type C<aws:ec2:image>. If you call
C<PutParameter> with C<aws:ec2:image> data type, a successful HTTP 200
response does not guarantee that your parameter was successfully
created or updated. The C<aws:ec2:image> value is validated
asynchronously, and the C<PutParameter> call returns before the
validation is complete. If you submit an invalid AMI value, the
PutParameter operation will return success, but the asynchronous
validation will fail and the parameter will not be created or updated.
To monitor whether your C<aws:ec2:image> parameters are created
successfully, see Setting up notifications or trigger actions based on
Parameter Store events
(https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-cwe.html).
For more information about AMI format validation , see Native parameter
support for Amazon Machine Image IDs
(https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-ec2-aliases.html).



=head2 Description => Str

Information about the parameter that you want to add to the system.
Optional but recommended.

Don't enter personally identifiable information in this field.



=head2 KeyId => Str

The Key Management Service (KMS) ID that you want to use to encrypt a
parameter. Use a custom key for better security. Required for
parameters that use the C<SecureString> data type.

If you don't specify a key ID, the system uses the default key
associated with your Amazon Web Services account, which is not as
secure as using a custom key.

=over

=item *

To use a custom KMS key, choose the C<SecureString> data type with the
C<Key ID> parameter.

=back




=head2 B<REQUIRED> Name => Str

The fully qualified name of the parameter that you want to create or
update.

You can't enter the Amazon Resource Name (ARN) for a parameter, only
the parameter name itself.

The fully qualified name includes the complete hierarchy of the
parameter path and name. For parameters in a hierarchy, you must
include a leading forward slash character (/) when you create or
reference a parameter. For example: C</Dev/DBServer/MySQL/db-string13>

Naming Constraints:

=over

=item *

Parameter names are case sensitive.

=item *

A parameter name must be unique within an Amazon Web Services Region

=item *

A parameter name can't be prefixed with "C<aws>" or "C<ssm>"
(case-insensitive).

=item *

Parameter names can include only the following symbols and letters:
C<a-zA-Z0-9_.->

In addition, the slash character ( / ) is used to delineate hierarchies
in parameter names. For example:
C</Dev/Production/East/Project-ABC/MyParameter>

=item *

A parameter name can't include spaces.

=item *

Parameter hierarchies are limited to a maximum depth of fifteen levels.

=back

For additional information about valid values for parameter names, see
Creating Systems Manager parameters
(https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-paramstore-su-create.html)
in the I<Amazon Web Services Systems Manager User Guide>.

The reported maximum length of 2048 characters for a parameter name
includes 1037 characters that are reserved for internal use by Systems
Manager. The maximum length for a parameter name that you specify is
1011 characters.

This count of 1011 characters includes the characters in the ARN that
precede the name you specify. This ARN length will vary depending on
your partition and Region. For example, the following 45 characters
count toward the 1011 character maximum for a parameter created in the
US East (Ohio) Region:
C<arn:aws:ssm:us-east-2:111122223333:parameter/>.



=head2 Overwrite => Bool

Overwrite an existing parameter. The default value is C<false>.



=head2 Policies => Str

One or more policies to apply to a parameter. This operation takes a
JSON array. Parameter Store, a tool in Amazon Web Services Systems
Manager supports the following policy types:

Expiration: This policy deletes the parameter after it expires. When
you create the policy, you specify the expiration date. You can update
the expiration date and time by updating the policy. Updating the
I<parameter> doesn't affect the expiration date and time. When the
expiration time is reached, Parameter Store deletes the parameter.

ExpirationNotification: This policy initiates an event in Amazon
CloudWatch Events that notifies you about the expiration. By using this
policy, you can receive notification before or after the expiration
time is reached, in units of days or hours.

NoChangeNotification: This policy initiates a CloudWatch Events event
if a parameter hasn't been modified for a specified period of time.
This policy type is useful when, for example, a secret needs to be
changed within a period of time, but it hasn't been changed.

All existing policies are preserved until you send new policies or an
empty policy. For more information about parameter policies, see
Assigning parameter policies
(https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-policies.html).



=head2 Tags => ArrayRef[L<Paws::SSM::Tag>]

Optional metadata that you assign to a resource. Tags enable you to
categorize a resource in different ways, such as by purpose, owner, or
environment. For example, you might want to tag a Systems Manager
parameter to identify the type of resource to which it applies, the
environment, or the type of configuration data referenced by the
parameter. In this case, you could specify the following key-value
pairs:

=over

=item *

C<Key=Resource,Value=S3bucket>

=item *

C<Key=OS,Value=Windows>

=item *

C<Key=ParameterType,Value=LicenseKey>

=back

To add tags to an existing Systems Manager parameter, use the
AddTagsToResource operation.



=head2 Tier => Str

The parameter tier to assign to a parameter.

Parameter Store offers a standard tier and an advanced tier for
parameters. Standard parameters have a content size limit of 4 KB and
can't be configured to use parameter policies. You can create a maximum
of 10,000 standard parameters for each Region in an Amazon Web Services
account. Standard parameters are offered at no additional cost.

Advanced parameters have a content size limit of 8 KB and can be
configured to use parameter policies. You can create a maximum of
100,000 advanced parameters for each Region in an Amazon Web Services
account. Advanced parameters incur a charge. For more information, see
Managing parameter tiers
(https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html)
in the I<Amazon Web Services Systems Manager User Guide>.

You can change a standard parameter to an advanced parameter any time.
But you can't revert an advanced parameter to a standard parameter.
Reverting an advanced parameter to a standard parameter would result in
data loss because the system would truncate the size of the parameter
from 8 KB to 4 KB. Reverting would also remove any policies attached to
the parameter. Lastly, advanced parameters use a different form of
encryption than standard parameters.

If you no longer need an advanced parameter, or if you no longer want
to incur charges for an advanced parameter, you must delete it and
recreate it as a new standard parameter.

B<Using the Default Tier Configuration>

In C<PutParameter> requests, you can specify the tier to create the
parameter in. Whenever you specify a tier in the request, Parameter
Store creates or updates the parameter according to that request.
However, if you don't specify a tier in a request, Parameter Store
assigns the tier based on the current Parameter Store default tier
configuration.

The default tier when you begin using Parameter Store is the
standard-parameter tier. If you use the advanced-parameter tier, you
can specify one of the following as the default:

=over

=item *

B<Advanced>: With this option, Parameter Store evaluates all requests
as advanced parameters.

=item *

B<Intelligent-Tiering>: With this option, Parameter Store evaluates
each request to determine if the parameter is standard or advanced.

If the request doesn't include any options that require an advanced
parameter, the parameter is created in the standard-parameter tier. If
one or more options requiring an advanced parameter are included in the
request, Parameter Store create a parameter in the advanced-parameter
tier.

This approach helps control your parameter-related costs by always
creating standard parameters unless an advanced parameter is necessary.

=back

Options that require an advanced parameter include the following:

=over

=item *

The content size of the parameter is more than 4 KB.

=item *

The parameter uses a parameter policy.

=item *

More than 10,000 parameters already exist in your Amazon Web Services
account in the current Amazon Web Services Region.

=back

For more information about configuring the default tier option, see
Specifying a default parameter tier
(https://docs.aws.amazon.com/systems-manager/latest/userguide/parameter-store-advanced-parameters.html#ps-default-tier)
in the I<Amazon Web Services Systems Manager User Guide>.

Valid values are: C<"Standard">, C<"Advanced">, C<"Intelligent-Tiering">

=head2 Type => Str

The type of parameter that you want to create.

C<SecureString> isn't currently supported for CloudFormation templates.

Items in a C<StringList> must be separated by a comma (,). You can't
use other punctuation or special character to escape items in the list.
If you have a parameter value that requires a comma, then use the
C<String> data type.

Specifying a parameter type isn't required when updating a parameter.
You must specify a parameter type when creating a parameter.

Valid values are: C<"String">, C<"StringList">, C<"SecureString">

=head2 B<REQUIRED> Value => Str

The parameter value that you want to add to the system. Standard
parameters have a value limit of 4 KB. Advanced parameters have a value
limit of 8 KB.

Parameters can't be referenced or nested in the values of other
parameters. You can't include values wrapped in double brackets C<{{}}>
or C<{{ssm:I<parameter-name>}}> in a parameter value.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutParameter in L<Paws::SSM>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

