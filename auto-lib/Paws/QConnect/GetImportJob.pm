
package Paws::QConnect::GetImportJob;
  use Moose;
  has ImportJobId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'importJobId', required => 1);
  has KnowledgeBaseId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'knowledgeBaseId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetImportJob');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/knowledgeBases/{knowledgeBaseId}/importJobs/{importJobId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::QConnect::GetImportJobResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::QConnect::GetImportJob - Arguments for method GetImportJob on L<Paws::QConnect>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetImportJob on the
L<Amazon Q Connect|Paws::QConnect> service. Use the attributes of this class
as arguments to method GetImportJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetImportJob.

=head1 SYNOPSIS

    my $wisdom = Paws->service('QConnect');
    my $GetImportJobResponse = $wisdom->GetImportJob(
      ImportJobId     => 'MyUuid',
      KnowledgeBaseId => 'MyUuidOrArn',

    );

    # Results:
    my $ImportJob = $GetImportJobResponse->ImportJob;

    # Returns a L<Paws::QConnect::GetImportJobResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/wisdom/GetImportJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportJobId => Str

The identifier of the import job to retrieve.



=head2 B<REQUIRED> KnowledgeBaseId => Str

The identifier of the knowledge base that the import job belongs to.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetImportJob in L<Paws::QConnect>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

