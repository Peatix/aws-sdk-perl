
package Paws::ConnectCases::GetDomainResponse;
  use Moose;
  has CreatedTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'createdTime', required => 1);
  has DomainArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainArn', required => 1);
  has DomainId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainId', required => 1);
  has DomainStatus => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainStatus', required => 1);
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Tags => (is => 'ro', isa => 'Paws::ConnectCases::Tags', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ConnectCases::GetDomainResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> CreatedTime => Str

The timestamp when the Cases domain was created.


=head2 B<REQUIRED> DomainArn => Str

The Amazon Resource Name (ARN) for the Cases domain.


=head2 B<REQUIRED> DomainId => Str

The unique identifier of the Cases domain.


=head2 B<REQUIRED> DomainStatus => Str

The status of the Cases domain.

Valid values are: C<"Active">, C<"CreationInProgress">, C<"CreationFailed">
=head2 B<REQUIRED> Name => Str

The name of the Cases domain.


=head2 Tags => L<Paws::ConnectCases::Tags>

A map of of key-value pairs that represent tags on a resource. Tags are
used to organize, track, or control access for this resource.


=head2 _request_id => Str


=cut

