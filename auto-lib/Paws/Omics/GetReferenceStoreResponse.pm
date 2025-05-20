
package Paws::Omics::GetReferenceStoreResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has SseConfig => (is => 'ro', isa => 'Paws::Omics::SseConfig', traits => ['NameInRequest'], request_name => 'sseConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetReferenceStoreResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The store's ARN.


=head2 B<REQUIRED> CreationTime => Str

When the store was created.


=head2 Description => Str

The store's description.


=head2 B<REQUIRED> Id => Str

The store's ID.


=head2 Name => Str

The store's name.


=head2 SseConfig => L<Paws::Omics::SseConfig>

The store's server-side encryption (SSE) settings.


=head2 _request_id => Str


=cut

