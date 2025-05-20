
package Paws::Resiliencehub::DescribeAppVersionTemplateResponse;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has AppTemplateBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appTemplateBody', required => 1);
  has AppVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appVersion', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::DescribeAppVersionTemplateResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.


=head2 B<REQUIRED> AppTemplateBody => Str

A JSON string that provides information about your application
structure. To learn more about the C<appTemplateBody> template, see the
sample template provided in the I<Examples> section.

The C<appTemplateBody> JSON string has the following structure:

=over

=item *

B<C<resources>>

The list of logical resources that must be included in the Resilience
Hub application.

Type: Array

Don't add the resources that you want to exclude.

Each C<resources> array item includes the following fields:

=over

=item *

I<C<logicalResourceId>>

Logical identifier of the resource.

Type: Object

Each C<logicalResourceId> object includes the following fields:

=over

=item *

C<identifier>

Identifier of the resource.

Type: String

=item *

C<logicalStackName>

The name of the CloudFormation stack this resource belongs to.

Type: String

=item *

C<resourceGroupName>

The name of the resource group this resource belongs to.

Type: String

=item *

C<terraformSourceName>

The name of the Terraform S3 state file this resource belongs to.

Type: String

=item *

C<eksSourceName>

Name of the Amazon Elastic Kubernetes Service cluster and namespace
this resource belongs to.

This parameter accepts values in "eks-cluster/namespace" format.

Type: String

=back

=item *

I<C<type>>

The type of resource.

Type: string

=item *

I<C<name>>

The name of the resource.

Type: String

=item *

C<additionalInfo>

Additional configuration parameters for an Resilience Hub application.
If you want to implement C<additionalInfo> through the Resilience Hub
console rather than using an API call, see Configure the application
configuration parameters
(https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html).

Currently, this parameter accepts a key-value mapping (in a string
format) of only one failover region and one associated account.

Key: C<"failover-regions">

Value: C<"[{"region":"E<lt>REGIONE<gt>",
"accounts":[{"id":"E<lt>ACCOUNT_IDE<gt>"}]}]">

=back

=item *

B<C<appComponents>>

List of Application Components that this resource belongs to. If an
Application Component is not part of the Resilience Hub application, it
will be added.

Type: Array

Each C<appComponents> array item includes the following fields:

=over

=item *

C<name>

Name of the Application Component.

Type: String

=item *

C<type>

Type of Application Component. For more information about the types of
Application Component, see Grouping resources in an AppComponent
(https://docs.aws.amazon.com/resilience-hub/latest/userguide/AppComponent.grouping.html).

Type: String

=item *

C<resourceNames>

The list of included resources that are assigned to the Application
Component.

Type: Array of strings

=item *

C<additionalInfo>

Additional configuration parameters for an Resilience Hub application.
If you want to implement C<additionalInfo> through the Resilience Hub
console rather than using an API call, see Configure the application
configuration parameters
(https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html).

Currently, this parameter accepts a key-value mapping (in a string
format) of only one failover region and one associated account.

Key: C<"failover-regions">

Value: C<"[{"region":"E<lt>REGIONE<gt>",
"accounts":[{"id":"E<lt>ACCOUNT_IDE<gt>"}]}]">

=back

=item *

B<C<excludedResources>>

The list of logical resource identifiers to be excluded from the
application.

Type: Array

Don't add the resources that you want to include.

Each C<excludedResources> array item includes the following fields:

=over

=item *

I<C<logicalResourceIds>>

Logical identifier of the resource.

Type: Object

You can configure only one of the following fields:

=over

=item *

C<logicalStackName>

=item *

C<resourceGroupName>

=item *

C<terraformSourceName>

=item *

C<eksSourceName>

=back

Each C<logicalResourceIds> object includes the following fields:

=over

=item *

C<identifier>

Identifier of the resource.

Type: String

=item *

C<logicalStackName>

The name of the CloudFormation stack this resource belongs to.

Type: String

=item *

C<resourceGroupName>

The name of the resource group this resource belongs to.

Type: String

=item *

C<terraformSourceName>

The name of the Terraform S3 state file this resource belongs to.

Type: String

=item *

C<eksSourceName>

Name of the Amazon Elastic Kubernetes Service cluster and namespace
this resource belongs to.

This parameter accepts values in "eks-cluster/namespace" format.

Type: String

=back

=back

=item *

B<C<version>>

Resilience Hub application version.

=item *

C<additionalInfo>

Additional configuration parameters for an Resilience Hub application.
If you want to implement C<additionalInfo> through the Resilience Hub
console rather than using an API call, see Configure the application
configuration parameters
(https://docs.aws.amazon.com/resilience-hub/latest/userguide/app-config-param.html).

Currently, this parameter accepts a key-value mapping (in a string
format) of only one failover region and one associated account.

Key: C<"failover-regions">

Value: C<"[{"region":"E<lt>REGIONE<gt>",
"accounts":[{"id":"E<lt>ACCOUNT_IDE<gt>"}]}]">

=back



=head2 B<REQUIRED> AppVersion => Str

The version of the application.


=head2 _request_id => Str


=cut

