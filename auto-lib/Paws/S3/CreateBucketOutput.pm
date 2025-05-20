
package Paws::S3::CreateBucketOutput;
  use Moose;
  has Location => (is => 'ro', isa => 'Str', header_name => 'Location', traits => ['ParamInHeader']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::CreateBucketOutput

=head1 ATTRIBUTES


=head2 Location => Str

A forward slash followed by the name of the bucket.




=cut

