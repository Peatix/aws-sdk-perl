
package Paws::CloudFront::CreateVpcOrigin;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::CloudFront::Tags');
  has VpcOriginEndpointConfig => (is => 'ro', isa => 'Paws::CloudFront::VpcOriginEndpointConfig', required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateVpcOrigin');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/vpc-origin');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateVpcOriginResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'CreateVpcOriginRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://cloudfront.amazonaws.com/doc/2020-05-31/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateVpcOrigin - Arguments for method CreateVpcOrigin on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateVpcOrigin2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateVpcOrigin2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateVpcOrigin2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateVpcOriginResult = $cloudfront->CreateVpcOrigin(
      VpcOriginEndpointConfig => {
        Arn                  => 'Mystring',
        HTTPPort             => 1,
        HTTPSPort            => 1,
        Name                 => 'Mystring',
        OriginProtocolPolicy =>
          'http-only',    # values: http-only, match-viewer, https-only
        OriginSslProtocols => {
          Items => [
            'SSLv3', ...    # values: SSLv3, TLSv1, TLSv1.1, TLSv1.2
          ],
          Quantity => 1,

        },    # OPTIONAL
      },
      Tags => {
        Items => [
          {
            Key   => 'MyTagKey',      # min: 1, max: 128
            Value => 'MyTagValue',    # max: 256; OPTIONAL
          },
          ...
        ],    # OPTIONAL
      },    # OPTIONAL
    );

    # Results:
    my $ETag      = $CreateVpcOriginResult->ETag;
    my $Location  = $CreateVpcOriginResult->Location;
    my $VpcOrigin = $CreateVpcOriginResult->VpcOrigin;

    # Returns a L<Paws::CloudFront::CreateVpcOriginResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateVpcOrigin>

=head1 ATTRIBUTES


=head2 Tags => L<Paws::CloudFront::Tags>





=head2 B<REQUIRED> VpcOriginEndpointConfig => L<Paws::CloudFront::VpcOriginEndpointConfig>

The VPC origin endpoint configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateVpcOrigin2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

