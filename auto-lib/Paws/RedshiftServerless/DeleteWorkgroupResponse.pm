
package Paws::RedshiftServerless::DeleteWorkgroupResponse;
  use Moose;
  has Workgroup => (is => 'ro', isa => 'Paws::RedshiftServerless::Workgroup', traits => ['NameInRequest'], request_name => 'workgroup' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::DeleteWorkgroupResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Workgroup => L<Paws::RedshiftServerless::Workgroup>

The deleted workgroup object.


=head2 _request_id => Str


=cut

1;