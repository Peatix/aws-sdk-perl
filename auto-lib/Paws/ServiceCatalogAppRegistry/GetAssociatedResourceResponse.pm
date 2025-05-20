
package Paws::ServiceCatalogAppRegistry::GetAssociatedResourceResponse;
  use Moose;
  has ApplicationTagResult => (is => 'ro', isa => 'Paws::ServiceCatalogAppRegistry::ApplicationTagResult', traits => ['NameInRequest'], request_name => 'applicationTagResult');
  has Options => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'options');
  has Resource => (is => 'ro', isa => 'Paws::ServiceCatalogAppRegistry::Resource', traits => ['NameInRequest'], request_name => 'resource');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ServiceCatalogAppRegistry::GetAssociatedResourceResponse

=head1 ATTRIBUTES


=head2 ApplicationTagResult => L<Paws::ServiceCatalogAppRegistry::ApplicationTagResult>

The result of the application that's tag applied to a resource.


=head2 Options => ArrayRef[Str|Undef]

Determines whether an application tag is applied or skipped.


=head2 Resource => L<Paws::ServiceCatalogAppRegistry::Resource>

The resource associated with the application.


=head2 _request_id => Str


=cut

