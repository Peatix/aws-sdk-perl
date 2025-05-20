
package Paws::SSOAdmin::GetApplicationGrantResponse;
  use Moose;
  has Grant => (is => 'ro', isa => 'Paws::SSOAdmin::Grant', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::GetApplicationGrantResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Grant => L<Paws::SSOAdmin::Grant>

A structure that describes the requested grant.


=head2 _request_id => Str


=cut

1;