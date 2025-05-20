
package Paws::Omics::GetAnnotationStoreVersionResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusMessage => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusMessage', required => 1);
  has StoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storeId', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::Omics::TagMap', traits => ['NameInRequest'], request_name => 'tags', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'updateTime', required => 1);
  has VersionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionArn', required => 1);
  has VersionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionName', required => 1);
  has VersionOptions => (is => 'ro', isa => 'Paws::Omics::VersionOptions', traits => ['NameInRequest'], request_name => 'versionOptions');
  has VersionSizeBytes => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'versionSizeBytes', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::GetAnnotationStoreVersionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The time stamp for when an annotation store version was created.


=head2 B<REQUIRED> Description => Str

The description for an annotation store version.


=head2 B<REQUIRED> Id => Str

The annotation store version ID.


=head2 B<REQUIRED> Name => Str

The name of the annotation store.


=head2 B<REQUIRED> Status => Str

The status of an annotation store version.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"ACTIVE">, C<"FAILED">
=head2 B<REQUIRED> StatusMessage => Str

The status of an annotation store version.


=head2 B<REQUIRED> StoreId => Str

The store ID for annotation store version.


=head2 B<REQUIRED> Tags => L<Paws::Omics::TagMap>

Any tags associated with an annotation store version.


=head2 B<REQUIRED> UpdateTime => Str

The time stamp for when an annotation store version was updated.


=head2 B<REQUIRED> VersionArn => Str

The Arn for the annotation store.


=head2 B<REQUIRED> VersionName => Str

The name given to an annotation store version to distinguish it from
others.


=head2 VersionOptions => L<Paws::Omics::VersionOptions>

The options for an annotation store version.


=head2 B<REQUIRED> VersionSizeBytes => Int

The size of the annotation store version in Bytes.


=head2 _request_id => Str


=cut

