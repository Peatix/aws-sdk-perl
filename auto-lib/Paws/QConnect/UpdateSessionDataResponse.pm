
package Paws::QConnect::UpdateSessionDataResponse;
  use Moose;
  has Data => (is => 'ro', isa => 'ArrayRef[Paws::QConnect::RuntimeSessionData]', traits => ['NameInRequest'], request_name => 'data', required => 1);
  has Namespace => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'namespace', required => 1);
  has SessionArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionArn', required => 1);
  has SessionId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'sessionId', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::UpdateSessionDataResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> Data => ArrayRef[L<Paws::QConnect::RuntimeSessionData>]

Data stored in the session.


=head2 B<REQUIRED> Namespace => Str

The namespace into which the session data is stored. Supported
namespaces are: Custom

Valid values are: C<"Custom">
=head2 B<REQUIRED> SessionArn => Str

The Amazon Resource Name (ARN) of the session.


=head2 B<REQUIRED> SessionId => Str

The identifier of the session.


=head2 _request_id => Str


=cut

