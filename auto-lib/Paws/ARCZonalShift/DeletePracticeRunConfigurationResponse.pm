
package Paws::ARCZonalShift::DeletePracticeRunConfigurationResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'arn', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has ZonalAutoshiftStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'zonalAutoshiftStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ARCZonalShift::DeletePracticeRunConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the resource that you deleted the
practice run for.


=head2 B<REQUIRED> Name => Str

The name of the resource that you deleted the practice run for.


=head2 B<REQUIRED> ZonalAutoshiftStatus => Str

The status of zonal autoshift for the resource.

Valid values are: C<"ENABLED">, C<"DISABLED">
=head2 _request_id => Str


=cut

