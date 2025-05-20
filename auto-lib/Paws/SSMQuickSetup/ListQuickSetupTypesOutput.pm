
package Paws::SSMQuickSetup::ListQuickSetupTypesOutput;
  use Moose;
  has QuickSetupTypeList => (is => 'ro', isa => 'ArrayRef[Paws::SSMQuickSetup::QuickSetupTypeOutput]');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SSMQuickSetup::ListQuickSetupTypesOutput

=head1 ATTRIBUTES


=head2 QuickSetupTypeList => ArrayRef[L<Paws::SSMQuickSetup::QuickSetupTypeOutput>]

An array of Quick Setup types.


=head2 _request_id => Str


=cut

