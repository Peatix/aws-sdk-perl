
package Paws::EC2::DeleteInstanceEventWindowResult;
  use Moose;
  has InstanceEventWindowState => (is => 'ro', isa => 'Paws::EC2::InstanceEventWindowStateChange', request_name => 'instanceEventWindowState', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::DeleteInstanceEventWindowResult

=head1 ATTRIBUTES


=head2 InstanceEventWindowState => L<Paws::EC2::InstanceEventWindowStateChange>

The state of the event window.


=head2 _request_id => Str


=cut

