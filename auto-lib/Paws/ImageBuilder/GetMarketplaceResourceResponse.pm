
package Paws::ImageBuilder::GetMarketplaceResourceResponse;
  use Moose;
  has Data => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'data');
  has ResourceArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'resourceArn');
  has Url => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'url');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ImageBuilder::GetMarketplaceResourceResponse

=head1 ATTRIBUTES


=head2 Data => Str

Returns obfuscated data that contains the YAML content of the
component.


=head2 ResourceArn => Str

The Amazon Resource Name (ARN) for the Amazon Web Services Marketplace
resource that was requested.


=head2 Url => Str

The obfuscated S3 URL to download the component artifact from.


=head2 _request_id => Str


=cut

