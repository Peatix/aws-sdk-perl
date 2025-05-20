
package Paws::B2bi::UpdateCapabilityResponse;
  use Moose;
  has CapabilityArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'capabilityArn' , required => 1);
  has CapabilityId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'capabilityId' , required => 1);
  has Configuration => (is => 'ro', isa => 'Paws::B2bi::CapabilityConfiguration', traits => ['NameInRequest'], request_name => 'configuration' , required => 1);
  has CreatedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdAt' , required => 1);
  has InstructionsDocuments => (is => 'ro', isa => 'ArrayRef[Paws::B2bi::S3Location]', traits => ['NameInRequest'], request_name => 'instructionsDocuments' );
  has ModifiedAt => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modifiedAt' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Type => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'type' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::B2bi::UpdateCapabilityResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CapabilityArn => Str

Returns an Amazon Resource Name (ARN) for a specific Amazon Web
Services resource, such as a capability, partnership, profile, or
transformer.


=head2 B<REQUIRED> CapabilityId => Str

Returns a system-assigned unique identifier for the capability.


=head2 B<REQUIRED> Configuration => L<Paws::B2bi::CapabilityConfiguration>

Returns a structure that contains the details for a capability.


=head2 B<REQUIRED> CreatedAt => Str

Returns a timestamp for creation date and time of the capability.


=head2 InstructionsDocuments => ArrayRef[L<Paws::B2bi::S3Location>]

Returns one or more locations in Amazon S3, each specifying an EDI
document that can be used with this capability. Each item contains the
name of the bucket and the key, to identify the document's location.


=head2 ModifiedAt => Str

Returns a timestamp for last time the capability was modified.


=head2 B<REQUIRED> Name => Str

Returns the name of the capability, used to identify it.


=head2 B<REQUIRED> Type => Str

Returns the type of the capability. Currently, only C<edi> is
supported.

Valid values are: C<"edi">
=head2 _request_id => Str


=cut

1;