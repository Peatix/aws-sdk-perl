
package Paws::SageMaker::DeleteCompilationJob;
  use Moose;
  has CompilationJobName => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCompilationJob');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::API::Response');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SageMaker::DeleteCompilationJob - Arguments for method DeleteCompilationJob on L<Paws::SageMaker>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCompilationJob on the
L<Amazon SageMaker Service|Paws::SageMaker> service. Use the attributes of this class
as arguments to method DeleteCompilationJob.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCompilationJob.

=head1 SYNOPSIS

    my $api.sagemaker = Paws->service('SageMaker');
    $api . sagemaker->DeleteCompilationJob(
      CompilationJobName => 'MyEntityName',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.sagemaker/DeleteCompilationJob>

=head1 ATTRIBUTES


=head2 B<REQUIRED> CompilationJobName => Str

The name of the compilation job to delete.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCompilationJob in L<Paws::SageMaker>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

