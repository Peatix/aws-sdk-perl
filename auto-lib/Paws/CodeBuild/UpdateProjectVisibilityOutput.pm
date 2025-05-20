
package Paws::CodeBuild::UpdateProjectVisibilityOutput;
  use Moose;
  has ProjectArn => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectArn' );
  has ProjectVisibility => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'projectVisibility' );
  has PublicProjectAlias => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'publicProjectAlias' );

  has _request_id => (is => 'ro', isa => 'Str');

### main pod documentation begin ###

=head1 NAME

Paws::CodeBuild::UpdateProjectVisibilityOutput

=head1 ATTRIBUTES


=head2 ProjectArn => Str

The Amazon Resource Name (ARN) of the build project.


=head2 ProjectVisibility => Str



Valid values are: C<"PUBLIC_READ">, C<"PRIVATE">
=head2 PublicProjectAlias => Str

Contains the project identifier used with the public build APIs.


=head2 _request_id => Str


=cut

1;