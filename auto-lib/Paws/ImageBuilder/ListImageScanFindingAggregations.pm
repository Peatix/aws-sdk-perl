
package Paws::ImageBuilder::ListImageScanFindingAggregations;
  use Moose;
  has Filter => (is => 'ro', isa => 'Paws::ImageBuilder::Filter', traits => ['NameInRequest'], request_name => 'filter');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListImageScanFindingAggregations');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListImageScanFindingAggregations');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ImageBuilder::ListImageScanFindingAggregationsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::ListImageScanFindingAggregations - Arguments for method ListImageScanFindingAggregations on L<Paws::ImageBuilder>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListImageScanFindingAggregations on the
L<EC2 Image Builder|Paws::ImageBuilder> service. Use the attributes of this class
as arguments to method ListImageScanFindingAggregations.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListImageScanFindingAggregations.

=head1 SYNOPSIS

    my $imagebuilder = Paws->service('ImageBuilder');
    my $ListImageScanFindingAggregationsResponse =
      $imagebuilder->ListImageScanFindingAggregations(
      Filter => {
        Name   => 'MyFilterName',              # OPTIONAL
        Values => [ 'MyFilterValue', ... ],    # min: 1, max: 10; OPTIONAL
      },    # OPTIONAL
      NextToken => 'MyPaginationToken',    # OPTIONAL
      );

    # Results:
    my $AggregationType =
      $ListImageScanFindingAggregationsResponse->AggregationType;
    my $NextToken = $ListImageScanFindingAggregationsResponse->NextToken;
    my $RequestId = $ListImageScanFindingAggregationsResponse->RequestId;
    my $Responses = $ListImageScanFindingAggregationsResponse->Responses;

# Returns a L<Paws::ImageBuilder::ListImageScanFindingAggregationsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/imagebuilder/ListImageScanFindingAggregations>

=head1 ATTRIBUTES


=head2 Filter => L<Paws::ImageBuilder::Filter>





=head2 NextToken => Str

A token to specify where to start paginating. This is the nextToken
from a previously truncated response.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListImageScanFindingAggregations in L<Paws::ImageBuilder>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

