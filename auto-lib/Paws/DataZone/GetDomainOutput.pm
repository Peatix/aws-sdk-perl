
package Paws::DataZone::GetDomainOutput;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt');
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has DomainExecutionRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainExecutionRole', required => 1);
  has DomainVersion => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainVersion');
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id', required => 1);
  has KmsKeyIdentifier => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'kmsKeyIdentifier');
  has LastUpdatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastUpdatedAt');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has PortalUrl => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'portalUrl');
  has RootDomainUnitId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'rootDomainUnitId');
  has ServiceRole => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'serviceRole');
  has SingleSignOn => (is => 'ro', isa => 'Paws::DataZone::SingleSignOn', traits => ['NameInRequest'], request_name => 'singleSignOn');
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::DataZone::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::DataZone::GetDomainOutput

=head1 ATTRIBUTES


=head2 Arn => Str

The ARN of the specified Amazon DataZone domain.


=head2 CreatedAt => Str

The timestamp of when the Amazon DataZone domain was created.


=head2 Description => Str

The description of the Amazon DataZone domain.


=head2 B<REQUIRED> DomainExecutionRole => Str

The domain execution role with which the Amazon DataZone domain is
created.


=head2 DomainVersion => Str

The version of the domain.

Valid values are: C<"V1">, C<"V2">
=head2 B<REQUIRED> Id => Str

The identifier of the specified Amazon DataZone domain.


=head2 KmsKeyIdentifier => Str

The identifier of the Amazon Web Services Key Management Service (KMS)
key that is used to encrypt the Amazon DataZone domain, metadata, and
reporting data.


=head2 LastUpdatedAt => Str

The timestamp of when the Amazon DataZone domain was last updated.


=head2 Name => Str

The name of the Amazon DataZone domain.


=head2 PortalUrl => Str

The URL of the data portal for this Amazon DataZone domain.


=head2 RootDomainUnitId => Str

The ID of the root domain in Amazon Datazone.


=head2 ServiceRole => Str

The service role of the domain.


=head2 SingleSignOn => L<Paws::DataZone::SingleSignOn>

The single sing-on option of the specified Amazon DataZone domain.


=head2 B<REQUIRED> Status => Str

The status of the specified Amazon DataZone domain.

Valid values are: C<"CREATING">, C<"AVAILABLE">, C<"CREATION_FAILED">, C<"DELETING">, C<"DELETED">, C<"DELETION_FAILED">
=head2 Tags => L<Paws::DataZone::Tags>

The tags specified for the Amazon DataZone domain.


=head2 _request_id => Str


=cut

