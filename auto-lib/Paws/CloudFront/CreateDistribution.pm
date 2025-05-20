
package Paws::CloudFront::CreateDistribution;
  use Moose;
  has DistributionConfig => (is => 'ro', isa => 'Paws::CloudFront::DistributionConfig', traits => ['ParamInBody'], required => 1);


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDistribution');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/distribution');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateDistributionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  
    
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateDistribution - Arguments for method CreateDistribution on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDistribution2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateDistribution2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDistribution2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateDistributionResult = $cloudfront->CreateDistribution(
      DistributionConfig => {
        CallerReference      => 'Mystring',
        Comment              => 'MyCommentType',
        DefaultCacheBehavior => {
          TargetOriginId       => 'Mystring',
          ViewerProtocolPolicy =>
            'allow-all',    # values: allow-all, https-only, redirect-to-https
          AllowedMethods => {
            Items => [
              'GET', ...  # values: GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
            ],
            Quantity      => 1,
            CachedMethods => {
              Items => [
                'GET',
                ...       # values: GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
              ],
              Quantity => 1,

            },    # OPTIONAL
          },    # OPTIONAL
          CachePolicyId          => 'Mystring',
          Compress               => 1,            # OPTIONAL
          DefaultTTL             => 1,            # OPTIONAL
          FieldLevelEncryptionId => 'Mystring',
          ForwardedValues        => {
            Cookies => {
              Forward          => 'none',         # values: none, whitelist, all
              WhitelistedNames => {
                Quantity => 1,
                Items    => [ 'Mystring', ... ],    # OPTIONAL
              },    # OPTIONAL
            },
            QueryString => 1,    # OPTIONAL
            Headers     => {
              Quantity => 1,
              Items    => [ 'Mystring', ... ],    # OPTIONAL
            },    # OPTIONAL
            QueryStringCacheKeys => {
              Quantity => 1,
              Items    => [ 'Mystring', ... ],    # OPTIONAL
            },    # OPTIONAL
          },    # OPTIONAL
          FunctionAssociations => {
            Quantity => 1,
            Items    => [
              {
                EventType => 'viewer-request'
                , # values: viewer-request, viewer-response, origin-request, origin-response
                FunctionARN => 'MyFunctionARN',    # max: 108

              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
          GrpcConfig => {
            Enabled => 1,    # OPTIONAL

          },    # OPTIONAL
          LambdaFunctionAssociations => {
            Quantity => 1,
            Items    => [
              {
                EventType => 'viewer-request'
                , # values: viewer-request, viewer-response, origin-request, origin-response
                LambdaFunctionARN => 'MyLambdaFunctionARN',
                IncludeBody       => 1,                       # OPTIONAL
              },
              ...
            ],    # OPTIONAL
          },    # OPTIONAL
          MaxTTL                  => 1,            # OPTIONAL
          MinTTL                  => 1,            # OPTIONAL
          OriginRequestPolicyId   => 'Mystring',
          RealtimeLogConfigArn    => 'Mystring',
          ResponseHeadersPolicyId => 'Mystring',
          SmoothStreaming         => 1,            # OPTIONAL
          TrustedKeyGroups        => {
            Enabled  => 1,                         # OPTIONAL
            Quantity => 1,
            Items    => [ 'Mystring', ... ],       # OPTIONAL
          },    # OPTIONAL
          TrustedSigners => {
            Enabled  => 1,                      # OPTIONAL
            Quantity => 1,
            Items    => [ 'Mystring', ... ],    # OPTIONAL
          },    # OPTIONAL
        },
        Enabled => 1,    # OPTIONAL
        Origins => {
          Items => [
            {
              DomainName         => 'Mystring',
              Id                 => 'Mystring',
              ConnectionAttempts => 1,
              ConnectionTimeout  => 1,
              CustomHeaders      => {
                Quantity => 1,
                Items    => [
                  {
                    HeaderName  => 'Mystring',
                    HeaderValue => 'MysensitiveStringType',

                  },
                  ...
                ],    # OPTIONAL
              },    # OPTIONAL
              CustomOriginConfig => {
                HTTPPort             => 1,
                HTTPSPort            => 1,
                OriginProtocolPolicy =>
                  'http-only',    # values: http-only, match-viewer, https-only
                OriginKeepaliveTimeout => 1,
                OriginReadTimeout      => 1,
                OriginSslProtocols     => {
                  Items => [
                    'SSLv3', ...    # values: SSLv3, TLSv1, TLSv1.1, TLSv1.2
                  ],
                  Quantity => 1,

                },    # OPTIONAL
              },    # OPTIONAL
              OriginAccessControlId => 'Mystring',
              OriginPath            => 'Mystring',
              OriginShield          => {
                Enabled            => 1,     # OPTIONAL
                OriginShieldRegion =>
                  'MyOriginShieldRegion',    # min: 1, max: 32; OPTIONAL
              },    # OPTIONAL
              S3OriginConfig => {
                OriginAccessIdentity => 'Mystring',

              },    # OPTIONAL
              VpcOriginConfig => {
                VpcOriginId            => 'Mystring',
                OriginKeepaliveTimeout => 1,
                OriginReadTimeout      => 1,
              },    # OPTIONAL
            },
            ...
          ],    # min: 1
          Quantity => 1,

        },
        Aliases => {
          Quantity => 1,
          Items    => [ 'Mystring', ... ],    # OPTIONAL
        },    # OPTIONAL
        AnycastIpListId => 'Mystring',
        CacheBehaviors  => {
          Quantity => 1,
          Items    => [
            {
              PathPattern          => 'Mystring',
              TargetOriginId       => 'Mystring',
              ViewerProtocolPolicy =>
                'allow-all',  # values: allow-all, https-only, redirect-to-https
              AllowedMethods => {
                Items => [
                  'GET',
                  ...    # values: GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
                ],
                Quantity      => 1,
                CachedMethods => {
                  Items => [
                    'GET',
                    ...   # values: GET, HEAD, POST, PUT, PATCH, OPTIONS, DELETE
                  ],
                  Quantity => 1,

                },    # OPTIONAL
              },    # OPTIONAL
              CachePolicyId          => 'Mystring',
              Compress               => 1,            # OPTIONAL
              DefaultTTL             => 1,            # OPTIONAL
              FieldLevelEncryptionId => 'Mystring',
              ForwardedValues        => {
                Cookies => {
                  Forward          => 'none',    # values: none, whitelist, all
                  WhitelistedNames => {
                    Quantity => 1,
                    Items    => [ 'Mystring', ... ],    # OPTIONAL
                  },    # OPTIONAL
                },
                QueryString => 1,    # OPTIONAL
                Headers     => {
                  Quantity => 1,
                  Items    => [ 'Mystring', ... ],    # OPTIONAL
                },    # OPTIONAL
                QueryStringCacheKeys => {
                  Quantity => 1,
                  Items    => [ 'Mystring', ... ],    # OPTIONAL
                },    # OPTIONAL
              },    # OPTIONAL
              FunctionAssociations => {
                Quantity => 1,
                Items    => [
                  {
                    EventType => 'viewer-request'
                    , # values: viewer-request, viewer-response, origin-request, origin-response
                    FunctionARN => 'MyFunctionARN',    # max: 108

                  },
                  ...
                ],    # OPTIONAL
              },    # OPTIONAL
              GrpcConfig => {
                Enabled => 1,    # OPTIONAL

              },    # OPTIONAL
              LambdaFunctionAssociations => {
                Quantity => 1,
                Items    => [
                  {
                    EventType => 'viewer-request'
                    , # values: viewer-request, viewer-response, origin-request, origin-response
                    LambdaFunctionARN => 'MyLambdaFunctionARN',
                    IncludeBody       => 1,                       # OPTIONAL
                  },
                  ...
                ],    # OPTIONAL
              },    # OPTIONAL
              MaxTTL                  => 1,            # OPTIONAL
              MinTTL                  => 1,            # OPTIONAL
              OriginRequestPolicyId   => 'Mystring',
              RealtimeLogConfigArn    => 'Mystring',
              ResponseHeadersPolicyId => 'Mystring',
              SmoothStreaming         => 1,            # OPTIONAL
              TrustedKeyGroups        => {
                Enabled  => 1,                         # OPTIONAL
                Quantity => 1,
                Items    => [ 'Mystring', ... ],       # OPTIONAL
              },    # OPTIONAL
              TrustedSigners => {
                Enabled  => 1,                      # OPTIONAL
                Quantity => 1,
                Items    => [ 'Mystring', ... ],    # OPTIONAL
              },    # OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        ConnectionMode => 'direct',    # values: direct, tenant-only; OPTIONAL
        ContinuousDeploymentPolicyId => 'Mystring',
        CustomErrorResponses         => {
          Quantity => 1,
          Items    => [
            {
              ErrorCode          => 1,
              ErrorCachingMinTTL => 1,            # OPTIONAL
              ResponseCode       => 'Mystring',
              ResponsePagePath   => 'Mystring',
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        DefaultRootObject => 'Mystring',
        HttpVersion       =>
          'http1.1',    # values: http1.1, http2, http3, http2and3; OPTIONAL
        IsIPV6Enabled => 1,    # OPTIONAL
        Logging       => {
          Bucket         => 'Mystring',
          Enabled        => 1,            # OPTIONAL
          IncludeCookies => 1,            # OPTIONAL
          Prefix         => 'Mystring',
        },    # OPTIONAL
        OriginGroups => {
          Quantity => 1,
          Items    => [
            {
              FailoverCriteria => {
                StatusCodes => {
                  Items    => [ 1, ... ],    # min: 1
                  Quantity => 1,

                },

              },
              Id      => 'Mystring',
              Members => {
                Items => [
                  {
                    OriginId => 'Mystring',

                  },
                  ...
                ],    # min: 2, max: 2
                Quantity => 1,

              },
              SelectionCriteria =>
                'default',    # values: default, media-quality-based; OPTIONAL
            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        PriceClass => 'PriceClass_100'
        , # values: PriceClass_100, PriceClass_200, PriceClass_All, None; OPTIONAL
        Restrictions => {
          GeoRestriction => {
            Quantity        => 1,
            RestrictionType => 'blacklist', # values: blacklist, whitelist, none
            Items           => [ 'Mystring', ... ],    # OPTIONAL
          },

        },    # OPTIONAL
        Staging      => 1,    # OPTIONAL
        TenantConfig => {
          ParameterDefinitions => [
            {
              Definition => {
                StringSchema => {
                  Required     => 1,            # OPTIONAL
                  Comment      => 'Mystring',
                  DefaultValue =>
                    'MyParameterValue',         # min: 1, max: 256; OPTIONAL
                },    # OPTIONAL
              },
              Name => 'MyParameterName',    # min: 1, max: 128

            },
            ...
          ],    # OPTIONAL
        },    # OPTIONAL
        ViewerCertificate => {
          ACMCertificateArn => 'Mystring',
          Certificate       => 'Mystring',
          CertificateSource =>
            'cloudfront',    # values: cloudfront, iam, acm; OPTIONAL
          CloudFrontDefaultCertificate => 1,            # OPTIONAL
          IAMCertificateId             => 'Mystring',
          MinimumProtocolVersion       => 'SSLv3'
          , # values: SSLv3, TLSv1, TLSv1_2016, TLSv1.1_2016, TLSv1.2_2018, TLSv1.2_2019, TLSv1.2_2021; OPTIONAL
          SSLSupportMethod =>
            'sni-only',    # values: sni-only, vip, static-ip; OPTIONAL
        },    # OPTIONAL
        WebACLId => 'Mystring',
      },

    );

    # Results:
    my $Distribution = $CreateDistributionResult->Distribution;
    my $ETag         = $CreateDistributionResult->ETag;
    my $Location     = $CreateDistributionResult->Location;

    # Returns a L<Paws::CloudFront::CreateDistributionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateDistribution>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DistributionConfig => L<Paws::CloudFront::DistributionConfig>

The distribution's configuration information.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDistribution2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

