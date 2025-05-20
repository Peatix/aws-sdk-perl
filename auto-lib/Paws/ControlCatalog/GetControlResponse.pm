
package Paws::ControlCatalog::GetControlResponse;
  use Moose;
  has Arn => (is => 'ro', isa => 'Str', required => 1);
  has Behavior => (is => 'ro', isa => 'Str', required => 1);
  has CreateTime => (is => 'ro', isa => 'Str');
  has Description => (is => 'ro', isa => 'Str', required => 1);
  has Implementation => (is => 'ro', isa => 'Paws::ControlCatalog::ImplementationDetails');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has Parameters => (is => 'ro', isa => 'ArrayRef[Paws::ControlCatalog::ControlParameter]');
  has RegionConfiguration => (is => 'ro', isa => 'Paws::ControlCatalog::RegionConfiguration', required => 1);
  has Severity => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ControlCatalog::GetControlResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Arn => Str

The Amazon Resource Name (ARN) of the control.


=head2 B<REQUIRED> Behavior => Str

A term that identifies the control's functional behavior. One of
C<Preventive>, C<Detective>, C<Proactive>

Valid values are: C<"PREVENTIVE">, C<"PROACTIVE">, C<"DETECTIVE">
=head2 CreateTime => Str

A timestamp that notes the time when the control was released (start of
its life) as a governance capability in Amazon Web Services.


=head2 B<REQUIRED> Description => Str

A description of what the control does.


=head2 Implementation => L<Paws::ControlCatalog::ImplementationDetails>

Returns information about the control, as an C<ImplementationDetails>
object that shows the underlying implementation type for a control.


=head2 B<REQUIRED> Name => Str

The display name of the control.


=head2 Parameters => ArrayRef[L<Paws::ControlCatalog::ControlParameter>]

Returns an array of C<ControlParameter> objects that specify the
parameters a control supports. An empty list is returned for controls
that donE<rsquo>t support parameters.


=head2 B<REQUIRED> RegionConfiguration => L<Paws::ControlCatalog::RegionConfiguration>




=head2 Severity => Str

An enumerated type, with the following possible values:

Valid values are: C<"LOW">, C<"MEDIUM">, C<"HIGH">, C<"CRITICAL">
=head2 _request_id => Str


=cut

