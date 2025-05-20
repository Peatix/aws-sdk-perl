
package Paws::Lightsail::UpdateDistribution;
  use Moose;
  has CacheBehaviors => (is => 'ro', isa => 'ArrayRef[Paws::Lightsail::CacheBehaviorPerPath]', traits => ['NameInRequest'], request_name => 'cacheBehaviors' );
  has CacheBehaviorSettings => (is => 'ro', isa => 'Paws::Lightsail::CacheSettings', traits => ['NameInRequest'], request_name => 'cacheBehaviorSettings' );
  has CertificateName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'certificateName' );
  has DefaultCacheBehavior => (is => 'ro', isa => 'Paws::Lightsail::CacheBehavior', traits => ['NameInRequest'], request_name => 'defaultCacheBehavior' );
  has DistributionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'distributionName' , required => 1);
  has IsEnabled => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isEnabled' );
  has Origin => (is => 'ro', isa => 'Paws::Lightsail::InputOrigin', traits => ['NameInRequest'], request_name => 'origin' );
  has UseDefaultCertificate => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'useDefaultCertificate' );
  has ViewerMinimumTlsProtocolVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'viewerMinimumTlsProtocolVersion' );

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDistribution');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Lightsail::UpdateDistributionResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lightsail::UpdateDistribution - Arguments for method UpdateDistribution on L<Paws::Lightsail>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDistribution on the
L<Amazon Lightsail|Paws::Lightsail> service. Use the attributes of this class
as arguments to method UpdateDistribution.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDistribution.

=head1 SYNOPSIS

    my $lightsail = Paws->service('Lightsail');
    my $UpdateDistributionResult = $lightsail->UpdateDistribution(
      DistributionName      => 'MyResourceName',
      CacheBehaviorSettings => {
        AllowedHTTPMethods => 'MyNonEmptyString',    # OPTIONAL
        CachedHTTPMethods  => 'MyNonEmptyString',    # OPTIONAL
        DefaultTTL         => 1,                     # OPTIONAL
        ForwardedCookies   => {
          CookiesAllowList => [ 'Mystring', ... ],    # OPTIONAL
          Option           => 'none',  # values: none, allow-list, all; OPTIONAL
        },    # OPTIONAL
        ForwardedHeaders => {
          HeadersAllowList => [
            'Accept',
            ... # values: Accept, Accept-Charset, Accept-Datetime, Accept-Encoding, Accept-Language, Authorization, CloudFront-Forwarded-Proto, CloudFront-Is-Desktop-Viewer, CloudFront-Is-Mobile-Viewer, CloudFront-Is-SmartTV-Viewer, CloudFront-Is-Tablet-Viewer, CloudFront-Viewer-Country, Host, Origin, Referer
          ],    # OPTIONAL
          Option => 'none',    # values: none, allow-list, all; OPTIONAL
        },    # OPTIONAL
        ForwardedQueryStrings => {
          Option                => 1,                      # OPTIONAL
          QueryStringsAllowList => [ 'Mystring', ... ],    # OPTIONAL
        },    # OPTIONAL
        MaximumTTL => 1,    # OPTIONAL
        MinimumTTL => 1,    # OPTIONAL
      },    # OPTIONAL
      CacheBehaviors => [
        {
          Behavior => 'dont-cache',    # values: dont-cache, cache; OPTIONAL
          Path     => 'Mystring',
        },
        ...
      ],    # OPTIONAL
      CertificateName      => 'MyResourceName',    # OPTIONAL
      DefaultCacheBehavior => {
        Behavior => 'dont-cache',    # values: dont-cache, cache; OPTIONAL
      },    # OPTIONAL
      IsEnabled => 1,    # OPTIONAL
      Origin    => {
        Name           => 'MyResourceName',
        ProtocolPolicy => 'http-only', # values: http-only, https-only; OPTIONAL
        RegionName     => 'us-east-1'
        , # values: us-east-1, us-east-2, us-west-1, us-west-2, eu-west-1, eu-west-2, eu-west-3, eu-central-1, ca-central-1, ap-south-1, ap-southeast-1, ap-southeast-2, ap-northeast-1, ap-northeast-2, eu-north-1; OPTIONAL
        ResponseTimeout => 1,    # OPTIONAL
      },    # OPTIONAL
      UseDefaultCertificate           => 1,                 # OPTIONAL
      ViewerMinimumTlsProtocolVersion => 'TLSv1.1_2016',    # OPTIONAL
    );

    # Results:
    my $Operation = $UpdateDistributionResult->Operation;

    # Returns a L<Paws::Lightsail::UpdateDistributionResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/lightsail/UpdateDistribution>

=head1 ATTRIBUTES


=head2 CacheBehaviors => ArrayRef[L<Paws::Lightsail::CacheBehaviorPerPath>]

An array of objects that describe the per-path cache behavior for the
distribution.



=head2 CacheBehaviorSettings => L<Paws::Lightsail::CacheSettings>

An object that describes the cache behavior settings for the
distribution.

The C<cacheBehaviorSettings> specified in your
C<UpdateDistributionRequest> will replace your distribution's existing
settings.



=head2 CertificateName => Str

The name of the SSL/TLS certificate that you want to attach to the
distribution.

Only certificates with a status of C<ISSUED> can be attached to a
distribution.

Use the GetCertificates
(https://docs.aws.amazon.com/lightsail/2016-11-28/api-reference/API_GetCertificates.html)
action to get a list of certificate names that you can specify.



=head2 DefaultCacheBehavior => L<Paws::Lightsail::CacheBehavior>

An object that describes the default cache behavior for the
distribution.



=head2 B<REQUIRED> DistributionName => Str

The name of the distribution to update.

Use the C<GetDistributions> action to get a list of distribution names
that you can specify.



=head2 IsEnabled => Bool

Indicates whether to enable the distribution.



=head2 Origin => L<Paws::Lightsail::InputOrigin>

An object that describes the origin resource for the distribution, such
as a Lightsail instance, bucket, or load balancer.

The distribution pulls, caches, and serves content from the origin.



=head2 UseDefaultCertificate => Bool

Indicates whether the default SSL/TLS certificate is attached to the
distribution. The default value is C<true>. When C<true>, the
distribution uses the default domain name such as
C<d111111abcdef8.cloudfront.net>.

Set this value to C<false> to attach a new certificate to the
distribution.



=head2 ViewerMinimumTlsProtocolVersion => Str

Use this parameter to update the minimum TLS protocol version for the
SSL/TLS certificate that's attached to the distribution.

Valid values are: C<"TLSv1.1_2016">, C<"TLSv1.2_2018">, C<"TLSv1.2_2019">, C<"TLSv1.2_2021">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDistribution in L<Paws::Lightsail>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

