
package Paws::AppStream::DescribeApplicationFleetAssociationsResult;
  use Moose;
  has ApplicationFleetAssociations => (is => 'ro', isa => 'ArrayRef[Paws::AppStream::ApplicationFleetAssociation]');
  has NextToken => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::AppStream::DescribeApplicationFleetAssociationsResult

=head1 ATTRIBUTES


=head2 ApplicationFleetAssociations => ArrayRef[L<Paws::AppStream::ApplicationFleetAssociation>]

The application fleet associations in the list.


=head2 NextToken => Str

The pagination token used to retrieve the next page of results for this
operation.


=head2 _request_id => Str


=cut

1;