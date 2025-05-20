
package Paws::Omics::GetReferenceMetadataResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has CreationJobId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationJobId');
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has CreationType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationType');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Files => (is => 'ro', isa => 'Paws::Omics::ReferenceFiles', traits => ['NameInRequest'], request_name => 'files');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Md5 => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'md5', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has ReferenceStoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'referenceStoreId', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status');
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTime', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetReferenceMetadataResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The reference's ARN.


=head2 CreationJobId => Str

The reference's creation job ID.


=head2 B<REQUIRED> CreationTime => Str

When the reference was created.


=head2 CreationType => Str

The reference's creation type.

Valid values are: C<"IMPORT">
=head2 Description => Str

The reference's description.


=head2 Files => L<Paws::Omics::ReferenceFiles>

The reference's files.


=head2 B<REQUIRED> Id => Str

The reference's ID.


=head2 B<REQUIRED> Md5 => Str

The reference's MD5 checksum.


=head2 Name => Str

The reference's name.


=head2 B<REQUIRED> ReferenceStoreId => Str

The reference's reference store ID.


=head2 Status => Str

The reference's status.

Valid values are: C<"ACTIVE">, C<"DELETING">, C<"DELETED">
=head2 B<REQUIRED> UpdateTime => Str

When the reference was updated.


=head2 _request_id => Str


=cut

