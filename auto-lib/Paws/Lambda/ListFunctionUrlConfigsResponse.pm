
package Paws::Lambda::ListFunctionUrlConfigsResponse;
  use Moose;
  has FunctionUrlConfigs => (is => 'ro', isa => 'ArrayRef[Paws::Lambda::FunctionUrlConfig]', required => 1);
  has NextMarker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Lambda::ListFunctionUrlConfigsResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> FunctionUrlConfigs => ArrayRef[L<Paws::Lambda::FunctionUrlConfig>]

A list of function URL configurations.


=head2 NextMarker => Str

The pagination token that's included if more results are available.


=head2 _request_id => Str


=cut

