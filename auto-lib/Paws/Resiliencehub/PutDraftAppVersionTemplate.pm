
package Paws::Resiliencehub::PutDraftAppVersionTemplate;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has AppTemplateBody => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appTemplateBody', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutDraftAppVersionTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/put-draft-app-version-template');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::PutDraftAppVersionTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::PutDraftAppVersionTemplate - Arguments for method PutDraftAppVersionTemplate on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutDraftAppVersionTemplate on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method PutDraftAppVersionTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutDraftAppVersionTemplate.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $PutDraftAppVersionTemplateResponse =
      $resiliencehub->PutDraftAppVersionTemplate(
      AppArn          => 'MyArn',
      AppTemplateBody => 'MyAppTemplateBody',

      );

    # Results:
    my $AppArn     = $PutDraftAppVersionTemplateResponse->AppArn;
    my $AppVersion = $PutDraftAppVersionTemplateResponse->AppVersion;

  # Returns a L<Paws::Resiliencehub::PutDraftAppVersionTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/PutDraftAppVersionTemplate>

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





=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutDraftAppVersionTemplate in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

