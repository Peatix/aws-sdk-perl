
package Paws::Resiliencehub::AddDraftAppVersionResourceMappings;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has ResourceMappings => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::ResourceMapping]', traits => ['NameInRequest'], request_name => 'resourceMappings', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'AddDraftAppVersionResourceMappings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/add-draft-app-version-resource-mappings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::AddDraftAppVersionResourceMappingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::AddDraftAppVersionResourceMappings - Arguments for method AddDraftAppVersionResourceMappings on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method AddDraftAppVersionResourceMappings on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method AddDraftAppVersionResourceMappings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to AddDraftAppVersionResourceMappings.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $AddDraftAppVersionResourceMappingsResponse =
      $resiliencehub->AddDraftAppVersionResourceMappings(
      AppArn           => 'MyArn',
      ResourceMappings => [
        {
          MappingType => 'CfnStack'
          , # values: CfnStack, Resource, AppRegistryApp, ResourceGroup, Terraform, EKS
          PhysicalResourceId => {
            Identifier   => 'MyString255',     # min: 1, max: 255
            Type         => 'Arn',             # values: Arn, Native
            AwsAccountId => 'MyCustomerId',    # OPTIONAL
            AwsRegion    => 'MyAwsRegion',     # OPTIONAL
          },
          AppRegistryAppName  => 'MyEntityName',    # OPTIONAL
          EksSourceName       => 'MyString255',     # min: 1, max: 255
          LogicalStackName    => 'MyString255',     # min: 1, max: 255
          ResourceGroupName   => 'MyEntityName',    # OPTIONAL
          ResourceName        => 'MyEntityName',    # OPTIONAL
          TerraformSourceName => 'MyString255',     # min: 1, max: 255
        },
        ...
      ],

      );

    # Results:
    my $AppArn     = $AddDraftAppVersionResourceMappingsResponse->AppArn;
    my $AppVersion = $AddDraftAppVersionResourceMappingsResponse->AppVersion;
    my $ResourceMappings =
      $AddDraftAppVersionResourceMappingsResponse->ResourceMappings;

# Returns a L<Paws::Resiliencehub::AddDraftAppVersionResourceMappingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/AddDraftAppVersionResourceMappings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 B<REQUIRED> ResourceMappings => ArrayRef[L<Paws::Resiliencehub::ResourceMapping>]

Mappings used to map logical resources from the template to physical
resources. You can use the mapping type C<CFN_STACK> if the application
template uses a logical stack name. Or you can map individual resources
by using the mapping type C<RESOURCE>. We recommend using the mapping
type C<CFN_STACK> if the application is backed by a CloudFormation
stack.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method AddDraftAppVersionResourceMappings in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

