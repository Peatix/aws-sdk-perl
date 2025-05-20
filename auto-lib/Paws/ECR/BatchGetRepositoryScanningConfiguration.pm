
package Paws::ECR::BatchGetRepositoryScanningConfiguration;
  use Moose;
  has RepositoryNames => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'repositoryNames' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetRepositoryScanningConfiguration');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ECR::BatchGetRepositoryScanningConfigurationResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ECR::BatchGetRepositoryScanningConfiguration - Arguments for method BatchGetRepositoryScanningConfiguration on L<Paws::ECR>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetRepositoryScanningConfiguration on the
L<Amazon Elastic Container Registry|Paws::ECR> service. Use the attributes of this class
as arguments to method BatchGetRepositoryScanningConfiguration.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetRepositoryScanningConfiguration.

=head1 SYNOPSIS

    my $api.ecr = Paws->service('ECR');
    my $BatchGetRepositoryScanningConfigurationResponse =
      $api . ecr->BatchGetRepositoryScanningConfiguration(
      RepositoryNames => [
        'MyRepositoryName', ...    # min: 2, max: 256
      ],

      );

    # Results:
    my $Failures = $BatchGetRepositoryScanningConfigurationResponse->Failures;
    my $ScanningConfigurations =
      $BatchGetRepositoryScanningConfigurationResponse->ScanningConfigurations;

# Returns a L<Paws::ECR::BatchGetRepositoryScanningConfigurationResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/api.ecr/BatchGetRepositoryScanningConfiguration>

=head1 ATTRIBUTES


=head2 B<REQUIRED> RepositoryNames => ArrayRef[Str|Undef]

One or more repository names to get the scanning configuration for.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetRepositoryScanningConfiguration in L<Paws::ECR>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

