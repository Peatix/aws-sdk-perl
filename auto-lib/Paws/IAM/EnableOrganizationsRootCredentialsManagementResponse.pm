
package Paws::IAM::EnableOrganizationsRootCredentialsManagementResponse;
  use Moose;
  has EnabledFeatures => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OrganizationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::EnableOrganizationsRootCredentialsManagementResponse

=head1 ATTRIBUTES


=head2 EnabledFeatures => ArrayRef[Str|Undef]

The features you have enabled for centralized root access.


=head2 OrganizationId => Str

The unique identifier (ID) of an organization.


=head2 _request_id => Str


=cut

