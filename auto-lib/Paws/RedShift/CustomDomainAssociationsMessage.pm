
package Paws::RedShift::CustomDomainAssociationsMessage;
  use Moose;
  has Associations => (is => 'ro', isa => 'ArrayRef[Paws::RedShift::Association]', request_name => 'Association', traits => ['NameInRequest',]);
  has Marker => (is => 'ro', isa => 'Str');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RedShift::CustomDomainAssociationsMessage

=head1 ATTRIBUTES


=head2 Associations => ArrayRef[L<Paws::RedShift::Association>]

The associations for the custom domain.


=head2 Marker => Str

The marker for the custom domain association.


=head2 _request_id => Str


=cut

