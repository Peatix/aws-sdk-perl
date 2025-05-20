
package Paws::ApiGateway::DomainNameAccessAssociation;
  use Moose;
  has AccessAssociationSource => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessAssociationSource');
  has AccessAssociationSourceType => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'accessAssociationSourceType');
  has DomainNameAccessAssociationArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainNameAccessAssociationArn');
  has DomainNameArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'domainNameArn');
  has Tags => (is => 'ro', isa => 'Paws::ApiGateway::MapOfStringToString', traits => ['NameInRequest'], request_name => 'tags');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::DomainNameAccessAssociation

=head1 ATTRIBUTES


=head2 AccessAssociationSource => Str

The ARN of the domain name access association source. For a VPCE, the
ARN must be a VPC endpoint.


=head2 AccessAssociationSourceType => Str

The type of the domain name access association source.

Valid values are: C<"VPCE">
=head2 DomainNameAccessAssociationArn => Str

The ARN of the domain name access association resource.


=head2 DomainNameArn => Str

The ARN of the domain name.


=head2 Tags => L<Paws::ApiGateway::MapOfStringToString>

The collection of tags. Each tag element is associated with a given
resource.


=head2 _request_id => Str


=cut

