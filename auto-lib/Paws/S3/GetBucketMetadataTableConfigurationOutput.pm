
package Paws::S3::GetBucketMetadataTableConfigurationOutput;
  use Moose;
  has GetBucketMetadataTableConfigurationResult => (is => 'ro', isa => 'Paws::S3::GetBucketMetadataTableConfigurationResult', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3::GetBucketMetadataTableConfigurationOutput

=head1 ATTRIBUTES


=head2 GetBucketMetadataTableConfigurationResult => L<Paws::S3::GetBucketMetadataTableConfigurationResult>

The metadata table configuration for the general purpose bucket.




=cut

