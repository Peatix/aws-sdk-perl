
package Paws::LicenseManagerLinuxSubscriptions::ListTagsForResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{resourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::LicenseManagerLinuxSubscriptions::ListTagsForResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LicenseManagerLinuxSubscriptions::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::LicenseManagerLinuxSubscriptions>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<AWS License Manager Linux Subscriptions|Paws::LicenseManagerLinuxSubscriptions> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $license-manager-linux-subscriptions = Paws->service('LicenseManagerLinuxSubscriptions');
    my $ListTagsForResourceResponse =
      $license -manager-linux-subscriptions->ListTagsForResource(
      ResourceArn => 'MySubscriptionProviderArn',

      );

    # Results:
    my $Tags = $ListTagsForResourceResponse->Tags;

# Returns a L<Paws::LicenseManagerLinuxSubscriptions::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/license-manager-linux-subscriptions/ListTagsForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the resource for which to list
metadata tags.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::LicenseManagerLinuxSubscriptions>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

