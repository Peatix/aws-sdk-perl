
package Paws::ECR::PutAccountSettingResponse;
  use Moose;
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name' );
  has Value => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'value' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::ECR::PutAccountSettingResponse

=head1 ATTRIBUTES


=head2 Name => Str

Retrieves the name of the account setting.


=head2 Value => Str

Retrieves the value of the specified account setting.


=head2 _request_id => Str


=cut

1;