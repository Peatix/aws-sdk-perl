
package Paws::AppSync::CreateDomainNameResponse;
  use Moose;
  has DomainNameConfig => (is => 'ro', isa => 'Paws::AppSync::DomainNameConfig', traits => ['NameInRequest'], request_name => 'domainNameConfig');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::CreateDomainNameResponse

=head1 ATTRIBUTES


=head2 DomainNameConfig => L<Paws::AppSync::DomainNameConfig>

The configuration for the C<DomainName>.


=head2 _request_id => Str


=cut

