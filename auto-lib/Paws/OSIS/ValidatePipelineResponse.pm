
package Paws::OSIS::ValidatePipelineResponse;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::OSIS::ValidationMessage]');
  has IsValid => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'isValid');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OSIS::ValidatePipelineResponse

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::OSIS::ValidationMessage>]

A list of errors if the configuration is invalid.


=head2 IsValid => Bool

A boolean indicating whether or not the pipeline configuration is
valid.


=head2 _request_id => Str


=cut

