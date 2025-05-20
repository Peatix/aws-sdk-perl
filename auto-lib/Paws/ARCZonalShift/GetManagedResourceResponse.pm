
package Paws::ARCZonalShift::GetManagedResourceResponse;
  use Moose;
  has AppliedWeights => (is => 'ro', isa => 'Paws::ARCZonalShift::AppliedWeights', traits => ['NameInRequest'], request_name => 'appliedWeights', required => 1);
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn');
  has Autoshifts => (is => 'ro', isa => 'ArrayRef[Paws::ARCZonalShift::AutoshiftInResource]', traits => ['NameInRequest'], request_name => 'autoshifts');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name');
  has PracticeRunConfiguration => (is => 'ro', isa => 'Paws::ARCZonalShift::PracticeRunConfiguration', traits => ['NameInRequest'], request_name => 'practiceRunConfiguration');
  has ZonalAutoshiftStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'zonalAutoshiftStatus');
  has ZonalShifts => (is => 'ro', isa => 'ArrayRef[Paws::ARCZonalShift::ZonalShiftInResource]', traits => ['NameInRequest'], request_name => 'zonalShifts', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift::GetManagedResourceResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AppliedWeights => L<Paws::ARCZonalShift::AppliedWeights>

A collection of key-value pairs that indicate whether resources are
active in Availability Zones or not. The key name is the Availability
Zone where the resource is deployed. The value is 1 or 0.


=head2 Arn => Str

The Amazon Resource Name (ARN) for the resource.


=head2 Autoshifts => ArrayRef[L<Paws::ARCZonalShift::AutoshiftInResource>]

An array of the autoshifts that are active for the resource.


=head2 Name => Str

The name of the resource.


=head2 PracticeRunConfiguration => L<Paws::ARCZonalShift::PracticeRunConfiguration>

The practice run configuration for zonal autoshift that's associated
with the resource.


=head2 ZonalAutoshiftStatus => Str

The status for zonal autoshift for a resource. When the autoshift
status is C<ENABLED>, Amazon Web Services shifts traffic for a resource
away from an Availability Zone, on your behalf, when Amazon Web
Services determines that there's an issue in the Availability Zone that
could potentially affect customers.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 B<REQUIRED> ZonalShifts => ArrayRef[L<Paws::ARCZonalShift::ZonalShiftInResource>]

The zonal shifts that are currently active for a resource.


=head2 _request_id => Str


=cut

