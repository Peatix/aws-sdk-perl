
package Paws::CloudFront::UpdateResponseHeadersPolicy;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader']);
  has ResponseHeadersPolicyConfig => (is => 'ro', isa => 'Paws::CloudFront::ResponseHeadersPolicyConfig', traits => ['ParamInBody'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateResponseHeadersPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/response-headers-policy/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::UpdateResponseHeadersPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateResponseHeadersPolicy - Arguments for method UpdateResponseHeadersPolicy on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateResponseHeadersPolicy2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method UpdateResponseHeadersPolicy2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateResponseHeadersPolicy2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $UpdateResponseHeadersPolicyResult =
      $cloudfront->UpdateResponseHeadersPolicy(
      Id                          => 'Mystring',
      ResponseHeadersPolicyConfig => {
        Name       => 'Mystring',
        Comment    => 'Mystring',
        CorsConfig => {
          AccessControlAllowCredentials => 1,
          AccessControlAllowHeaders     => {
            Items    => [ 'Mystring', ... ],
            Quantity => 1,

          },
          AccessControlAllowMethods => {
            Items => [
              'GET',
              ...    # values: GET, POST, OPTIONS, PUT, DELETE, PATCH, HEAD, ALL
            ],
            Quantity => 1,

          },
          AccessControlAllowOrigins => {
            Items    => [ 'Mystring', ... ],
            Quantity => 1,

          },
          OriginOverride             => 1,
          AccessControlExposeHeaders => {
            Quantity => 1,
            Items    => [ 'Mystring', ... ],    # OPTIONAL
          },    # OPTIONAL
          AccessControlMaxAgeSec => 1,
        },    # OPTIONAL
        CustomHeadersConfig => {
          Quantity => 1,
          Items    => [
            {
              Header   => 'Mystring',
              Override => 1,
              Value    => 'Mystring',

            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        RemoveHeadersConfig => {
          Quantity => 1,
          Items    => [
            {
              Header => 'Mystring',

            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        SecurityHeadersConfig => {
          ContentSecurityPolicy => {
            ContentSecurityPolicy => 'Mystring',
            Override              => 1,

          },    # OPTIONAL
          ContentTypeOptions => {
            Override => 1,

          },    # OPTIONAL
          FrameOptions => {
            FrameOption => 'DENY',    # values: DENY, SAMEORIGIN
            Override    => 1,

          },    # OPTIONAL
          ReferrerPolicy => {
            Override       => 1,
            ReferrerPolicy => 'no-referrer'
            , # values: no-referrer, no-referrer-when-downgrade, origin, origin-when-cross-origin, same-origin, strict-origin, strict-origin-when-cross-origin, unsafe-url

          },    # OPTIONAL
          StrictTransportSecurity => {
            AccessControlMaxAgeSec => 1,
            Override               => 1,
            IncludeSubdomains      => 1,
            Preload                => 1,
          },    # OPTIONAL
          XSSProtection => {
            Override   => 1,
            Protection => 1,
            ModeBlock  => 1,
            ReportUri  => 'Mystring',
          },    # OPTIONAL
        },    # OPTIONAL
        ServerTimingHeadersConfig => {
          Enabled      => 1,
          SamplingRate => 1,    # max: 100; OPTIONAL
        },    # OPTIONAL
      },
      IfMatch => 'Mystring',    # OPTIONAL
      );

    # Results:
    my $ETag = $UpdateResponseHeadersPolicyResult->ETag;
    my $ResponseHeadersPolicy =
      $UpdateResponseHeadersPolicyResult->ResponseHeadersPolicy;

    # Returns a L<Paws::CloudFront::UpdateResponseHeadersPolicyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/UpdateResponseHeadersPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The identifier for the response headers policy that you are updating.



=head2 IfMatch => Str

The version of the response headers policy that you are updating.

The version is returned in the cache policy's C<ETag> field in the
response to C<GetResponseHeadersPolicyConfig>.



=head2 B<REQUIRED> ResponseHeadersPolicyConfig => L<Paws::CloudFront::ResponseHeadersPolicyConfig>

A response headers policy configuration.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateResponseHeadersPolicy2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

