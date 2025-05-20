
package Paws::BackupGateway::PutMaintenanceStartTime;
  use Moose;
  has DayOfMonth => (is => 'ro', isa => 'Int');
  has DayOfWeek => (is => 'ro', isa => 'Int');
  has GatewayArn => (is => 'ro', isa => 'Str', required => 1);
  has HourOfDay => (is => 'ro', isa => 'Int', required => 1);
  has MinuteOfHour => (is => 'ro', isa => 'Int', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'PutMaintenanceStartTime');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::BackupGateway::PutMaintenanceStartTimeOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::BackupGateway::PutMaintenanceStartTime - Arguments for method PutMaintenanceStartTime on L<Paws::BackupGateway>

=head1 DESCRIPTION

This class represents the parameters used for calling the method PutMaintenanceStartTime on the
L<AWS Backup Gateway|Paws::BackupGateway> service. Use the attributes of this class
as arguments to method PutMaintenanceStartTime.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to PutMaintenanceStartTime.

=head1 SYNOPSIS

    my $backup-gateway = Paws->service('BackupGateway');
    my $PutMaintenanceStartTimeOutput =
      $backup -gateway->PutMaintenanceStartTime(
      GatewayArn   => 'MyGatewayArn',
      HourOfDay    => 1,
      MinuteOfHour => 1,
      DayOfMonth   => 1,                # OPTIONAL
      DayOfWeek    => 1,                # OPTIONAL
      );

    # Results:
    my $GatewayArn = $PutMaintenanceStartTimeOutput->GatewayArn;

    # Returns a L<Paws::BackupGateway::PutMaintenanceStartTimeOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/backup-gateway/PutMaintenanceStartTime>

=head1 ATTRIBUTES


=head2 DayOfMonth => Int

The day of the month start maintenance on a gateway.

Valid values range from C<Sunday> to C<Saturday>.



=head2 DayOfWeek => Int

The day of the week to start maintenance on a gateway.



=head2 B<REQUIRED> GatewayArn => Str

The Amazon Resource Name (ARN) for the gateway, used to specify its
maintenance start time.



=head2 B<REQUIRED> HourOfDay => Int

The hour of the day to start maintenance on a gateway.



=head2 B<REQUIRED> MinuteOfHour => Int

The minute of the hour to start maintenance on a gateway.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method PutMaintenanceStartTime in L<Paws::BackupGateway>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

