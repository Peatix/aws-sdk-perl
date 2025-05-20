
package Paws::CloudFront::ListDomainConflictsResult;
  use Moose;
  has DomainConflicts => (is => 'ro', isa => 'ArrayRef[Paws::CloudFront::DomainConflict]', request_name => 'DomainConflicts', traits => ['NameInRequest']);
  has NextMarker => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListDomainConflictsResult

=head1 ATTRIBUTES


=head2 DomainConflicts => ArrayRef[L<Paws::CloudFront::DomainConflict>]

Contains details about the domain conflicts.



=head2 NextMarker => Str

A token used for pagination of results returned in the response. You
can use the token from the previous request to define where the current
request should begin.




=cut

