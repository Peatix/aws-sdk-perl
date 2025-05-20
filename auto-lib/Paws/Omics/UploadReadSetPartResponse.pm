
package Paws::Omics::UploadReadSetPartResponse;
  use Moose;
  has Checksum => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'checksum', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::UploadReadSetPartResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Checksum => Str

An identifier used to confirm that parts are being added to the
intended upload.


=head2 _request_id => Str


=cut

