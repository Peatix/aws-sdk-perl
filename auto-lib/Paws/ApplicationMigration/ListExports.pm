
package Paws::ApplicationMigration::ListExports;
  use Moose;
  has Filters => (is => 'ro', isa => 'Paws::ApplicationMigration::ListExportsRequestFilters', traits => ['NameInRequest'], request_name => 'filters');
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListExports');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListExports');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::ListExportsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::ListExports - Arguments for method ListExports on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListExports on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method ListExports.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListExports.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $ListExportsResponse = $mgn->ListExports(
      Filters => {
        ExportIDs => [
          'MyExportID', ...    # min: 24, max: 24
        ],    # max: 10; OPTIONAL
      },    # OPTIONAL
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListExportsResponse->Items;
    my $NextToken = $ListExportsResponse->NextToken;

    # Returns a L<Paws::ApplicationMigration::ListExportsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/ListExports>

=head1 ATTRIBUTES


=head2 Filters => L<Paws::ApplicationMigration::ListExportsRequestFilters>





=head2 MaxResults => Int

List export request max results.



=head2 NextToken => Str

List export request next token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListExports in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

