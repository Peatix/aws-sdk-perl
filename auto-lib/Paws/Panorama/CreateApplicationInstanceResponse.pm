
package Paws::Panorama::CreateApplicationInstanceResponse;
  use Moose;
  has ApplicationInstanceId => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Panorama::CreateApplicationInstanceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationInstanceId => Str

The application instance's ID.


=head2 _request_id => Str


=cut

