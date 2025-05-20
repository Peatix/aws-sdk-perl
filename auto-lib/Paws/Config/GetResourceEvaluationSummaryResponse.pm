
package Paws::Config::GetResourceEvaluationSummaryResponse;
  use Moose;
  has Compliance => (is => 'ro', isa => 'Str');
  has EvaluationContext => (is => 'ro', isa => 'Paws::Config::EvaluationContext');
  has EvaluationMode => (is => 'ro', isa => 'Str');
  has EvaluationStartTimestamp => (is => 'ro', isa => 'Str');
  has EvaluationStatus => (is => 'ro', isa => 'Paws::Config::EvaluationStatus');
  has ResourceDetails => (is => 'ro', isa => 'Paws::Config::ResourceDetails');
  has ResourceEvaluationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Config::GetResourceEvaluationSummaryResponse

=head1 ATTRIBUTES


=head2 Compliance => Str

The compliance status of the resource evaluation summary.

Valid values are: C<"COMPLIANT">, C<"NON_COMPLIANT">, C<"NOT_APPLICABLE">, C<"INSUFFICIENT_DATA">
=head2 EvaluationContext => L<Paws::Config::EvaluationContext>

Returns an C<EvaluationContext> object.


=head2 EvaluationMode => Str

Lists results of the mode that you requested to retrieve the resource
evaluation summary. The valid values are Detective or Proactive.

Valid values are: C<"DETECTIVE">, C<"PROACTIVE">
=head2 EvaluationStartTimestamp => Str

The start timestamp when Config rule starts evaluating compliance for
the provided resource details.


=head2 EvaluationStatus => L<Paws::Config::EvaluationStatus>

Returns an C<EvaluationStatus> object.


=head2 ResourceDetails => L<Paws::Config::ResourceDetails>

Returns a C<ResourceDetails> object.


=head2 ResourceEvaluationId => Str

The unique C<ResourceEvaluationId> of Amazon Web Services resource
execution for which you want to retrieve the evaluation summary.


=head2 _request_id => Str


=cut

1;