
package Paws::Bedrock::CreateModelCustomizationJobResponse;
  use Moose;
  has JobArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'jobArn', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::CreateModelCustomizationJobResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> JobArn => Str

Amazon Resource Name (ARN) of the fine tuning job


=head2 _request_id => Str


=cut

