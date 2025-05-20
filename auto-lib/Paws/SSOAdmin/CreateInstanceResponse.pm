
package Paws::SSOAdmin::CreateInstanceResponse;
  use Moose;
  has InstanceArn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::SSOAdmin::CreateInstanceResponse

=head1 ATTRIBUTES


=head2 InstanceArn => Str

The ARN of the instance of IAM Identity Center under which the
operation will run.

For more information about ARNs, see Amazon Resource Names (ARNs) and
Amazon Web Services Service Namespaces in the I<Amazon Web Services
General Reference>.


=head2 _request_id => Str


=cut

1;