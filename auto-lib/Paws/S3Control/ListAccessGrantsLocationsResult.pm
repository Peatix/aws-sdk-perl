
package Paws::S3Control::ListAccessGrantsLocationsResult;
  use Moose;
  has AccessGrantsLocationsList => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::ListAccessGrantsLocationsEntry]', request_name => 'AccessGrantsLocation', traits => ['NameInRequest']);
  has NextToken => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListAccessGrantsLocationsResult

=head1 ATTRIBUTES


=head2 AccessGrantsLocationsList => ArrayRef[L<Paws::S3Control::ListAccessGrantsLocationsEntry>]

A container for a list of registered locations in an S3 Access Grants
instance.



=head2 NextToken => Str

A pagination token to request the next page of results. Pass this value
into a subsequent C<List Access Grants Locations> request in order to
retrieve the next page of results.




=cut

