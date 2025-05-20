
package Paws::Lambda::GetRuntimeManagementConfigResponse;
  use Moose;
  has FunctionArn => (is => 'ro', isa => 'Str');
  has RuntimeVersionArn => (is => 'ro', isa => 'Str');
  has UpdateRuntimeOn => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::GetRuntimeManagementConfigResponse

=head1 ATTRIBUTES


=head2 FunctionArn => Str

The Amazon Resource Name (ARN) of your function.


=head2 RuntimeVersionArn => Str

The ARN of the runtime the function is configured to use. If the
runtime update mode is B<Manual>, the ARN is returned, otherwise
C<null> is returned.


=head2 UpdateRuntimeOn => Str

The current runtime update mode of the function.

Valid values are: C<"Auto">, C<"Manual">, C<"FunctionUpdate">
=head2 _request_id => Str


=cut

