
package Paws::Datasync::CreateLocationSmbResponse;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationSmbResponse

=head1 ATTRIBUTES


=head2 LocationArn => Str

The ARN of the SMB location that you created.


=head2 _request_id => Str


=cut

1;