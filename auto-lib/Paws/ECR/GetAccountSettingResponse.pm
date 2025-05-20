
package Paws::ECR::GetAccountSettingResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has Value => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'value' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::GetAccountSettingResponse

=head1 ATTRIBUTES


=head2 Name => Str

Retrieves the name of the account setting.


=head2 Value => Str

The setting value for the setting name. The following are valid values
for the basic scan type being used: C<AWS_NATIVE> or C<CLAIR>. The
following are valid values for the registry policy scope being used:
C<V1> or C<V2>.


=head2 _request_id => Str


=cut

1;