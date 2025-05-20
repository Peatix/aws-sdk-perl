
package Paws::LookoutVision::DescribeModelPackagingJobResponse;
  use Moose;
  has ModelPackagingDescription => (is => 'ro', isa => 'Paws::LookoutVision::ModelPackagingDescription');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LookoutVision::DescribeModelPackagingJobResponse

=head1 ATTRIBUTES


=head2 ModelPackagingDescription => L<Paws::LookoutVision::ModelPackagingDescription>

The description of the model packaging job.


=head2 _request_id => Str


=cut

