
package Paws::IoTFleetWise::GetDecoderManifestResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn' , required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime' , required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description' );
  has LastModificationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'lastModificationTime' , required => 1);
  has Message => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'message' );
  has ModelManifestArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'modelManifestArn' );
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' , required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::IoTFleetWise::GetDecoderManifestResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the decoder manifest.


=head2 B<REQUIRED> CreationTime => Str

The time the decoder manifest was created in seconds since epoch
(January 1, 1970 at midnight UTC time).


=head2 Description => Str

A brief description of the decoder manifest.


=head2 B<REQUIRED> LastModificationTime => Str

The time the decoder manifest was last updated in seconds since epoch
(January 1, 1970 at midnight UTC time).


=head2 Message => Str

The detailed message for the decoder manifest. When a decoder manifest
is in an C<INVALID> status, the message contains detailed reason and
help information.


=head2 ModelManifestArn => Str

The ARN of a vehicle model (model manifest) associated with the decoder
manifest.


=head2 B<REQUIRED> Name => Str

The name of the decoder manifest.


=head2 Status => Str

The state of the decoder manifest. If the status is C<ACTIVE>, the
decoder manifest can't be edited. If the status is marked C<DRAFT>, you
can edit the decoder manifest.

Valid values are: C<"ACTIVE">, C<"DRAFT">, C<"INVALID">, C<"VALIDATING">
=head2 _request_id => Str


=cut

1;