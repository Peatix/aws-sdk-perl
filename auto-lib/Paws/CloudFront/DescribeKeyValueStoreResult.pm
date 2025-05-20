
package Paws::CloudFront::DescribeKeyValueStoreResult;
  use Moose;
  has ETag => (is => 'ro', isa => 'Str', header_name => 'ETag', traits => ['ParamInHeader']);
  has KeyValueStore => (is => 'ro', isa => 'Paws::CloudFront::KeyValueStore', traits => ['ParamInBody']);


  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFront::DescribeKeyValueStoreResult

=head1 ATTRIBUTES


=head2 ETag => Str

The C<ETag> of the resulting key value store.



=head2 KeyValueStore => L<Paws::CloudFront::KeyValueStore>

The resulting key value store.




=cut

