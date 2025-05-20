
package Paws::EMRContainers::ListJobTemplates;
  use Moose;
  has CreatedAfter => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdAfter');
  has CreatedBefore => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'createdBefore');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['ParamInQuery'], query_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListJobTemplates');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobtemplates');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMRContainers::ListJobTemplatesResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::ListJobTemplates - Arguments for method ListJobTemplates on L<Paws::EMRContainers>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListJobTemplates on the
L<Amazon EMR Containers|Paws::EMRContainers> service. Use the attributes of this class
as arguments to method ListJobTemplates.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListJobTemplates.

=head1 SYNOPSIS

    my $emr-containers = Paws->service('EMRContainers');
    my $ListJobTemplatesResponse = $emr -containers->ListJobTemplates(
      CreatedAfter  => '1970-01-01T01:00:00',    # OPTIONAL
      CreatedBefore => '1970-01-01T01:00:00',    # OPTIONAL
      MaxResults    => 1,                        # OPTIONAL
      NextToken     => 'MyNextToken',            # OPTIONAL
    );

    # Results:
    my $NextToken = $ListJobTemplatesResponse->NextToken;
    my $Templates = $ListJobTemplatesResponse->Templates;

    # Returns a L<Paws::EMRContainers::ListJobTemplatesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-containers/ListJobTemplates>

=head1 ATTRIBUTES


=head2 CreatedAfter => Str

The date and time after which the job templates were created.



=head2 CreatedBefore => Str

The date and time before which the job templates were created.



=head2 MaxResults => Int

The maximum number of job templates that can be listed.



=head2 NextToken => Str

The token for the next set of job templates to return.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListJobTemplates in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

