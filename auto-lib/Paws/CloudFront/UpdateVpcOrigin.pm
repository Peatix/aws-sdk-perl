
package Paws::CloudFront::UpdateVpcOrigin;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader'], required => 1);
  has VpcOriginEndpointConfig => (is => 'ro', isa => 'Paws::CloudFront::VpcOriginEndpointConfig', traits => ['ParamInBody'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateVpcOrigin');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/vpc-origin/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::UpdateVpcOriginResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateVpcOrigin - Arguments for method UpdateVpcOrigin on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateVpcOrigin2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method UpdateVpcOrigin2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateVpcOrigin2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $UpdateVpcOriginResult = $cloudfront->UpdateVpcOrigin(
      Id                      => 'Mystring',
      IfMatch                 => 'Mystring',
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

    );

    # Results:
    my $ETag      = $UpdateVpcOriginResult->ETag;
    my $VpcOrigin = $UpdateVpcOriginResult->VpcOrigin;

    # Returns a L<Paws::CloudFront::UpdateVpcOriginResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/UpdateVpcOrigin>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The VPC origin ID.



=head2 B<REQUIRED> IfMatch => Str

The VPC origin to update, if a match occurs.



=head2 B<REQUIRED> VpcOriginEndpointConfig => L<Paws::CloudFront::VpcOriginEndpointConfig>

The VPC origin endpoint configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateVpcOrigin2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

