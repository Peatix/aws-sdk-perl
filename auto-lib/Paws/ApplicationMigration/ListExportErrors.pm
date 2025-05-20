
package Paws::ApplicationMigration::ListExportErrors;
  use Moose;
  has ExportID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'exportID', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListExportErrors');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListExportErrors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::ListExportErrorsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::ListExportErrors - Arguments for method ListExportErrors on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListExportErrors on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method ListExportErrors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListExportErrors.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $ListExportErrorsResponse = $mgn->ListExportErrors(
      ExportID   => 'MyExportID',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListExportErrorsResponse->Items;
    my $NextToken = $ListExportErrorsResponse->NextToken;

    # Returns a L<Paws::ApplicationMigration::ListExportErrorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/ListExportErrors>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ExportID => Str

List export errors request export id.



=head2 MaxResults => Int

List export errors request max results.



=head2 NextToken => Str

List export errors request next token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListExportErrors in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

