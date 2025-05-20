
package Paws::OpenSearchServerless::BatchGetVpcEndpoint;
  use Moose;
  has Ids => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'ids' , required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'BatchGetVpcEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::OpenSearchServerless::BatchGetVpcEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::OpenSearchServerless::BatchGetVpcEndpoint - Arguments for method BatchGetVpcEndpoint on L<Paws::OpenSearchServerless>

=head1 DESCRIPTION

This class represents the parameters used for calling the method BatchGetVpcEndpoint on the
L<OpenSearch Service Serverless|Paws::OpenSearchServerless> service. Use the attributes of this class
as arguments to method BatchGetVpcEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to BatchGetVpcEndpoint.

=head1 SYNOPSIS

    my $aoss = Paws->service('OpenSearchServerless');
    my $BatchGetVpcEndpointResponse = $aoss->BatchGetVpcEndpoint(
      Ids => [
        'MyVpcEndpointId', ...    # min: 1, max: 255
      ],

    );

    # Results:
    my $VpcEndpointDetails = $BatchGetVpcEndpointResponse->VpcEndpointDetails;
    my $VpcEndpointErrorDetails =
      $BatchGetVpcEndpointResponse->VpcEndpointErrorDetails;

  # Returns a L<Paws::OpenSearchServerless::BatchGetVpcEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/aoss/BatchGetVpcEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Ids => ArrayRef[Str|Undef]

A list of VPC endpoint identifiers.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method BatchGetVpcEndpoint in L<Paws::OpenSearchServerless>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

