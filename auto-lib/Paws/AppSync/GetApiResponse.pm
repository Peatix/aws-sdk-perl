
package Paws::AppSync::GetApiResponse;
  use Moose;
  has Api => (is => 'ro', isa => 'Paws::AppSync::Api', traits => ['NameInRequest'], request_name => 'api');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::GetApiResponse

=head1 ATTRIBUTES


=head2 Api => L<Paws::AppSync::Api>

The C<Api> object.


=head2 _request_id => Str


=cut

