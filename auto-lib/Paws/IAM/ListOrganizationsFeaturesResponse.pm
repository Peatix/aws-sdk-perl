
package Paws::IAM::ListOrganizationsFeaturesResponse;
  use Moose;
  has EnabledFeatures => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has OrganizationId => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::IAM::ListOrganizationsFeaturesResponse

=head1 ATTRIBUTES


=head2 EnabledFeatures => ArrayRef[Str|Undef]

Specifies the features that are currently available in your
organization.


=head2 OrganizationId => Str

The unique identifier (ID) of an organization.


=head2 _request_id => Str


=cut

