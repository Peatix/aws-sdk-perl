
package Paws::ARCZonalShift::GetAutoshiftObserverNotificationStatus;
  use Moose;

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetAutoshiftObserverNotificationStatus');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/autoshift-observer-notification');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ARCZonalShift::GetAutoshiftObserverNotificationStatusResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift::GetAutoshiftObserverNotificationStatus - Arguments for method GetAutoshiftObserverNotificationStatus on L<Paws::ARCZonalShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetAutoshiftObserverNotificationStatus on the
L<AWS ARC - Zonal Shift|Paws::ARCZonalShift> service. Use the attributes of this class
as arguments to method GetAutoshiftObserverNotificationStatus.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetAutoshiftObserverNotificationStatus.

=head1 SYNOPSIS

    my $arc-zonal-shift = Paws->service('ARCZonalShift');
    my $GetAutoshiftObserverNotificationStatusResponse =
      $arc -zonal-shift->GetAutoshiftObserverNotificationStatus();

    # Results:
    my $Status = $GetAutoshiftObserverNotificationStatusResponse->Status;

# Returns a L<Paws::ARCZonalShift::GetAutoshiftObserverNotificationStatusResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift/GetAutoshiftObserverNotificationStatus>

=head1 ATTRIBUTES



=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetAutoshiftObserverNotificationStatus in L<Paws::ARCZonalShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

