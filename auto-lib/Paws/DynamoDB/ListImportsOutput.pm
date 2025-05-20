
package Paws::DynamoDB::ListImportsOutput;
  use Moose;
  has ImportSummaryList => (is => 'ro', isa => 'ArrayRef[Paws::DynamoDB::ImportSummary]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::ListImportsOutput

=head1 ATTRIBUTES


=head2 ImportSummaryList => ArrayRef[L<Paws::DynamoDB::ImportSummary>]

A list of C<ImportSummary> objects.


=head2 NextToken => Str

If this value is returned, there are additional results to be
displayed. To retrieve them, call C<ListImports> again, with
C<NextToken> set to this value.


=head2 _request_id => Str


=cut

1;