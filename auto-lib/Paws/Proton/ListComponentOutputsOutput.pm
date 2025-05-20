
package Paws::Proton::ListComponentOutputsOutput;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken' );
  has Outputs => (is => 'ro', isa => 'ArrayRef[Paws::Proton::Output]', traits => ['NameInRequest'], request_name => 'outputs' , required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::Proton::ListComponentOutputsOutput

=head1 ATTRIBUTES


=head2 NextToken => Str

A token that indicates the location of the next output in the array of
outputs, after the list of outputs that was previously requested.


=head2 B<REQUIRED> Outputs => ArrayRef[L<Paws::Proton::Output>]

An array of component Infrastructure as Code (IaC) outputs.


=head2 _request_id => Str


=cut

1;