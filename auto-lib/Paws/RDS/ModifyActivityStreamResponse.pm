
package Paws::RDS::ModifyActivityStreamResponse;
  use Moose;
  has EngineNativeAuditFieldsIncluded => (is => 'ro', isa => 'Bool');
  has KinesisStreamName => (is => 'ro', isa => 'Str');
  has KmsKeyId => (is => 'ro', isa => 'Str');
  has Mode => (is => 'ro', isa => 'Str');
  has PolicyStatus => (is => 'ro', isa => 'Str');
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::ModifyActivityStreamResponse

=head1 ATTRIBUTES


=head2 EngineNativeAuditFieldsIncluded => Bool

Indicates whether engine-native audit fields are included in the
database activity stream.


=head2 KinesisStreamName => Str

The name of the Amazon Kinesis data stream to be used for the database
activity stream.


=head2 KmsKeyId => Str

The Amazon Web Services KMS key identifier for encryption of messages
in the database activity stream.


=head2 Mode => Str

The mode of the database activity stream.

Valid values are: C<"sync">, C<"async">
=head2 PolicyStatus => Str

The status of the modification to the policy state of the database
activity stream.

Valid values are: C<"locked">, C<"unlocked">, C<"locking-policy">, C<"unlocking-policy">
=head2 Status => Str

The status of the modification to the database activity stream.

Valid values are: C<"stopped">, C<"starting">, C<"started">, C<"stopping">
=head2 _request_id => Str


=cut

