
package Paws::EC2::ModifyInstanceMaintenanceOptionsResult;
  use Moose;
  has AutoRecovery => (is => 'ro', isa => 'Str', request_name => 'autoRecovery', traits => ['NameInRequest',]);
  has InstanceId => (is => 'ro', isa => 'Str', request_name => 'instanceId', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::ModifyInstanceMaintenanceOptionsResult

=head1 ATTRIBUTES


=head2 AutoRecovery => Str

Provides information on the current automatic recovery behavior of your
instance.

Valid values are: C<"disabled">, C<"default">
=head2 InstanceId => Str

The ID of the instance.


=head2 _request_id => Str


=cut

