
package Paws::EMRContainers::DescribeJobTemplate;
  use Moose;
  has Id => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'templateId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DescribeJobTemplate');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/jobtemplates/{templateId}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'GET');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::EMRContainers::DescribeJobTemplateResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::EMRContainers::DescribeJobTemplate - Arguments for method DescribeJobTemplate on L<Paws::EMRContainers>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DescribeJobTemplate on the
L<Amazon EMR Containers|Paws::EMRContainers> service. Use the attributes of this class
as arguments to method DescribeJobTemplate.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DescribeJobTemplate.

=head1 SYNOPSIS

    my $emr-containers = Paws->service('EMRContainers');
    my $DescribeJobTemplateResponse = $emr -containers->DescribeJobTemplate(
      Id => 'MyResourceIdString',

    );

    # Results:
    my $JobTemplate = $DescribeJobTemplateResponse->JobTemplate;

    # Returns a L<Paws::EMRContainers::DescribeJobTemplateResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/emr-containers/DescribeJobTemplate>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Id => Str

The ID of the job template that will be described.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DescribeJobTemplate in L<Paws::EMRContainers>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

