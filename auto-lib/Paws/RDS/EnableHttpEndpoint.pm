
package Paws::RDS::EnableHttpEndpoint;
  use Moose;
  has ResourceArn => (is => 'ro', isa => 'Str', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'EnableHttpEndpoint');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::RDS::EnableHttpEndpointResponse');
  class_has _result_key => (isa => 'Str', is => 'ro', default => 'EnableHttpEndpointResult');
1;

### main pod documentation begin ###

=head1 NAME

Paws::RDS::EnableHttpEndpoint - Arguments for method EnableHttpEndpoint on L<Paws::RDS>

=head1 DESCRIPTION

This class represents the parameters used for calling the method EnableHttpEndpoint on the
L<Amazon Relational Database Service|Paws::RDS> service. Use the attributes of this class
as arguments to method EnableHttpEndpoint.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to EnableHttpEndpoint.

=head1 SYNOPSIS

    my $rds = Paws->service('RDS');
    my $EnableHttpEndpointResponse = $rds->EnableHttpEndpoint(
      ResourceArn => 'MyString',

    );

    # Results:
    my $HttpEndpointEnabled = $EnableHttpEndpointResponse->HttpEndpointEnabled;
    my $ResourceArn         = $EnableHttpEndpointResponse->ResourceArn;

    # Returns a L<Paws::RDS::EnableHttpEndpointResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/rds/EnableHttpEndpoint>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ResourceArn => Str

The Amazon Resource Name (ARN) of the DB cluster.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method EnableHttpEndpoint in L<Paws::RDS>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

