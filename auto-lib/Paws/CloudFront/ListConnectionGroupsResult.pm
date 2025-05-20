
package Paws::CloudFront::ListConnectionGroupsResult;
  use Moose;
  has ConnectionGroups => (is => 'ro', isa => 'ArrayRef[Paws::CloudFront::ConnectionGroupSummary]', request_name => 'ConnectionGroupSummary', traits => ['NameInRequest']);
  has NextMarker => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListConnectionGroupsResult

=head1 ATTRIBUTES


=head2 ConnectionGroups => ArrayRef[L<Paws::CloudFront::ConnectionGroupSummary>]

The list of connection groups that you retrieved.



=head2 NextMarker => Str

A token used for pagination of results returned in the response. You
can use the token from the previous request to define where the current
request should begin.




=cut

