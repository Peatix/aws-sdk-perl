
package Paws::ApiGateway::Resource;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'id');
  has ParentId => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'parentId');
  has Path => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'path');
  has PathPart => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'pathPart');
  has ResourceMethods => (is => 'ro', isa => 'Paws::ApiGateway::MapOfMethod', traits => ['NameInRequest'], request_name => 'resourceMethods');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApiGateway::Resource

=head1 ATTRIBUTES


=head2 Id => Str

The resource's identifier.


=head2 ParentId => Str

The parent resource's identifier.


=head2 Path => Str

The full path for this resource.


=head2 PathPart => Str

The last path segment for this resource.


=head2 ResourceMethods => L<Paws::ApiGateway::MapOfMethod>

Gets an API resource's method of a given HTTP verb.


=head2 _request_id => Str


=cut

