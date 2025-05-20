
package Paws::DMS::CreateFleetAdvisorCollectorResponse;
  use Moose;
  has CollectorName => (is => 'ro', isa => 'Str');
  has CollectorReferencedId => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str');
  has S3BucketName => (is => 'ro', isa => 'Str');
  has ServiceAccessRoleArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DMS::CreateFleetAdvisorCollectorResponse

=head1 ATTRIBUTES


=head2 CollectorName => Str

The name of the new Fleet Advisor collector.


=head2 CollectorReferencedId => Str

The unique ID of the new Fleet Advisor collector, for example:
C<22fda70c-40d5-4acf-b233-a495bd8eb7f5>


=head2 Description => Str

A summary description of the Fleet Advisor collector.


=head2 S3BucketName => Str

The Amazon S3 bucket that the collector uses to store inventory
metadata.


=head2 ServiceAccessRoleArn => Str

The IAM role that grants permissions to access the specified Amazon S3
bucket.


=head2 _request_id => Str


=cut

1;