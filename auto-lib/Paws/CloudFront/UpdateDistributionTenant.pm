
package Paws::CloudFront::UpdateDistributionTenant;
  use Moose;
  has ConnectionGroupId => (is => 'ro', isa => 'Str');
  has Customizations => (is => 'ro', isa => 'Paws::CloudFront::Customizations');
  has DistributionId => (is => 'ro', isa => 'Str');
  has Domains => (is => 'ro', isa => 'ArrayRef[Paws::CloudFront::DomainItem]');
  has Enabled => (is => 'ro', isa => 'Bool');
  has Id => (is => 'ro', isa => 'Str', uri_name => 'Id', traits => ['ParamInURI'], required => 1);
  has IfMatch => (is => 'ro', isa => 'Str', header_name => 'If-Match', traits => ['ParamInHeader'], required => 1);
  has ManagedCertificateRequest => (is => 'ro', isa => 'Paws::CloudFront::ManagedCertificateRequest');
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFront::Parameter]');


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateDistributionTenant');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/distribution-tenant/{Id}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::UpdateDistributionTenantResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'UpdateDistributionTenantRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://cloudfront.amazonaws.com/doc/2020-05-31/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::UpdateDistributionTenant - Arguments for method UpdateDistributionTenant on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateDistributionTenant2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method UpdateDistributionTenant2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateDistributionTenant2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $UpdateDistributionTenantResult = $cloudfront->UpdateDistributionTenant(
      Id                => 'Mystring',
      IfMatch           => 'Mystring',
      ConnectionGroupId => 'Mystring',    # OPTIONAL
      Customizations    => {
        Certificate => {
          Arn => 'Mystring',

        },                                # OPTIONAL
        GeoRestrictions => {
          RestrictionType => 'blacklist',   # values: blacklist, whitelist, none
          Locations       => [ 'Mystring', ... ],    # OPTIONAL
        },    # OPTIONAL
        WebAcl => {
          Action => 'override',    # values: override, disable
          Arn    => 'Mystring',
        },    # OPTIONAL
      },    # OPTIONAL
      DistributionId => 'Mystring',    # OPTIONAL
      Domains        => [
        {
          Domain => 'Mystring',

        },
        ...
      ],                               # OPTIONAL
      Enabled                   => 1,  # OPTIONAL
      ManagedCertificateRequest => {
        ValidationTokenHost => 'cloudfront',   # values: cloudfront, self-hosted
        CertificateTransparencyLoggingPreference =>
          'enabled',    # values: enabled, disabled; OPTIONAL
        PrimaryDomainName => 'Mystring',
      },    # OPTIONAL
      Parameters => [
        {
          Name  => 'MyParameterName',     # min: 1, max: 128
          Value => 'MyParameterValue',    # min: 1, max: 256

        },
        ...
      ],    # OPTIONAL
    );

    # Results:
    my $DistributionTenant =
      $UpdateDistributionTenantResult->DistributionTenant;
    my $ETag = $UpdateDistributionTenantResult->ETag;

    # Returns a L<Paws::CloudFront::UpdateDistributionTenantResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/UpdateDistributionTenant>

=head1 ATTRIBUTES


=head2 ConnectionGroupId => Str

The ID of the target connection group.



=head2 Customizations => L<Paws::CloudFront::Customizations>

Customizations for the distribution tenant. For each distribution
tenant, you can specify the geographic restrictions, and the Amazon
Resource Names (ARNs) for the ACM certificate and WAF web ACL. These
are specific values that you can override or disable from the
multi-tenant distribution that was used to create the distribution
tenant.



=head2 DistributionId => Str

The ID for the multi-tenant distribution.



=head2 Domains => ArrayRef[L<Paws::CloudFront::DomainItem>]

The domains to update for the distribution tenant. A domain object can
contain only a domain property. You must specify at least one domain.
Each distribution tenant can have up to 5 domains.



=head2 Enabled => Bool

Indicates whether the distribution tenant should be updated to an
enabled state. If you update the distribution tenant and it's not
enabled, the distribution tenant won't serve traffic.



=head2 B<REQUIRED> Id => Str

The ID of the distribution tenant.



=head2 B<REQUIRED> IfMatch => Str

The value of the C<ETag> header that you received when retrieving the
distribution tenant to update. This value is returned in the response
of the C<GetDistributionTenant> API operation.



=head2 ManagedCertificateRequest => L<Paws::CloudFront::ManagedCertificateRequest>

An object that contains the CloudFront managed ACM certificate request.



=head2 Parameters => ArrayRef[L<Paws::CloudFront::Parameter>]

A list of parameter values to add to the resource. A parameter is
specified as a key-value pair. A valid parameter value must exist for
any parameter that is marked as required in the multi-tenant
distribution.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateDistributionTenant2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

