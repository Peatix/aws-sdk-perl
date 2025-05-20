
package Paws::Omics::UpdateAnnotationStoreVersionResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storeId', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTime', required => 1);
  has VersionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionName', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::UpdateAnnotationStoreVersionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The time stamp for when an annotation store version was created.


=head2 B<REQUIRED> Description => Str

The description of an annotation store version.


=head2 B<REQUIRED> Id => Str

The annotation store version ID.


=head2 B<REQUIRED> Name => Str

The name of an annotation store.


=head2 B<REQUIRED> Status => Str

The status of an annotation store version.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"ACTIVE">, C<"FAILED">
=head2 B<REQUIRED> StoreId => Str

The annotation store ID.


=head2 B<REQUIRED> UpdateTime => Str

The time stamp for when an annotation store version was updated.


=head2 B<REQUIRED> VersionName => Str

The name of an annotation store version.


=head2 _request_id => Str


=cut

