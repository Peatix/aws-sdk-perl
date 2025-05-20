
package Paws::EC2::AssociateInstanceEventWindowResult;
  use Moose;
  has InstanceEventWindow => (is => 'ro', isa => 'Paws::EC2::InstanceEventWindow', request_name => 'instanceEventWindow', traits => ['NameInRequest',]);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EC2::AssociateInstanceEventWindowResult

=head1 ATTRIBUTES


=head2 InstanceEventWindow => L<Paws::EC2::InstanceEventWindow>

Information about the event window.


=head2 _request_id => Str


=cut

