
package Paws::Outposts::CreateSiteOutput;
  use Moose;
  has Site => (is => 'ro', isa => 'Paws::Outposts::Site');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Outposts::CreateSiteOutput

=head1 ATTRIBUTES


=head2 Site => L<Paws::Outposts::Site>




=head2 _request_id => Str


=cut

