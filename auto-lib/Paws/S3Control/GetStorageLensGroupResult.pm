
package Paws::S3Control::GetStorageLensGroupResult;
  use Moose;
  has StorageLensGroup => (is => 'ro', isa => 'Paws::S3Control::StorageLensGroup', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::S3Control::GetStorageLensGroupResult

=head1 ATTRIBUTES


=head2 StorageLensGroup => L<Paws::S3Control::StorageLensGroup>

The name of the Storage Lens group that you're trying to retrieve the
configuration details for.




=cut

