
package Paws::Braket::CreateJobResponse;
  use Moose;
  has JobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Braket::CreateJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobArn => Str

The ARN of the Amazon Braket job created.


=head2 _request_id => Str


=cut

