
package Paws::LocationService::UpdateRouteCalculatorResponse;
  use Moose;
  has CalculatorArn => (is => 'ro', isa => 'Str', required => 1);
  has CalculatorName => (is => 'ro', isa => 'Str', required => 1);
  has UpdateTime => (is => 'ro', isa => 'Str', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::LocationService::UpdateRouteCalculatorResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CalculatorArn => Str

The Amazon Resource Name (ARN) of the updated route calculator
resource. Used to specify a resource across AWS.

=over

=item *

Format example: C<arn:aws:geo:region:account-id:route-
calculator/ExampleCalculator>

=back



=head2 B<REQUIRED> CalculatorName => Str

The name of the updated route calculator resource.


=head2 B<REQUIRED> UpdateTime => Str

The timestamp for when the route calculator was last updated in ISO
8601 (https://www.iso.org/iso-8601-date-and-time-format.html) format:
C<YYYY-MM-DDThh:mm:ss.sssZ>.


=head2 _request_id => Str


=cut

