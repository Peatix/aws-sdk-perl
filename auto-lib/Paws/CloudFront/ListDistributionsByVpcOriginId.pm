
package Paws::CloudFront::ListDistributionsByVpcOriginId;
  use Moose;
  has Marker => (is => 'ro', isa => 'Str', query_name => 'Marker', traits => ['ParamInQuery']);
  has MaxItems => (is => 'ro', isa => 'Str', query_name => 'MaxItems', traits => ['ParamInQuery']);
  has VpcOriginId => (is => 'ro', isa => 'Str', uri_name => 'VpcOriginId', traits => ['ParamInURI'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListDistributionsByVpcOriginId');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/distributionsByVpcOriginId/{VpcOriginId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::ListDistributionsByVpcOriginIdResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListDistributionsByVpcOriginId - Arguments for method ListDistributionsByVpcOriginId on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListDistributionsByVpcOriginId2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method ListDistributionsByVpcOriginId2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListDistributionsByVpcOriginId2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $ListDistributionsByVpcOriginIdResult =
      $cloudfront->ListDistributionsByVpcOriginId(
      VpcOriginId => 'Mystring',
      Marker      => 'Mystring',    # OPTIONAL
      MaxItems    => 'Mystring',    # OPTIONAL
      );

    # Results:
    my $DistributionIdList =
      $ListDistributionsByVpcOriginIdResult->DistributionIdList;

   # Returns a L<Paws::CloudFront::ListDistributionsByVpcOriginIdResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/ListDistributionsByVpcOriginId>

=head1 ATTRIBUTES


=head2 Marker => Str

The marker associated with the VPC origin distributions list.



=head2 MaxItems => Str

The maximum number of items included in the list.



=head2 B<REQUIRED> VpcOriginId => Str

The VPC origin ID.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListDistributionsByVpcOriginId2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

