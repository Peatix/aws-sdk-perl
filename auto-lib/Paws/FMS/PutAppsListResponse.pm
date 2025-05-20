
package Paws::FMS::PutAppsListResponse;
  use Moose;
  has AppsList => (is => 'ro', isa => 'Paws::FMS::AppsListData');
  has AppsListArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::FMS::PutAppsListResponse

=head1 ATTRIBUTES


=head2 AppsList => L<Paws::FMS::AppsListData>

The details of the Firewall Manager applications list.


=head2 AppsListArn => Str

The Amazon Resource Name (ARN) of the applications list.


=head2 _request_id => Str


=cut

1;