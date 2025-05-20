
package Paws::Detective::DescribeOrganizationConfigurationResponse;
  use Moose;
  has AutoEnable => (is => 'ro', isa => 'Bool');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Detective::DescribeOrganizationConfigurationResponse

=head1 ATTRIBUTES


=head2 AutoEnable => Bool

Indicates whether to automatically enable new organization accounts as
member accounts in the organization behavior graph.


=head2 _request_id => Str


=cut

