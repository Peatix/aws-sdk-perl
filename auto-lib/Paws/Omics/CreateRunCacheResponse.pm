
package Paws::Omics::CreateRunCacheResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::CreateRunCacheResponse

=head1 ATTRIBUTES


=head2 Arn => Str

Unique resource identifier for the run cache.


=head2 Id => Str

Identifier for the run cache.


=head2 Status => Str

Run cache status.

Valid values are: C<"ACTIVE">, C<"DELETED">, C<"FAILED">
=head2 Tags => L<Paws::Omics::TagMap>

The tags associated with this run cache.


=head2 _request_id => Str


=cut

