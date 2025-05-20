
package Paws::ARCZonalShift::UpdateAutoshiftObserverNotificationStatus;
  use Moose;
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateAutoshiftObserverNotificationStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/autoshift-observer-notification');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'PUT');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ARCZonalShift::UpdateAutoshiftObserverNotificationStatusResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift::UpdateAutoshiftObserverNotificationStatus - Arguments for method UpdateAutoshiftObserverNotificationStatus on L<Paws::ARCZonalShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateAutoshiftObserverNotificationStatus on the
L<AWS ARC - Zonal Shift|Paws::ARCZonalShift> service. Use the attributes of this class
as arguments to method UpdateAutoshiftObserverNotificationStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateAutoshiftObserverNotificationStatus.

=head1 SYNOPSIS

    my $arc-zonal-shift = Paws->service('ARCZonalShift');
    my $UpdateAutoshiftObserverNotificationStatusResponse =
      $arc -zonal-shift->UpdateAutoshiftObserverNotificationStatus(
      Status => 'ENABLED',

      );

    # Results:
    my $Status = $UpdateAutoshiftObserverNotificationStatusResponse->Status;

# Returns a L<Paws::ARCZonalShift::UpdateAutoshiftObserverNotificationStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift/UpdateAutoshiftObserverNotificationStatus>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Status => Str

The status to set for autoshift observer notification. If the status is
C<ENABLED>, ARC includes all autoshift events when you use the Amazon
EventBridge pattern C<Autoshift In Progress>. When the status is
C<DISABLED>, ARC includes only autoshift events for autoshifts when one
or more of your resources is included in the autoshift.

Valid values are: C<"ENABLED">, C<"DISABLED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateAutoshiftObserverNotificationStatus in L<Paws::ARCZonalShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

