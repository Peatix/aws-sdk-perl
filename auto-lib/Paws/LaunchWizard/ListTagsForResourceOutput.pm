
package Paws::LaunchWizard::ListTagsForResourceOutput;
  use Moose;
  has Tags => (is => 'ro', isa => 'Paws::LaunchWizard::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LaunchWizard::ListTagsForResourceOutput

=head1 ATTRIBUTES


=head2 Tags => L<Paws::LaunchWizard::Tags>

Information about the tags.


=head2 _request_id => Str


=cut

