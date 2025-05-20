
package Paws::Resiliencehub::UpdateAppVersionResource;
  use Moose;
  has AdditionalInfo => (is => 'ro', isa => 'Paws::Resiliencehub::AdditionalInfoMap', traits => ['NameInRequest'], request_name => 'additionalInfo');
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has AppComponents => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'appComponents');
  has AwsAccountId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsAccountId');
  has AwsRegion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'awsRegion');
  has Excluded => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'excluded');
  has LogicalResourceId => (is => 'ro', isa => 'Paws::Resiliencehub::LogicalResourceId', traits => ['NameInRequest'], request_name => 'logicalResourceId');
  has PhysicalResourceId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'physicalResourceId');
  has ResourceName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceName');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAppVersionResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/update-app-version-resource');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::UpdateAppVersionResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::UpdateAppVersionResource - Arguments for method UpdateAppVersionResource on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAppVersionResource on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method UpdateAppVersionResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAppVersionResource.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $UpdateAppVersionResourceResponse =
      $resiliencehub->UpdateAppVersionResource(
      AppArn         => 'MyArn',
      AdditionalInfo => {
        'MyString128WithoutWhitespace' => [
          'MyString1024', ...    # min: 1, max: 1024
        ],    # , value: min: 1, max: 10
      },    # OPTIONAL
      AppComponents => [
        'MyString255', ...    # min: 1, max: 255
      ],    # OPTIONAL
      AwsAccountId      => 'MyCustomerId',    # OPTIONAL
      AwsRegion         => 'MyAwsRegion',     # OPTIONAL
      Excluded          => 1,                 # OPTIONAL
      LogicalResourceId => {
        Identifier          => 'MyString255',     # min: 1, max: 255
        EksSourceName       => 'MyString255',     # min: 1, max: 255
        LogicalStackName    => 'MyString255',     # min: 1, max: 255
        ResourceGroupName   => 'MyEntityName',    # OPTIONAL
        TerraformSourceName => 'MyString255',     # min: 1, max: 255
      },    # OPTIONAL
      PhysicalResourceId => 'MyString2048',    # OPTIONAL
      ResourceName       => 'MyEntityName',    # OPTIONAL
      ResourceType       => 'MyString255',     # OPTIONAL
      );

    # Results:
    my $AppArn           = $UpdateAppVersionResourceResponse->AppArn;
    my $AppVersion       = $UpdateAppVersionResourceResponse->AppVersion;
    my $PhysicalResource = $UpdateAppVersionResourceResponse->PhysicalResource;

    # Returns a L<Paws::Resiliencehub::UpdateAppVersionResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/UpdateAppVersionResource>

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



=head2 AppComponents => ArrayRef[Str|Undef]

List of Application Components that this resource belongs to. If an
Application Component is not part of the Resilience Hub application, it
will be added.



=head2 AwsAccountId => Str

Amazon Web Services account that owns the physical resource.



=head2 AwsRegion => Str

Amazon Web Services region that owns the physical resource.



=head2 Excluded => Bool

Indicates if a resource is excluded from an Resilience Hub application.

You can exclude only imported resources from an Resilience Hub
application.



=head2 LogicalResourceId => L<Paws::Resiliencehub::LogicalResourceId>

Logical identifier of the resource.



=head2 PhysicalResourceId => Str

Physical identifier of the resource.



=head2 ResourceName => Str

Name of the resource.



=head2 ResourceType => Str

Type of resource.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAppVersionResource in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

