
package Paws::RedShift::ModifyRedshiftIdcApplicationResult;
  use Moose;
  has RedshiftIdcApplication => (is => 'ro', isa => 'Paws::RedShift::RedshiftIdcApplication');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifyRedshiftIdcApplicationResult

=head1 ATTRIBUTES


=head2 RedshiftIdcApplication => L<Paws::RedShift::RedshiftIdcApplication>




=head2 _request_id => Str


=cut

