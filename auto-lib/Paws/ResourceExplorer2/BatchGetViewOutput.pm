
package Paws::ResourceExplorer2::BatchGetViewOutput;
  use Moose;
  has Errors => (is => 'ro', isa => 'ArrayRef[Paws::ResourceExplorer2::BatchGetViewError]');
  has Views => (is => 'ro', isa => 'ArrayRef[Paws::ResourceExplorer2::View]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceExplorer2::BatchGetViewOutput

=head1 ATTRIBUTES


=head2 Errors => ArrayRef[L<Paws::ResourceExplorer2::BatchGetViewError>]

If any of the specified ARNs result in an error, then this structure
describes the error.


=head2 Views => ArrayRef[L<Paws::ResourceExplorer2::View>]

A structure with a list of objects with details for each of the
specified views.


=head2 _request_id => Str


=cut

