
package Paws::ResourceGroups::GetGroupConfigurationOutput;
  use Moose;
  has GroupConfiguration => (is => 'ro', isa => 'Paws::ResourceGroups::GroupConfiguration');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ResourceGroups::GetGroupConfigurationOutput

=head1 ATTRIBUTES


=head2 GroupConfiguration => L<Paws::ResourceGroups::GroupConfiguration>

A structure that describes the service configuration attached with the
specified group. For details about the service configuration syntax,
see Service configurations for Resource Groups
(https://docs.aws.amazon.com/ARG/latest/APIReference/about-slg.html).


=head2 _request_id => Str


=cut

