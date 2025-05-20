
package Paws::Resiliencehub::CreateAppVersionResource;
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Paws::Resiliencehub::AdditionalInfoMap', traits => ['NameInRequest'], request_name => 'additionalInfo');
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has AppComponents => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'appComponents', required => 1);
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsAccountId');
  has AwsRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsRegion');
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'clientToken');
  has LogicalResourceId => (is => 'ro', isa => 'Paws::Resiliencehub::LogicalResourceId', traits => ['NameInRequest'], request_name => 'logicalResourceId', required => 1);
  has PhysicalResourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'physicalResourceId', required => 1);
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateAppVersionResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/create-app-version-resource');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::CreateAppVersionResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::CreateAppVersionResource - Arguments for method CreateAppVersionResource on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateAppVersionResource on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method CreateAppVersionResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateAppVersionResource.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $CreateAppVersionResourceResponse =
      $resiliencehub->CreateAppVersionResource(
      AppArn        => 'MyArn',
      AppComponents => [
        'MyString255', ...    # min: 1, max: 255
      ],
      LogicalResourceId => {
        Identifier          => 'MyString255',     # min: 1, max: 255
        EksSourceName       => 'MyString255',     # min: 1, max: 255
        LogicalStackName    => 'MyString255',     # min: 1, max: 255
        ResourceGroupName   => 'MyEntityName',    # OPTIONAL
        TerraformSourceName => 'MyString255',     # min: 1, max: 255
      },
      PhysicalResourceId => 'MyString2048',
      ResourceType       => 'MyString255',
      AdditionalInfo     => {
        'MyString128WithoutWhitespace' => [
          'MyString1024', ...                     # min: 1, max: 1024
        ],    # , value: min: 1, max: 10
      },    # OPTIONAL
      AwsAccountId => 'MyCustomerId',     # OPTIONAL
      AwsRegion    => 'MyAwsRegion',      # OPTIONAL
      ClientToken  => 'MyClientToken',    # OPTIONAL
      ResourceName => 'MyEntityName',     # OPTIONAL
      );

    # Results:
    my $AppArn           = $CreateAppVersionResourceResponse->AppArn;
    my $AppVersion       = $CreateAppVersionResourceResponse->AppVersion;
    my $PhysicalResource = $CreateAppVersionResourceResponse->PhysicalResource;

    # Returns a L<Paws::Resiliencehub::CreateAppVersionResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/CreateAppVersionResource>

=head1 ATTRIBUTES


=head2 AdditionalInfo => L<Paws::Resiliencehub::AdditionalInfoMap>

Currently, there is no supported additional information for resources.



=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 B<REQUIRED> AppComponents => ArrayRef[Str|Undef]

List of Application Components that this resource belongs to. If an
Application Component is not part of the Resilience Hub application, it
will be added.



=head2 AwsAccountId => Str

Amazon Web Services account that owns the physical resource.



=head2 AwsRegion => Str

Amazon Web Services region that owns the physical resource.



=head2 ClientToken => Str

Used for an idempotency token. A client token is a unique,
case-sensitive string of up to 64 ASCII characters. You should not
reuse the same client token for other API requests.



=head2 B<REQUIRED> LogicalResourceId => L<Paws::Resiliencehub::LogicalResourceId>

Logical identifier of the resource.



=head2 B<REQUIRED> PhysicalResourceId => Str

Physical identifier of the resource.



=head2 ResourceName => Str

Name of the resource.



=head2 B<REQUIRED> ResourceType => Str

Type of resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateAppVersionResource in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

