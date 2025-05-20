
package Paws::Resiliencehub::ListAppVersionResourceMappingsResponse;
  use Moose;
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');
  has ResourceMappings => (is => 'ro', isa => 'ArrayRef[Paws::Resiliencehub::ResourceMapping]', traits => ['NameInRequest'], request_name => 'resourceMappings', required => 1);

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Resiliencehub::ListAppVersionResourceMappingsResponse

=head1 ATTRIBUTES


=head2 NextToken => Str

Token for the next set of results, or null if there are no more
results.


=head2 B<REQUIRED> ResourceMappings => ArrayRef[L<Paws::Resiliencehub::ResourceMapping>]

Mappings used to map logical resources from the template to physical
resources. You can use the mapping type C<CFN_STACK> if the application
template uses a logical stack name. Or you can map individual resources
by using the mapping type C<RESOURCE>. We recommend using the mapping
type C<CFN_STACK> if the application is backed by a CloudFormation
stack.


=head2 _request_id => Str


=cut

