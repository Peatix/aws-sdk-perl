
package Paws::PinpointSMSVoiceV2::DescribeRegistrationTypeDefinitionsResult;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str');
  has RegistrationTypeDefinitions => (is => 'ro', isa => 'ArrayRef[Paws::PinpointSMSVoiceV2::RegistrationTypeDefinition]', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::PinpointSMSVoiceV2::DescribeRegistrationTypeDefinitionsResult

=head1 ATTRIBUTES


=head2 NextToken => Str

The token to be used for the next set of paginated results. You don't
need to supply a value for this field in the initial request.


=head2 B<REQUIRED> RegistrationTypeDefinitions => ArrayRef[L<Paws::PinpointSMSVoiceV2::RegistrationTypeDefinition>]

The type of registration form. The list of B<RegistrationTypes> can be
found using the DescribeRegistrationTypeDefinitions action.


=head2 _request_id => Str


=cut

1;