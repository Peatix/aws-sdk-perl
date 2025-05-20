
package Paws::Datasync::CreateLocationNfsResponse;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationNfsResponse

=head1 ATTRIBUTES


=head2 LocationArn => Str

The ARN of the transfer location that you created for your NFS file
server.


=head2 _request_id => Str


=cut

1;