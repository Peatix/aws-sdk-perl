
package Paws::ImageBuilder::GetMarketplaceResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn', required => 1);
  has ResourceLocation => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceLocation');
  has ResourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceType', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetMarketplaceResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/GetMarketplaceResource');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::GetMarketplaceResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::GetMarketplaceResource - Arguments for method GetMarketplaceResource on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetMarketplaceResource on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method GetMarketplaceResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetMarketplaceResource.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $GetMarketplaceResourceResponse = $imagebuilder->GetMarketplaceResource(
      ResourceArn      => 'MyImageBuilderArn',
      ResourceType     => 'COMPONENT_DATA',
      ResourceLocation => 'MyMarketplaceResourceLocation',    # OPTIONAL
    );

    # Results:
    my $Data        = $GetMarketplaceResourceResponse->Data;
    my $ResourceArn = $GetMarketplaceResourceResponse->ResourceArn;
    my $Url         = $GetMarketplaceResourceResponse->Url;

    # Returns a L<Paws::ImageBuilder::GetMarketplaceResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/GetMarketplaceResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) that uniquely identifies an Amazon Web
Services Marketplace resource.



=head2 ResourceLocation => Str

The bucket path that you can specify to download the resource from
Amazon S3.



=head2 B<REQUIRED> ResourceType => Str

Specifies which type of Amazon Web Services Marketplace resource Image
Builder retrieves.

Valid values are: C<"COMPONENT_DATA">, C<"COMPONENT_ARTIFACT">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetMarketplaceResource in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

