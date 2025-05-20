
package Paws::Athena::UpdateNotebook;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has NotebookId => (is => 'ro', isa => 'Str', required => 1);
  has Payload => (is => 'ro', isa => 'Str', required => 1);
  has SessionId => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'UpdateNotebook');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::UpdateNotebookOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::UpdateNotebook - Arguments for method UpdateNotebook on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method UpdateNotebook on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method UpdateNotebook.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to UpdateNotebook.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $UpdateNotebookOutput = $athena->UpdateNotebook(
      NotebookId         => 'MyNotebookId',
      Payload            => 'MyPayload',
      Type               => 'IPYNB',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
      SessionId          => 'MySessionId',             # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/UpdateNotebook>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique case-sensitive string used to ensure the request to create the
notebook is idempotent (executes only once).

This token is listed as not required because Amazon Web Services SDKs
(for example the Amazon Web Services SDK for Java) auto-generate the
token for you. If you are not using the Amazon Web Services SDK or the
Amazon Web Services CLI, you must provide this token or the action will
fail.



=head2 B<REQUIRED> NotebookId => Str

The ID of the notebook to update.



=head2 B<REQUIRED> Payload => Str

The updated content for the notebook.



=head2 SessionId => Str

The active notebook session ID. Required if the notebook has an active
session.



=head2 B<REQUIRED> Type => Str

The notebook content type. Currently, the only valid type is C<IPYNB>.

Valid values are: C<"IPYNB">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method UpdateNotebook in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

