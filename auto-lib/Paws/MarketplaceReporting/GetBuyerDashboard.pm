
package Paws::MarketplaceReporting::GetBuyerDashboard;
  use Moose;
  has DashboardIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dashboardIdentifier', required => 1);
  has EmbeddingDomains => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'embeddingDomains', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetBuyerDashboard');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/getBuyerDashboard');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::MarketplaceReporting::GetBuyerDashboardOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceReporting::GetBuyerDashboard - Arguments for method GetBuyerDashboard on L<Paws::MarketplaceReporting>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetBuyerDashboard on the
L<AWS Marketplace Reporting Service|Paws::MarketplaceReporting> service. Use the attributes of this class
as arguments to method GetBuyerDashboard.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetBuyerDashboard.

=head1 SYNOPSIS

    my $reporting-marketplace = Paws->service('MarketplaceReporting');
    my $GetBuyerDashboardOutput = $reporting -marketplace->GetBuyerDashboard(
      DashboardIdentifier => 'MyDashboardIdentifier',
      EmbeddingDomains    => [
        'MyEmbeddingDomain', ...    # min: 1, max: 2000
      ],

    );

    # Results:
    my $DashboardIdentifier = $GetBuyerDashboardOutput->DashboardIdentifier;
    my $EmbedUrl            = $GetBuyerDashboardOutput->EmbedUrl;
    my $EmbeddingDomains    = $GetBuyerDashboardOutput->EmbeddingDomains;

    # Returns a L<Paws::MarketplaceReporting::GetBuyerDashboardOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/reporting-marketplace/GetBuyerDashboard>

=head1 ATTRIBUTES


=head2 B<REQUIRED> DashboardIdentifier => Str

The ARN of the requested dashboard.



=head2 B<REQUIRED> EmbeddingDomains => ArrayRef[Str|Undef]

Fully qualified domains that you add to the allow list for access to
the generated URL that is then embedded. You can list up to two domains
or subdomains in each API call. To include all subdomains under a
specific domain, use C<*>. For example, C<https://*.amazon.com>
includes all subdomains under C<https://aws.amazon.com>.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetBuyerDashboard in L<Paws::MarketplaceReporting>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

