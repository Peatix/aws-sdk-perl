
package Paws::Resiliencehub::UpdateAppResponse;
  use Moose;
  has App => (is => 'ro', isa => 'Paws::Resiliencehub::App', traits => ['NameInRequest'], request_name => 'app', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::UpdateAppResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> App => L<Paws::Resiliencehub::App>

The specified application, returned as an object with details including
compliance status, creation time, description, resiliency score, and
more.


=head2 _request_id => Str


=cut

