
package Paws::Datasync::CreateLocationHdfsResponse;
  use Moose;
  has LocationArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Datasync::CreateLocationHdfsResponse

=head1 ATTRIBUTES


=head2 LocationArn => Str

The ARN of the source HDFS cluster location that you create.


=head2 _request_id => Str


=cut

1;