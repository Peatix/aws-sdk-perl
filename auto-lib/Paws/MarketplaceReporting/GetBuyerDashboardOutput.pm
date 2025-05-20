
package Paws::MarketplaceReporting::GetBuyerDashboardOutput;
  use Moose;
  has DashboardIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'dashboardIdentifier', required => 1);
  has EmbeddingDomains => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'embeddingDomains', required => 1);
  has EmbedUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'embedUrl', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::MarketplaceReporting::GetBuyerDashboardOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> DashboardIdentifier => Str

The ARN of the returned dashboard.


=head2 B<REQUIRED> EmbeddingDomains => ArrayRef[Str|Undef]

The fully qualified domains specified in the request. The domains
enable access to the generated URL that is then embedded. You can list
up to two domains or subdomains in each API call. To include all
subdomains under a specific domain, use C<*>. For example,
C<https://*.amazon.com> includes all subdomains under
C<https://aws.amazon.com>.


=head2 B<REQUIRED> EmbedUrl => Str

The dashboard's embedding URL.


=head2 _request_id => Str


=cut

