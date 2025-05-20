
package Paws::ARCZonalShift::CancelZonalShift;
  use Moose;
  has ZonalShiftId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'zonalShiftId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CancelZonalShift');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/zonalshifts/{zonalShiftId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ARCZonalShift::ZonalShift');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift::CancelZonalShift - Arguments for method CancelZonalShift on L<Paws::ARCZonalShift>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CancelZonalShift on the
L<AWS ARC - Zonal Shift|Paws::ARCZonalShift> service. Use the attributes of this class
as arguments to method CancelZonalShift.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CancelZonalShift.

=head1 SYNOPSIS

    my $arc-zonal-shift = Paws->service('ARCZonalShift');
    my $ZonalShift = $arc -zonal-shift->CancelZonalShift(
      ZonalShiftId => 'MyZonalShiftId',

    );

    # Results:
    my $AwayFrom           = $ZonalShift->AwayFrom;
    my $Comment            = $ZonalShift->Comment;
    my $ExpiryTime         = $ZonalShift->ExpiryTime;
    my $ResourceIdentifier = $ZonalShift->ResourceIdentifier;
    my $StartTime          = $ZonalShift->StartTime;
    my $Status             = $ZonalShift->Status;
    my $ZonalShiftId       = $ZonalShift->ZonalShiftId;

    # Returns a L<Paws::ARCZonalShift::ZonalShift> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/arc-zonal-shift/CancelZonalShift>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ZonalShiftId => Str

The internally-generated identifier of a zonal shift.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CancelZonalShift in L<Paws::ARCZonalShift>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

