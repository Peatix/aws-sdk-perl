
package Paws::ServiceCatalogAppRegistry::GetConfigurationResponse;
  use Moose;
  has Configuration => (is => 'ro', isa => 'Paws::ServiceCatalogAppRegistry::AppRegistryConfiguration', traits => ['NameInRequest'], request_name => 'configuration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::GetConfigurationResponse

=head1 ATTRIBUTES


=head2 Configuration => L<Paws::ServiceCatalogAppRegistry::AppRegistryConfiguration>

Retrieves C<TagKey> configuration from an account.


=head2 _request_id => Str


=cut

