
package Paws::Route53RecoveryReadiness::GetReadinessCheckStatusResponse;
  use Moose;
  has Messages => (is => 'ro', isa => 'ArrayRef[Paws::Route53RecoveryReadiness::Message]', traits => ['NameInRequest'], request_name => 'messages');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has Readiness => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'readiness');
  has Resources => (is => 'ro', isa => 'ArrayRef[Paws::Route53RecoveryReadiness::ResourceResult]', traits => ['NameInRequest'], request_name => 'resources');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Route53RecoveryReadiness::GetReadinessCheckStatusResponse

=head1 ATTRIBUTES


=head2 Messages => ArrayRef[L<Paws::Route53RecoveryReadiness::Message>]

Top level messages for readiness check status


=head2 NextToken => Str

The token that identifies which batch of results you want to see.


=head2 Readiness => Str

The readiness at rule level.

Valid values are: C<"READY">, C<"NOT_READY">, C<"UNKNOWN">, C<"NOT_AUTHORIZED">
=head2 Resources => ArrayRef[L<Paws::Route53RecoveryReadiness::ResourceResult>]

Summary of the readiness of resources.


=head2 _request_id => Str


=cut

