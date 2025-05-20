
package Paws::Athena::ImportNotebook;
  use Moose;
  has ClientRequestToken => (is => 'ro', isa => 'Str');
  has Name => (is => 'ro', isa => 'Str', required => 1);
  has NotebookS3LocationUri => (is => 'ro', isa => 'Str');
  has Payload => (is => 'ro', isa => 'Str');
  has Type => (is => 'ro', isa => 'Str', required => 1);
  has WorkGroup => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ImportNotebook');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::ImportNotebookOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::ImportNotebook - Arguments for method ImportNotebook on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ImportNotebook on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method ImportNotebook.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ImportNotebook.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $ImportNotebookOutput = $athena->ImportNotebook(
      Name                  => 'MyNotebookName',
      Type                  => 'IPYNB',
      WorkGroup             => 'MyWorkGroupName',
      ClientRequestToken    => 'MyClientRequestToken',    # OPTIONAL
      NotebookS3LocationUri => 'MyS3Uri',                 # OPTIONAL
      Payload               => 'MyPayload',               # OPTIONAL
    );

    # Results:
    my $NotebookId = $ImportNotebookOutput->NotebookId;

    # Returns a L<Paws::Athena::ImportNotebookOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/ImportNotebook>

=head1 ATTRIBUTES


=head2 ClientRequestToken => Str

A unique case-sensitive string used to ensure the request to import the
notebook is idempotent (executes only once).

This token is listed as not required because Amazon Web Services SDKs
(for example the Amazon Web Services SDK for Java) auto-generate the
token for you. If you are not using the Amazon Web Services SDK or the
Amazon Web Services CLI, you must provide this token or the action will
fail.



=head2 B<REQUIRED> Name => Str

The name of the notebook to import.



=head2 NotebookS3LocationUri => Str

A URI that specifies the Amazon S3 location of a notebook file in
C<ipynb> format.



=head2 Payload => Str

The notebook content to be imported. The payload must be in C<ipynb>
format.



=head2 B<REQUIRED> Type => Str

The notebook content type. Currently, the only valid type is C<IPYNB>.

Valid values are: C<"IPYNB">

=head2 B<REQUIRED> WorkGroup => Str

The name of the Spark enabled workgroup to import the notebook to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ImportNotebook in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

