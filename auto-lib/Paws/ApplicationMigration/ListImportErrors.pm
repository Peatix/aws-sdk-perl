
package Paws::ApplicationMigration::ListImportErrors;
  use Moose;
  has ImportID => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'importID', required => 1);
  has MaxResults => (is => 'ro', isa => 'Int', traits => ['NameInRequest'], request_name => 'maxResults');
  has NextToken => (is => 'ro', isa => 'Str', traits => ['NameInRequest'], request_name => 'nextToken');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'ListImportErrors');
  class_has _api_uri  => (isa => 'Str', is => 'ro', default => '/ListImportErrors');
  class_has _api_method  => (isa => 'Str', is => 'ro', default => 'POST');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::ApplicationMigration::ListImportErrorsResponse');
1;

### main pod documentation begin ###

=head1 NAME

Paws::ApplicationMigration::ListImportErrors - Arguments for method ListImportErrors on L<Paws::ApplicationMigration>

=head1 DESCRIPTION

This class represents the parameters used for calling the method ListImportErrors on the
L<Application Migration Service|Paws::ApplicationMigration> service. Use the attributes of this class
as arguments to method ListImportErrors.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to ListImportErrors.

=head1 SYNOPSIS

    my $mgn = Paws->service('ApplicationMigration');
    my $ListImportErrorsResponse = $mgn->ListImportErrors(
      ImportID   => 'MyImportID',
      MaxResults => 1,                      # OPTIONAL
      NextToken  => 'MyPaginationToken',    # OPTIONAL
    );

    # Results:
    my $Items     = $ListImportErrorsResponse->Items;
    my $NextToken = $ListImportErrorsResponse->NextToken;

    # Returns a L<Paws::ApplicationMigration::ListImportErrorsResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/mgn/ListImportErrors>

=head1 ATTRIBUTES


=head2 B<REQUIRED> ImportID => Str

List import errors request import id.



=head2 MaxResults => Int

List import errors request max results.



=head2 NextToken => Str

List import errors request next token.




=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method ListImportErrors in L<Paws::ApplicationMigration>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

