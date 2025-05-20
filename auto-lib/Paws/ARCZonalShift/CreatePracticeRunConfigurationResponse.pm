
package Paws::ARCZonalShift::CreatePracticeRunConfigurationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has PracticeRunConfiguration => (is => 'ro', isa => 'Paws::ARCZonalShift::PracticeRunConfiguration', traits => ['NameInRequest'], request_name => 'practiceRunConfiguration', required => 1);
  has ZonalAutoshiftStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'zonalAutoshiftStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift::CreatePracticeRunConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the resource that you configured the
practice run for.


=head2 B<REQUIRED> Name => Str

The name of the resource that you configured the practice run for.


=head2 B<REQUIRED> PracticeRunConfiguration => L<Paws::ARCZonalShift::PracticeRunConfiguration>

A practice run configuration for a resource. Configurations include the
outcome alarm that you specify for practice runs, and, optionally, a
blocking alarm and blocking dates and windows.


=head2 B<REQUIRED> ZonalAutoshiftStatus => Str

The status for zonal autoshift for a resource. When you specify
C<ENABLED> for the autoshift status, Amazon Web Services shifts traffic
away from shifts away application resource traffic from an Availability
Zone, on your behalf, when internal telemetry indicates that there is
an Availability Zone impairment that could potentially impact
customers.

When you enable zonal autoshift, you must also configure practice runs
for the resource.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 _request_id => Str


=cut

