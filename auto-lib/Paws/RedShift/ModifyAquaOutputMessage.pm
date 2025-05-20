
package Paws::RedShift::ModifyAquaOutputMessage;
  use Moose;
  has AquaConfiguration => (is => 'ro', isa => 'Paws::RedShift::AquaConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::ModifyAquaOutputMessage

=head1 ATTRIBUTES


=head2 AquaConfiguration => L<Paws::RedShift::AquaConfiguration>

This parameter is retired. Amazon Redshift automatically determines
whether to use AQUA (Advanced Query Accelerator).


=head2 _request_id => Str


=cut

