
package Paws::LakeFormation::CreateLakeFormationIdentityCenterConfigurationResponse;
  use Moose;
  has ApplicationArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LakeFormation::CreateLakeFormationIdentityCenterConfigurationResponse

=head1 ATTRIBUTES


=head2 ApplicationArn => Str

The Amazon Resource Name (ARN) of the Lake Formation application
integrated with IAM Identity Center.


=head2 _request_id => Str


=cut

