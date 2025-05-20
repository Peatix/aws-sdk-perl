
package Paws::Athena::DeleteNotebook;
  use Moose;
  has NotebookId => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteNotebook');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Athena::DeleteNotebookOutput');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Athena::DeleteNotebook - Arguments for method DeleteNotebook on L<Paws::Athena>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteNotebook on the
L<Amazon Athena|Paws::Athena> service. Use the attributes of this class
as arguments to method DeleteNotebook.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteNotebook.

=head1 SYNOPSIS

    my $athena = Paws->service('Athena');
    my $DeleteNotebookOutput = $athena->DeleteNotebook(
      NotebookId => 'MyNotebookId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/athena/DeleteNotebook>

=head1 ATTRIBUTES


=head2 B<REQUIRED> NotebookId => Str

The ID of the notebook to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteNotebook in L<Paws::Athena>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

