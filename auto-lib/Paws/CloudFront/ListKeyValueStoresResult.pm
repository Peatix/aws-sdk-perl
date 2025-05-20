
package Paws::CloudFront::ListKeyValueStoresResult;
  use Moose;
  has KeyValueStoreList => (is => 'ro', isa => 'Paws::CloudFront::KeyValueStoreList', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::ListKeyValueStoresResult

=head1 ATTRIBUTES


=head2 KeyValueStoreList => L<Paws::CloudFront::KeyValueStoreList>

The resulting key value stores list.




=cut

