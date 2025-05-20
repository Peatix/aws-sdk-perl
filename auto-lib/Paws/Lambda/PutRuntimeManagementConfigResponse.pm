
package Paws::Lambda::PutRuntimeManagementConfigResponse;
  use Moose;
  has FunctionArn => (is => 'ro', isa => 'Str', required => 1);
  has RuntimeVersionArn => (is => 'ro', isa => 'Str');
  has UpdateRuntimeOn => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::PutRuntimeManagementConfigResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FunctionArn => Str

The ARN of the function


=head2 RuntimeVersionArn => Str

The ARN of the runtime the function is configured to use. If the
runtime update mode is B<manual>, the ARN is returned, otherwise
C<null> is returned.


=head2 B<REQUIRED> UpdateRuntimeOn => Str

The runtime update mode.

Valid values are: C<"Auto">, C<"Manual">, C<"FunctionUpdate">
=head2 _request_id => Str


=cut

