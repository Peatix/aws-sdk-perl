
package Paws::Resiliencehub::RemoveDraftAppVersionResourceMappings;
  use Moose;
  has AppArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'appArn', required => 1);
  has AppRegistryAppNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'appRegistryAppNames');
  has EksSourceNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'eksSourceNames');
  has LogicalStackNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'logicalStackNames');
  has ResourceGroupNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceGroupNames');
  has ResourceNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'resourceNames');
  has TerraformSourceNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'terraformSourceNames');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'RemoveDraftAppVersionResourceMappings');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/remove-draft-app-version-resource-mappings');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Resiliencehub::RemoveDraftAppVersionResourceMappingsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::RemoveDraftAppVersionResourceMappings - Arguments for method RemoveDraftAppVersionResourceMappings on L<Paws::Resiliencehub>

=head1 DESCRIPTION

This class represents the parameters used for calling the method RemoveDraftAppVersionResourceMappings on the
L<AWS Resilience Hub|Paws::Resiliencehub> service. Use the attributes of this class
as arguments to method RemoveDraftAppVersionResourceMappings.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to RemoveDraftAppVersionResourceMappings.

=head1 SYNOPSIS

    my $resiliencehub = Paws->service('Resiliencehub');
    my $RemoveDraftAppVersionResourceMappingsResponse =
      $resiliencehub->RemoveDraftAppVersionResourceMappings(
      AppArn              => 'MyArn',
      AppRegistryAppNames => [ 'MyEntityName', ... ],    # OPTIONAL
      EksSourceNames      => [
        'MyString255', ...                               # min: 1, max: 255
      ],    # OPTIONAL
      LogicalStackNames => [
        'MyString255', ...    # min: 1, max: 255
      ],    # OPTIONAL
      ResourceGroupNames   => [ 'MyEntityName', ... ],    # OPTIONAL
      ResourceNames        => [ 'MyEntityName', ... ],    # OPTIONAL
      TerraformSourceNames => [
        'MyString255', ...                                # min: 1, max: 255
      ],    # OPTIONAL
      );

    # Results:
    my $AppArn     = $RemoveDraftAppVersionResourceMappingsResponse->AppArn;
    my $AppVersion = $RemoveDraftAppVersionResourceMappingsResponse->AppVersion;

# Returns a L<Paws::Resiliencehub::RemoveDraftAppVersionResourceMappingsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/resiliencehub/RemoveDraftAppVersionResourceMappings>

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppArn => Str

Amazon Resource Name (ARN) of the Resilience Hub application. The
format for this ARN is:
arn:C<partition>:resiliencehub:C<region>:C<account>:app/C<app-id>. For
more information about ARNs, see Amazon Resource Names (ARNs)
(https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html)
in the I<Amazon Web Services General Reference> guide.



=head2 AppRegistryAppNames => ArrayRef[Str|Undef]

The names of the registered applications you want to remove from the
resource mappings.



=head2 EksSourceNames => ArrayRef[Str|Undef]

The names of the Amazon Elastic Kubernetes Service clusters and
namespaces you want to remove from the resource mappings.

This parameter accepts values in "eks-cluster/namespace" format.



=head2 LogicalStackNames => ArrayRef[Str|Undef]

The names of the CloudFormation stacks you want to remove from the
resource mappings.



=head2 ResourceGroupNames => ArrayRef[Str|Undef]

The names of the resource groups you want to remove from the resource
mappings.



=head2 ResourceNames => ArrayRef[Str|Undef]

The names of the resources you want to remove from the resource
mappings.



=head2 TerraformSourceNames => ArrayRef[Str|Undef]

The names of the Terraform sources you want to remove from the resource
mappings.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method RemoveDraftAppVersionResourceMappings in L<Paws::Resiliencehub>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

