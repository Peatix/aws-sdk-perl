
package Paws::Wisdom::DeleteImportJob;
  use Moose;
  has ImportJobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'importJobId', required => 1);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteImportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Wisdom::DeleteImportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Wisdom::DeleteImportJob - Arguments for method DeleteImportJob on L<Paws::Wisdom>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteImportJob on the
L<Amazon Connect Wisdom Service|Paws::Wisdom> service. Use the attributes of this class
as arguments to method DeleteImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteImportJob.

=head1 SYNOPSIS

    my $wisdom = Paws->service('Wisdom');
    my $DeleteImportJobResponse = $wisdom->DeleteImportJob(
      ImportJobId     => 'MyUuid',
      KnowledgeBaseId => 'MyUuidOrArn',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/DeleteImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportJobId => Str

The identifier of the import job to be deleted.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base. This should not be a
QUICK_RESPONSES type knowledge base if you're storing Wisdom Content
resource to it.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteImportJob in L<Paws::Wisdom>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

