
package Paws::CloudTrail::ListImportsResponse;
  use Moose;
  has Imports => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::ImportsListItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListImportsResponse

=head1 ATTRIBUTES


=head2 Imports => ArrayRef[L<Paws::CloudTrail::ImportsListItem>]

The list of returned imports.


=head2 NextToken => Str

A token you can use to get the next page of import results.


=head2 _request_id => Str


=cut

1;