
package Paws::AppFabric::CreateAppBundleResponse;
  use Moose;
  has AppBundle => (is => 'ro', isa => 'Paws::AppFabric::AppBundle', traits => ['NameInRequest'], request_name => 'appBundle', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppFabric::CreateAppBundleResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppBundle => L<Paws::AppFabric::AppBundle>

Contains information about an app bundle.


=head2 _request_id => Str


=cut

