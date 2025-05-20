
package Paws::M2::GetApplicationVersionResponse;
  use Moose;
  has ApplicationVersion => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'applicationVersion', required => 1);
  has CreationTime => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'creationTime', required => 1);
  has DefinitionContent => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'definitionContent', required => 1);
  has Description => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'description');
  has Name => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'name', required => 1);
  has Status => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'status', required => 1);
  has StatusReason => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'statusReason');

  has _request_id => (is => 'ro', isa => 'Str');
1;

### main pod documentation begin ###

=head1 NAME

Paws::M2::GetApplicationVersionResponse

=head1 ATTRIBUTES


=head2 B<REQUIRED> ApplicationVersion => Int

The specific version of the application.


=head2 B<REQUIRED> CreationTime => Str

The timestamp when the application version was created.


=head2 B<REQUIRED> DefinitionContent => Str

The content of the application definition. This is a JSON object that
contains the resource configuration and definitions that identify an
application.


=head2 Description => Str

The application description.


=head2 B<REQUIRED> Name => Str

The name of the application version.


=head2 B<REQUIRED> Status => Str

The status of the application version.

Valid values are: C<"Creating">, C<"Available">, C<"Failed">
=head2 StatusReason => Str

The reason for the reported status.


=head2 _request_id => Str


=cut

