
package Paws::Neptunedata::ListMLEndpoints;
  use Moose;
  has MaxItems => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxItems');
  has NeptuneIamRoleArn => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'neptuneIamRoleArn');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListMLEndpoints');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ml/endpoints');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Neptunedata::ListMLEndpointsOutput');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Neptunedata::ListMLEndpoints - Arguments for method ListMLEndpoints on L<Paws::Neptunedata>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListMLEndpoints on the
L<Amazon NeptuneData|Paws::Neptunedata> service. Use the attributes of this class
as arguments to method ListMLEndpoints.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListMLEndpoints.

=head1 SYNOPSIS

    my $neptune-db = Paws->service('Neptunedata');
    my $ListMLEndpointsOutput = $neptune -db->ListMLEndpoints(
      MaxItems          => 1,             # OPTIONAL
      NeptuneIamRoleArn => 'MyString',    # OPTIONAL
    );

    # Results:
    my $Ids = $ListMLEndpointsOutput->Ids;

    # Returns a L<Paws::Neptunedata::ListMLEndpointsOutput> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/neptune-db/ListMLEndpoints>

=head1 ATTRIBUTES


=head2 MaxItems => Int

The maximum number of items to return (from 1 to 1024; the default is
10.



=head2 NeptuneIamRoleArn => Str

The ARN of an IAM role that provides Neptune access to SageMaker and
Amazon S3 resources. This must be listed in your DB cluster parameter
group or an error will occur.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListMLEndpoints in L<Paws::Neptunedata>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

