
package Paws::RedShift::LoggingStatus;
  use Moose;
  has BucketName => (is => 'ro', isa => 'Str');
  has LastFailureMessage => (is => 'ro', isa => 'Str');
  has LastFailureTime => (is => 'ro', isa => 'Str');
  has LastSuccessfulDeliveryTime => (is => 'ro', isa => 'Str');
  has LogDestinationType => (is => 'ro', isa => 'Str');
  has LogExports => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has LoggingEnabled => (is => 'ro', isa => 'Bool');
  has S3KeyPrefix => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::LoggingStatus

=head1 ATTRIBUTES


=head2 BucketName => Str

The name of the S3 bucket where the log files are stored.


=head2 LastFailureMessage => Str

The message indicating that logs failed to be delivered.


=head2 LastFailureTime => Str

The last time when logs failed to be delivered.


=head2 LastSuccessfulDeliveryTime => Str

The last time that logs were delivered.


=head2 LogDestinationType => Str

The log destination type. An enum with possible values of C<s3> and
C<cloudwatch>.

Valid values are: C<"s3">, C<"cloudwatch">
=head2 LogExports => ArrayRef[Str|Undef]

The collection of exported log types. Possible values are
C<connectionlog>, C<useractivitylog>, and C<userlog>.


=head2 LoggingEnabled => Bool

C<true> if logging is on, C<false> if logging is off.


=head2 S3KeyPrefix => Str

The prefix applied to the log file names.


=head2 _request_id => Str


=cut

