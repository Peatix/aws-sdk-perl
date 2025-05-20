
package Paws::S3Control::ListAccessGrantsInstancesResult;
  use Moose;
  has AccessGrantsInstancesList => (is => 'ro', isa => 'ArrayRef[Paws::S3Control::ListAccessGrantsInstanceEntry]', request_name => 'AccessGrantsInstance', traits => ['NameInRequest']);
  has NextToken => (is => 'ro', isa => 'Str');


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::ListAccessGrantsInstancesResult

=head1 ATTRIBUTES


=head2 AccessGrantsInstancesList => ArrayRef[L<Paws::S3Control::ListAccessGrantsInstanceEntry>]

A container for a list of S3 Access Grants instances.



=head2 NextToken => Str

A pagination token to request the next page of results. Pass this value
into a subsequent C<List Access Grants Instances> request in order to
retrieve the next page of results.




=cut

