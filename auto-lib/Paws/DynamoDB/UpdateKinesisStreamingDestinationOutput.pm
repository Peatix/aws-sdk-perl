
package Paws::DynamoDB::UpdateKinesisStreamingDestinationOutput;
  use Moose;
  has DestinationStatus => (is => 'ro', isa => 'Str');
  has StreamArn => (is => 'ro', isa => 'Str');
  has TableName => (is => 'ro', isa => 'Str');
  has UpdateKinesisStreamingConfiguration => (is => 'ro', isa => 'Paws::DynamoDB::UpdateKinesisStreamingConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::DynamoDB::UpdateKinesisStreamingDestinationOutput

=head1 ATTRIBUTES


=head2 DestinationStatus => Str

The status of the attempt to update the Kinesis streaming destination
output.

Valid values are: C<"ENABLING">, C<"ACTIVE">, C<"DISABLING">, C<"DISABLED">, C<"ENABLE_FAILED">, C<"UPDATING">
=head2 StreamArn => Str

The ARN for the Kinesis stream input.


=head2 TableName => Str

The table name for the Kinesis streaming destination output.


=head2 UpdateKinesisStreamingConfiguration => L<Paws::DynamoDB::UpdateKinesisStreamingConfiguration>

The command to update the Kinesis streaming destination configuration.


=head2 _request_id => Str


=cut

1;