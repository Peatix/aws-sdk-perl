
package Paws::ConnectCases::CreateDomainResponse;
  use Moose;
  has DomainArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainArn', required => 1);
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has DomainStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainStatus', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::CreateDomainResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> DomainArn => Str

The Amazon Resource Name (ARN) for the Cases domain.


=head2 B<REQUIRED> DomainId => Str

The unique identifier of the Cases domain.


=head2 B<REQUIRED> DomainStatus => Str

The status of the domain.

Valid values are: C<"Active">, C<"CreationInProgress">, C<"CreationFailed">
=head2 _request_id => Str


=cut

