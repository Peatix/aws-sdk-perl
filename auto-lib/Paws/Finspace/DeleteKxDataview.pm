
package Paws::Finspace::DeleteKxDataview;
  use Moose;
  has ClientToken => (is => 'ro', isa => 'Str', traits => ['ParamInQuery'], query_name => 'clientToken', required => 1);
  has DatabaseName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'databaseName', required => 1);
  has DataviewName => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'dataviewName', required => 1);
  has EnvironmentId => (is => 'ro', isa => 'Str', traits => ['ParamInURI'], uri_name => 'environmentId', required => 1);

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'DeleteKxDataview');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/kx/environments/{environmentId}/databases/{databaseName}/dataviews/{dataviewName}');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'DELETE');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Finspace::DeleteKxDataviewResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Finspace::DeleteKxDataview - Arguments for method DeleteKxDataview on L<Paws::Finspace>

=head1 DESCRIPTION

This class represents the parameters used for calling the method DeleteKxDataview on the
L<FinSpace User Environment Management service|Paws::Finspace> service. Use the attributes of this class
as arguments to method DeleteKxDataview.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to DeleteKxDataview.

=head1 SYNOPSIS

    my $finspace = Paws->service('Finspace');
    my $DeleteKxDataviewResponse = $finspace->DeleteKxDataview(
      ClientToken   => 'MyClientTokenString',
      DatabaseName  => 'MyDatabaseName',
      DataviewName  => 'MyKxDataviewName',
      EnvironmentId => 'MyEnvironmentId',

    );

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/finspace/DeleteKxDataview>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ClientToken => Str

A token that ensures idempotency. This token expires in 10 minutes.



=head2 B<REQUIRED> DatabaseName => Str

The name of the database whose dataview you want to delete.



=head2 B<REQUIRED> DataviewName => Str

The name of the dataview that you want to delete.



=head2 B<REQUIRED> EnvironmentId => Str

A unique identifier for the kdb environment, from where you want to
delete the dataview.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method DeleteKxDataview in L<Paws::Finspace>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

