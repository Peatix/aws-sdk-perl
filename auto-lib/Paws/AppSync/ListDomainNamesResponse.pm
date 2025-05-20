
package Paws::AppSync::ListDomainNamesResponse;
  use Moose;
  has DomainNameConfigs => (is => 'ro', isa => 'ArrayRef[Paws::AppSync::DomainNameConfig]', traits => ['NameInRequest'], request_name => 'domainNameConfigs');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::AppSync::ListDomainNamesResponse

=head1 ATTRIBUTES


=head2 DomainNameConfigs => ArrayRef[L<Paws::AppSync::DomainNameConfig>]

Lists configurations for multiple domain names.


=head2 NextToken => Str

An identifier that was returned from the previous call to this
operation, which you can use to return the next set of items in the
list.


=head2 _request_id => Str


=cut

