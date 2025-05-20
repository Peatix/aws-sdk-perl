
package Paws::Proton::GetResourcesSummaryOutput;
  use Moose;
  has Counts => (is => 'ro', isa => 'Paws::Proton::CountsSummary', traits => ['NameInRequest'], request_name => 'counts' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::GetResourcesSummaryOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Counts => L<Paws::Proton::CountsSummary>

Summary counts of each Proton resource type.


=head2 _request_id => Str


=cut

1;