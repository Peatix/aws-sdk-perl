
package Paws::CloudFront::CreateResponseHeadersPolicy;
  use Moose;
  has ResponseHeadersPolicyConfig => (is => 'ro', isa => 'Paws::CloudFront::ResponseHeadersPolicyConfig', traits => ['ParamInBody'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateResponseHeadersPolicy');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/response-headers-policy');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateResponseHeadersPolicyResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateResponseHeadersPolicy - Arguments for method CreateResponseHeadersPolicy on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateResponseHeadersPolicy2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateResponseHeadersPolicy2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateResponseHeadersPolicy2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateResponseHeadersPolicyResult =
      $cloudfront->CreateResponseHeadersPolicy(
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

      );

    # Results:
    my $ETag     = $CreateResponseHeadersPolicyResult->ETag;
    my $Location = $CreateResponseHeadersPolicyResult->Location;
    my $ResponseHeadersPolicy =
      $CreateResponseHeadersPolicyResult->ResponseHeadersPolicy;

    # Returns a L<Paws::CloudFront::CreateResponseHeadersPolicyResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateResponseHeadersPolicy>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResponseHeadersPolicyConfig => L<Paws::CloudFront::ResponseHeadersPolicyConfig>

Contains metadata about the response headers policy, and a set of
configurations that specify the HTTP headers.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateResponseHeadersPolicy2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

