
package Paws::Proton::ListComponentsOutput;
  use Moose;
  has Components => (is => 'ro', isa => 'ArrayRef[Paws::Proton::ComponentSummary]', traits => ['NameInRequest'], request_name => 'components' , required => 1);
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListComponentsOutput

=head1 ATTRIBUTES


=head2 B<REQUIRED> Components => ArrayRef[L<Paws::Proton::ComponentSummary>]

An array of components with summary data.


=head2 NextToken => Str

A token that indicates the location of the next component in the array
of components, after the current requested list of components.


=head2 _request_id => Str


=cut

1;