
package Paws::Athena::CreateNotebook;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has WorkGroup => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'CreateNotebook');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::CreateNotebookOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::CreateNotebook - Arguments for method CreateNotebook on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method CreateNotebook on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method CreateNotebook.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to CreateNotebook.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $CreateNotebookOutput = $athena->CreateNotebook(
      Name               => 'MyNotebookName',
      WorkGroup          => 'MyWorkGroupName',
      ClientRequestToken => 'MyClientRequestToken',    # OPTIONAL
    );

    # Results:
    my $NotebookId = $CreateNotebookOutput->NotebookId;

    # Returns a L<Paws::Athena::CreateNotebookOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/CreateNotebook>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique case-sensitive string used to ensure the request to create the
notebook is idempotent (executes only once).

This token is listed as not required because Amazon Web Services SDKs
(for example the Amazon Web Services SDK for Java) auto-generate the
token for you. If you are not using the Amazon Web Services SDK or the
Amazon Web Services CLI, you must provide this token or the action will
fail.



=head2 B<REQUIRED> Name => Str

The name of the C<ipynb> file to be created in the Spark workgroup,
without the C<.ipynb> extension.



=head2 B<REQUIRED> WorkGroup => Str

The name of the Spark enabled workgroup in which the notebook will be
created.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method CreateNotebook in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

