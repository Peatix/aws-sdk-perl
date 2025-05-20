
package Paws::Synthetics::ListTagsForResource;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'resourceArn', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListTagsForResource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/tags/{resourceArn}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Synthetics::ListTagsForResourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Synthetics::ListTagsForResource - Arguments for method ListTagsForResource on L<Paws::Synthetics>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListTagsForResource on the
L<Synthetics|Paws::Synthetics> service. Use the attributes of this class
as arguments to method ListTagsForResource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListTagsForResource.

=head1 SYNOPSIS

    my $synthetics = Paws->service('Synthetics');
    my $ListTagsForResourceResponse = $synthetics->ListTagsForResource(
      ResourceArn => 'MyResourceArn',

    );

    # Results:
    my $Tags = $ListTagsForResourceResponse->Tags;

    # Returns a L<Paws::Synthetics::ListTagsForResourceResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/synthetics/ListTagsForResource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The ARN of the canary or group that you want to view tags for.

The ARN format of a canary is
C<arn:aws:synthetics:I<Region>:I<account-id>:canary:I<canary-name> >.

The ARN format of a group is
C<arn:aws:synthetics:I<Region>:I<account-id>:group:I<group-name>>




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListTagsForResource in L<Paws::Synthetics>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

