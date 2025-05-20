
package Paws::Bedrock::CreateInferenceProfileResponse;
  use Moose;
  has InferenceProfileArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'inferenceProfileArn', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Bedrock::CreateInferenceProfileResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> InferenceProfileArn => Str

The ARN of the inference profile that you created.


=head2 Status => Str

The status of the inference profile. C<ACTIVE> means that the inference
profile is ready to be used.

Valid values are: C<"ACTIVE">
=head2 _request_id => Str


=cut

