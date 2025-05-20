
package Paws::SsmSap::UpdateApplicationSettingsOutput;
  use Moose;
  has Message => (is => 'ro', isa => 'Str');
  has OperationIds => (is => 'ro', isa => 'ArrayRef[Str|Undef]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SsmSap::UpdateApplicationSettingsOutput

=head1 ATTRIBUTES


=head2 Message => Str

The update message.


=head2 OperationIds => ArrayRef[Str|Undef]

The IDs of the operations.


=head2 _request_id => Str


=cut

