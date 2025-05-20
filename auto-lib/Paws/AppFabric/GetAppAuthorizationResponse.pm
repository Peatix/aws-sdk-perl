
package Paws::AppFabric::GetAppAuthorizationResponse;
  use Moose;
  has AppAuthorization => (is => 'ro', isa => 'Paws::AppFabric::AppAuthorization', traits => ['NameInRequest'], request_name => 'appAuthorization', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppFabric::GetAppAuthorizationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppAuthorization => L<Paws::AppFabric::AppAuthorization>

Contains information about an app authorization.


=head2 _request_id => Str


=cut

