
package Paws::SecurityLake::DeleteDataLake;
  use Moose;
  has Regions => (is => 'ro', isa => 'ArrayRef[Str|Undef]', traits => ['NameInRequest'], request_name => 'regions', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteDataLake');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/datalake/delete');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityLake::DeleteDataLakeResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::DeleteDataLake - Arguments for method DeleteDataLake on L<Paws::SecurityLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteDataLake on the
L<Amazon Security Lake|Paws::SecurityLake> service. Use the attributes of this class
as arguments to method DeleteDataLake.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteDataLake.

=head1 SYNOPSIS

    my $securitylake = Paws->service('SecurityLake');
    my $DeleteDataLakeResponse = $securitylake->DeleteDataLake(
      Regions => [ 'MyRegion', ... ],

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securitylake/DeleteDataLake>

=head1 ATTRIBUTES


=head2 B<REQUIRED> Regions => ArrayRef[Str|Undef]

The list of Regions where Security Lake is enabled.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteDataLake in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

