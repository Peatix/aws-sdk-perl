
package Paws::RedshiftServerless::CreateWorkgroupResponse;
  use Moose;
  has Workgroup => (is => 'ro', isa => 'Paws::RedshiftServerless::Workgroup', traits => ['NameInRequest'], request_name => 'workgroup' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::RedshiftServerless::CreateWorkgroupResponse

=head1 ATTRIBUTES


=head2 Workgroup => L<Paws::RedshiftServerless::Workgroup>

The created workgroup object.


=head2 _request_id => Str


=cut

1;