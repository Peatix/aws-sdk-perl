
package Paws::CustomerProfiles::PutProfileObjectTypeResponse;
  use Moose;
  has AllowProfileCreation => (is => 'ro', isa => 'Bool');
  has CreatedAt => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has EncryptionKey => (is => 'ro', isa => 'Str');
  has ExpirationDays => (is => 'ro', isa => 'Int');
  has Fields => (is => 'ro', isa => 'Paws::CustomerProfiles::FieldMap');
  has Keys => (is => 'ro', isa => 'Paws::CustomerProfiles::KeyMap');
  has LastUpdatedAt => (is => 'ro', isa => 'Str');
  has MaxAvailableProfileObjectCount => (is => 'ro', isa => 'Int');
  has MaxProfileObjectCount => (is => 'ro', isa => 'Int');
  has ObjectTypeName => (is => 'ro', isa => 'Str', required => 1);
  has SourceLastUpdatedTimestampFormat => (is => 'ro', isa => 'Str');
  has Tags => (is => 'ro', isa => 'Paws::CustomerProfiles::TagMap');
  has TemplateId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CustomerProfiles::PutProfileObjectTypeResponse

=head1 ATTRIBUTES


=head2 AllowProfileCreation => Bool

Indicates whether a profile should be created when data is received if
one doesnE<rsquo>t exist for an object of this type. The default is
C<FALSE>. If the AllowProfileCreation flag is set to C<FALSE>, then the
service tries to fetch a standard profile and associate this object
with the profile. If it is set to C<TRUE>, and if no match is found,
then the service creates a new standard profile.


=head2 CreatedAt => Str

The timestamp of when the domain was created.


=head2 B<REQUIRED> Description => Str

Description of the profile object type.


=head2 EncryptionKey => Str

The customer-provided key to encrypt the profile object that will be
created in this profile object type.


=head2 ExpirationDays => Int

The number of days until the data in the object expires.


=head2 Fields => L<Paws::CustomerProfiles::FieldMap>

A map of the name and ObjectType field.


=head2 Keys => L<Paws::CustomerProfiles::KeyMap>

A list of unique keys that can be used to map data to the profile.


=head2 LastUpdatedAt => Str

The timestamp of when the domain was most recently edited.


=head2 MaxAvailableProfileObjectCount => Int

The amount of provisioned profile object max count available.


=head2 MaxProfileObjectCount => Int

The amount of profile object max count assigned to the object type.


=head2 B<REQUIRED> ObjectTypeName => Str

The name of the profile object type.


=head2 SourceLastUpdatedTimestampFormat => Str

The format of your C<sourceLastUpdatedTimestamp> that was previously
set up in fields that were parsed using SimpleDateFormat
(https://docs.oracle.com/javase/10/docs/api/java/text/SimpleDateFormat.html).
If you have C<sourceLastUpdatedTimestamp> in your field, you must set
up C<sourceLastUpdatedTimestampFormat>.


=head2 Tags => L<Paws::CustomerProfiles::TagMap>

The tags used to organize, track, or control access for this resource.


=head2 TemplateId => Str

A unique identifier for the object template.


=head2 _request_id => Str


=cut

