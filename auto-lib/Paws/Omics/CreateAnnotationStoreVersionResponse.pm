
package Paws::Omics::CreateAnnotationStoreVersionResponse;
  use Moose;
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StoreId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'storeId', required => 1);
  has VersionName => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'versionName', required => 1);
  has VersionOptions => (is => 'ro', isa => 'Paws::Omics::VersionOptions', traits => ['NameInRequest'], request_name => 'versionOptions');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Omics::CreateAnnotationStoreVersionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreationTime => Str

The time stamp for the creation of an annotation store version.


=head2 B<REQUIRED> Id => Str

A generated ID for the annotation store


=head2 B<REQUIRED> Name => Str

The name given to an annotation store version to distinguish it from
other versions.


=head2 B<REQUIRED> Status => Str

The status of a annotation store version.

Valid values are: C<"CREATING">, C<"UPDATING">, C<"DELETING">, C<"ACTIVE">, C<"FAILED">
=head2 B<REQUIRED> StoreId => Str

The ID for the annotation store from which new versions are being
created.


=head2 B<REQUIRED> VersionName => Str

The name given to an annotation store version to distinguish it from
other versions.


=head2 VersionOptions => L<Paws::Omics::VersionOptions>

The options for an annotation store version.


=head2 _request_id => Str


=cut

