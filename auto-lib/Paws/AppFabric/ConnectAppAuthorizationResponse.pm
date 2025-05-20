
package Paws::AppFabric::ConnectAppAuthorizationResponse;
  use Moose;
  has AppAuthorizationSummary => (is => 'ro', isa => 'Paws::AppFabric::AppAuthorizationSummary', traits => ['NameInRequest'], request_name => 'appAuthorizationSummary', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppFabric::ConnectAppAuthorizationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppAuthorizationSummary => L<Paws::AppFabric::AppAuthorizationSummary>

Contains a summary of the app authorization.


=head2 _request_id => Str


=cut

