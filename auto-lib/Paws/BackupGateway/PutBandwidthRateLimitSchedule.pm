
package Paws::BackupGateway::PutBandwidthRateLimitSchedule;
  use Moose;
  has BandwidthRateLimitIntervals => (is => 'ro', isa => 'ArrayRef[Paws::BackupGateway::BandwidthRateLimitInterval]', required => 1);
  has GatewayArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutBandwidthRateLimitSchedule');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BackupGateway::PutBandwidthRateLimitScheduleOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::PutBandwidthRateLimitSchedule - Arguments for method PutBandwidthRateLimitSchedule on L<Paws::BackupGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutBandwidthRateLimitSchedule on the
L<AWS Backup Gateway|Paws::BackupGateway> service. Use the attributes of this class
as arguments to method PutBandwidthRateLimitSchedule.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutBandwidthRateLimitSchedule.

=head1 SYNOPSIS

    my $backup-gateway = Paws->service('BackupGateway');
    my $PutBandwidthRateLimitScheduleOutput =
      $backup -gateway->PutBandwidthRateLimitSchedule(
      BandwidthRateLimitIntervals => [
        {
          DaysOfWeek => [
            1, ...    # max: 6
          ],    # min: 1, max: 7
          EndHourOfDay                       => 1,    # max: 23
          EndMinuteOfHour                    => 1,    # max: 59
          StartHourOfDay                     => 1,    # max: 23
          StartMinuteOfHour                  => 1,    # max: 59
          AverageUploadRateLimitInBitsPerSec =>
            1,    # min: 51200, max: 8000000000000; OPTIONAL
        },
        ...
      ],
      GatewayArn => 'MyGatewayArn',

      );

    # Results:
    my $GatewayArn = $PutBandwidthRateLimitScheduleOutput->GatewayArn;

 # Returns a L<Paws::BackupGateway::PutBandwidthRateLimitScheduleOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-gateway/PutBandwidthRateLimitSchedule>

=head1 ATTRIBUTES


=head2 B<REQUIRED> BandwidthRateLimitIntervals => ArrayRef[L<Paws::BackupGateway::BandwidthRateLimitInterval>]

An array containing bandwidth rate limit schedule intervals for a
gateway. When no bandwidth rate limit intervals have been scheduled,
the array is empty.



=head2 B<REQUIRED> GatewayArn => Str

The Amazon Resource Name (ARN) of the gateway. Use the C<ListGateways>
(https://docs.aws.amazon.com/aws-backup/latest/devguide/API_BGW_ListGateways.html)
operation to return a list of gateways for your account and Amazon Web
Services Region.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutBandwidthRateLimitSchedule in L<Paws::BackupGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

