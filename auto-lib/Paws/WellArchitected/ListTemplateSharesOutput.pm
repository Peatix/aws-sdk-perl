
package Paws::WellArchitected::ListTemplateSharesOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has TemplateArn => (is => 'ro', isa => 'Str');
  has TemplateShareSummaries => (is => 'ro', isa => 'ArrayRef[Paws::WellArchitected::TemplateShareSummary]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::WellArchitected::ListTemplateSharesOutput

=head1 ATTRIBUTES


=head2 NextToken => Str




=head2 TemplateArn => Str

The review template ARN.


=head2 TemplateShareSummaries => ArrayRef[L<Paws::WellArchitected::TemplateShareSummary>]

A review template share summary return object.


=head2 _request_id => Str


=cut

