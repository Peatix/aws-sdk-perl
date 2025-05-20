
package Paws::CloudFormation::DescribeOrganizationsAccessOutput;
  use Moose;
  has Status => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::CloudFormation::DescribeOrganizationsAccessOutput

=head1 ATTRIBUTES


=head2 Status => Str

Presents the status of the C<OrganizationAccess>.

Valid values are: C<"ENABLED">, C<"DISABLED">, C<"DISABLED_PERMANENTLY">
=head2 _request_id => Str


=cut

