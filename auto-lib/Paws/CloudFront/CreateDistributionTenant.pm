
package Paws::CloudFront::CreateDistributionTenant;
  use Moose;
  has ConnectionGroupId => (is => 'ro', isa => 'Str');
  has Customizations => (is => 'ro', isa => 'Paws::CloudFront::Customizations');
  has DistributionId => (is => 'ro', isa => 'Str', required => 1);
  has Domains => (is => 'ro', isa => 'ArrayRef[Paws::CloudFront::DomainItem]', required => 1);
  has Enabled => (is => 'ro', isa => 'Bool');
  has ManagedCertificateRequest => (is => 'ro', isa => 'Paws::CloudFront::ManagedCertificateRequest');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::CloudFront::Parameter]');
  has Tags => (is => 'ro', isa => 'Paws::CloudFront::Tags');


  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateDistributionTenant');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/2020-05-31/distribution-tenant');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::CloudFront::CreateDistributionTenantResult');
  class_has _result_key => (isa => 'Str', is => 'ro');
  class_has _top_level_element => (isa => 'Str', is => 'ro', default => 'CreateDistributionTenantRequest');
  class_has _top_level_namespace => (isa => 'Str', is => 'ro', default => 'http://cloudfront.amazonaws.com/doc/2020-05-31/');  
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::CreateDistributionTenant - Arguments for method CreateDistributionTenant on L<Paws::CloudFront>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateDistributionTenant2020_05_31 on the
L<Amazon CloudFront|Paws::CloudFront> service. Use the attributes of this class
as arguments to method CreateDistributionTenant2020_05_31.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateDistributionTenant2020_05_31.

=head1 SYNOPSIS

    my $cloudfront = Paws->service('CloudFront');
    my $CreateDistributionTenantResult = $cloudfront->CreateDistributionTenant(
      DistributionId => 'Mystring',
      Domains        => [
        {
          Domain => 'Mystring',

        },
        ...
      ],
      Name              => 'MyCreateDistributionTenantRequestNameString',
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
      Enabled                   => 1,    # OPTIONAL
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
    my $DistributionTenant =
      $CreateDistributionTenantResult->DistributionTenant;
    my $ETag = $CreateDistributionTenantResult->ETag;

    # Returns a L<Paws::CloudFront::CreateDistributionTenantResult> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/cloudfront/CreateDistributionTenant>

=head1 ATTRIBUTES


=head2 ConnectionGroupId => Str

The ID of the connection group to associate with the distribution
tenant.



=head2 Customizations => L<Paws::CloudFront::Customizations>

Customizations for the distribution tenant. For each distribution
tenant, you can specify the geographic restrictions, and the Amazon
Resource Names (ARNs) for the ACM certificate and WAF web ACL. These
are specific values that you can override or disable from the
multi-tenant distribution that was used to create the distribution
tenant.



=head2 B<REQUIRED> DistributionId => Str

The ID of the multi-tenant distribution to use for creating the
distribution tenant.



=head2 B<REQUIRED> Domains => ArrayRef[L<Paws::CloudFront::DomainItem>]

The domains associated with the distribution tenant. You must specify
at least one domain in the request.



=head2 Enabled => Bool

Indicates whether the distribution tenant should be enabled when
created. If the distribution tenant is disabled, the distribution
tenant won't serve traffic.



=head2 ManagedCertificateRequest => L<Paws::CloudFront::ManagedCertificateRequest>

The configuration for the CloudFront managed ACM certificate request.



=head2 B<REQUIRED> Name => Str

The name of the distribution tenant. Enter a friendly identifier that
is unique within your Amazon Web Services account. This name can't be
updated after you create the distribution tenant.



=head2 Parameters => ArrayRef[L<Paws::CloudFront::Parameter>]

A list of parameter values to add to the resource. A parameter is
specified as a key-value pair. A valid parameter value must exist for
any parameter that is marked as required in the multi-tenant
distribution.



=head2 Tags => L<Paws::CloudFront::Tags>






=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateDistributionTenant2020_05_31 in L<Paws::CloudFront>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

