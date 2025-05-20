
package Paws::S3Control::ListAccessGrantsResult;
  use Moose;
  has AccessGrantsList => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::ListAccessGrantEntry]', request_name => 'AccessGrant', traits => ['NameInRequest']);
  has NextToken => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListAccessGrantsResult

=head1 ATTRIBUTES


=head2 AccessGrantsList => ArrayRef[L<Paws::S3Control::ListAccessGrantEntry>]

A container for a list of grants in an S3 Access Grants instance.



=head2 NextToken => Str

A pagination token to request the next page of results. Pass this value
into a subsequent C<List Access Grants> request in order to retrieve
the next page of results.




=cut

