
package Paws::IVSRealTime::StartCompositionResponse;
  use Moose;
  has Composition => (is => 'ro', isa => 'Paws::IVSRealTime::Composition', traits => ['NameInRequest'], request_name => 'composition');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IVSRealTime::StartCompositionResponse

=head1 ATTRIBUTES


=head2 Composition => L<Paws::IVSRealTime::Composition>

The Composition that was created.


=head2 _request_id => Str


=cut

