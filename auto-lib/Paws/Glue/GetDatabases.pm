
package Paws::Glue::GetDatabases;
  use Moose;
  has AttributesToGet => (is => 'ro', isa => 'ArrayRef[Str|Undef]');
  has CatalogId => (is => 'ro', isa => 'Str');
  has MaxResults => (is => 'ro', isa => 'Int');
  has NextToken => (is => 'ro', isa => 'Str');
  has ResourceShareType => (is => 'ro', isa => 'Str');

  use MooseX::ClassAttribute;

  class_has _api_call => (isa => 'Str', is => 'ro', default => 'GetDatabases');
  class_has _returns => (isa => 'Str', is => 'ro', default => 'Paws::Glue::GetDatabasesResponse');
  class_has _result_key => (isa => 'Str', is => 'ro');
1;

### main pod documentation begin ###

=head1 NAME

Paws::Glue::GetDatabases - Arguments for method GetDatabases on L<Paws::Glue>

=head1 DESCRIPTION

This class represents the parameters used for calling the method GetDatabases on the
L<AWS Glue|Paws::Glue> service. Use the attributes of this class
as arguments to method GetDatabases.

You shouldn't make instances of this class. Each attribute should be used as a named argument in the call to GetDatabases.

=head1 SYNOPSIS

    my $glue = Paws->service('Glue');
    my $GetDatabasesResponse = $glue->GetDatabases(
      AttributesToGet => [
        'NAME', ...    # values: NAME
      ],    # OPTIONAL
      CatalogId         => 'MyCatalogIdString',    # OPTIONAL
      MaxResults        => 1,                      # OPTIONAL
      NextToken         => 'MyToken',              # OPTIONAL
      ResourceShareType => 'FOREIGN',              # OPTIONAL
    );

    # Results:
    my $DatabaseList = $GetDatabasesResponse->DatabaseList;
    my $NextToken    = $GetDatabasesResponse->NextToken;

    # Returns a L<Paws::Glue::GetDatabasesResponse> object.

Values for attributes that are native types (Int, String, Float, etc) can passed as-is (scalar values). Values for complex Types (objects) can be passed as a HashRef. The keys and values of the hashref will be used to instance the underlying object.
For the AWS API documentation, see L<https://docs.aws.amazon.com/goto/WebAPI/glue/GetDatabases>

=head1 ATTRIBUTES


=head2 AttributesToGet => ArrayRef[Str|Undef]

Specifies the database fields returned by the C<GetDatabases> call.
This parameter doesnE<rsquo>t accept an empty list. The request must
include the C<NAME>.



=head2 CatalogId => Str

The ID of the Data Catalog from which to retrieve C<Databases>. If none
is provided, the Amazon Web Services account ID is used by default.



=head2 MaxResults => Int

The maximum number of databases to return in one response.



=head2 NextToken => Str

A continuation token, if this is a continuation call.



=head2 ResourceShareType => Str

Allows you to specify that you want to list the databases shared with
your account. The allowable values are C<FEDERATED>, C<FOREIGN> or
C<ALL>.

=over

=item *

If set to C<FEDERATED>, will list the federated databases (referencing
an external entity) shared with your account.

=item *

If set to C<FOREIGN>, will list the databases shared with your account.

=item *

If set to C<ALL>, will list the databases shared with your account, as
well as the databases in yor local account.

=back


Valid values are: C<"FOREIGN">, C<"ALL">, C<"FEDERATED">


=head1 SEE ALSO

This class forms part of L<Paws>, documenting arguments for method GetDatabases in L<Paws::Glue>

=head1 BUGS and CONTRIBUTIONS

The source code is located here: L<https://github.com/pplu/aws-sdk-perl>

Please report bugs to: L<https://github.com/pplu/aws-sdk-perl/issues>

=cut

