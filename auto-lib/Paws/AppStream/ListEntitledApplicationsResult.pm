
package Paws::AppStream::ListEntitledApplicationsResult;
  use Moose;
  has EntitledApplications => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::EntitledApplication]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::ListEntitledApplicationsResult

=head1 ATTRIBUTES


=head2 EntitledApplications => ArrayRef[L<Paws::AppStream::EntitledApplication>]

The entitled applications.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.


=head2 _request_id => Str


=cut

1;