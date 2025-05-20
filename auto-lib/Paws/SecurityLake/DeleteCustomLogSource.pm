
package Paws::SecurityLake::DeleteCustomLogSource;
  use Moose;
  has SourceName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'sourceName', required => 1);
  has SourceVersion => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'sourceVersion');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteCustomLogSource');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/v1/datalake/logsources/custom/{sourceName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::SecurityLake::DeleteCustomLogSourceResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::SecurityLake::DeleteCustomLogSource - Arguments for method DeleteCustomLogSource on L<Paws::SecurityLake>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteCustomLogSource on the
L<Amazon Security Lake|Paws::SecurityLake> service. Use the attributes of this class
as arguments to method DeleteCustomLogSource.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteCustomLogSource.

=head1 SYNOPSIS

    my $securitylake = Paws->service('SecurityLake');
    my $DeleteCustomLogSourceResponse = $securitylake->DeleteCustomLogSource(
      SourceName    => 'MyCustomLogSourceName',
      SourceVersion => 'MyCustomLogSourceVersion',    # OPTIONAL
    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/securitylake/DeleteCustomLogSource>

=head1 ATTRIBUTES


=head2 B<REQUIRED> SourceName => Str

The source name of custom log source that you want to delete.



=head2 SourceVersion => Str

The source version for the third-party custom source. You can limit the
custom source removal to the specified source version.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteCustomLogSource in L<Paws::SecurityLake>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

