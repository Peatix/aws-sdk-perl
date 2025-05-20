
package Paws::Grafana::UpdatePermissionsResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::Grafana::UpdateError]', traits => ['NameInRequest'], request_name => 'errors', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Grafana::UpdatePermissionsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Errors => ArrayRef[L<Paws::Grafana::UpdateError>]

An array of structures that contain the errors from the operation, if
any.


=head2 _request_id => Str


=cut

