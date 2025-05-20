
package Paws::Inspector2::UpdateOrganizationConfigurationResponse;
  use Moose;
  has AutoEnable => (is => 'ro', isa => 'Paws::Inspector2::AutoEnable', traits => ['NameInRequest'], request_name => 'autoEnable', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Inspector2::UpdateOrganizationConfigurationResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> AutoEnable => L<Paws::Inspector2::AutoEnable>

The updated status of scan types automatically enabled for new members
of your Amazon Inspector organization.


=head2 _request_id => Str


=cut

