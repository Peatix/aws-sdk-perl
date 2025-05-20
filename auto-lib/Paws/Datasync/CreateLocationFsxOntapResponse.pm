
package Paws::Datasync::CreateLocationFsxOntapResponse;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationFsxOntapResponse

=head1 ATTRIBUTES


=head2 LocationArn => Str

Specifies the ARN of the FSx for ONTAP file system location that you
create.


=head2 _request_id => Str


=cut

1;