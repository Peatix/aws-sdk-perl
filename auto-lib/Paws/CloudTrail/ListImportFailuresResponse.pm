
package Paws::CloudTrail::ListImportFailuresResponse;
  use Moose;
  has Failures => (is => 'ro', isa => 'ArrayRef[Paws::CloudTrail::ImportFailureListItem]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CloudTrail::ListImportFailuresResponse

=head1 ATTRIBUTES


=head2 Failures => ArrayRef[L<Paws::CloudTrail::ImportFailureListItem>]

Contains information about the import failures.


=head2 NextToken => Str

A token you can use to get the next page of results.


=head2 _request_id => Str


=cut

1;