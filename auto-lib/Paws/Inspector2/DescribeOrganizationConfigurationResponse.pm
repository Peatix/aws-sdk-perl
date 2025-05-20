
package Paws::Inspector2::DescribeOrganizationConfigurationResponse;
  use Moose;
  has AutoEnable => (is => 'ro', isa => 'Paws::Inspector2::AutoEnable', traits => ['NameInRequest'], request_name => 'autoEnable');
  has MaxAccountLimitReached => (is => 'ro', isa => 'Bool', traits => ['NameInRequest'], request_name => 'maxAccountLimitReached');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::DescribeOrganizationConfigurationResponse

=head1 ATTRIBUTES


=head2 AutoEnable => L<Paws::Inspector2::AutoEnable>

The scan types are automatically enabled for new members of your
organization.


=head2 MaxAccountLimitReached => Bool

Represents whether your organization has reached the maximum Amazon Web
Services account limit for Amazon Inspector.


=head2 _request_id => Str


=cut

